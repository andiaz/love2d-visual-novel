#!/usr/bin/env python3
"""
Sprint Zero — Story Validation Script

Validates all scene files across all character routes for structural correctness:
  1. Every goto target resolves to a scene file in the same character folder
  2. Every speaker/expression combo has a matching portrait PNG
  3. Every condition references a flag that is actually set somewhere in the route
  4. Day chain completeness (day1 → day2 → ... → day15 → $ending, no dead ends)
  5. All 4 endings exist per character folder
  6. Scene files parse without obvious Lua syntax issues

Usage:
    python validate.py            # validate all routes
    python validate.py dev qa     # validate specific routes only
"""

import os
import re
import sys
from pathlib import Path

ROOT = Path(__file__).parent
SCENES_DIR = ROOT / "scenes"
PORTRAITS_DIR = ROOT / "assets" / "characters"

CHARACTERS = ["ux", "dev", "pm", "po", "qa", "arch"]
EXPECTED_DAYS = [f"day{i}" for i in range(1, 16)]
EXPECTED_ENDINGS = ["ending_ship", "ending_promotion", "ending_pivot", "ending_burnout"]
EXPECTED_SCENES = EXPECTED_DAYS + EXPECTED_ENDINGS
SPECIAL_GOTOS = {"$ending", "$menu"}

# Build set of available portraits from filesystem
AVAILABLE_PORTRAITS = set()
if PORTRAITS_DIR.exists():
    for f in PORTRAITS_DIR.iterdir():
        if f.suffix == ".png":
            AVAILABLE_PORTRAITS.add(f.stem)


class ValidationResult:
    def __init__(self):
        self.errors = []
        self.warnings = []

    def error(self, route, scene, msg):
        self.errors.append(f"  ERROR  [{route}/{scene}] {msg}")

    def warn(self, route, scene, msg):
        self.warnings.append(f"  WARN   [{route}/{scene}] {msg}")

    @property
    def ok(self):
        return len(self.errors) == 0


def extract_strings(pattern, text):
    """Extract all regex matches as a flat list of strings."""
    return re.findall(pattern, text)


def parse_scene_file(filepath):
    """Read a scene file and extract structural elements."""
    text = filepath.read_text(encoding="utf-8")

    # gotos
    gotos = extract_strings(r'goto\s*=\s*"([^"]+)"', text)

    # speaker/expression pairs
    speaker_expr = re.findall(
        r'speaker\s*=\s*"(\w+)"\s*,\s*expression\s*=\s*"(\w+)"', text
    )

    # conditions (string form)
    conditions_str = extract_strings(r'condition\s*=\s*"(\w+)"', text)

    # conditions (table form: condition = {flag = true/false})
    conditions_table = extract_strings(
        r'condition\s*=\s*\{[^}]*?(\w+)\s*=', text
    )

    all_conditions = set(conditions_str) | set(conditions_table)

    # flags set by choices: set = {flag_name = true/false}
    # Match inside set = { ... } blocks
    set_blocks = re.findall(r'set\s*=\s*\{([^}]+)\}', text)
    flags_set = set()
    for block in set_blocks:
        flags_set.update(re.findall(r'(\w+)\s*=', block))

    # choices count
    choices = re.findall(r'choices\s*=\s*\{', text)

    # check for title (day scenes should have one)
    has_title = bool(re.search(r'title\s*=\s*"', text))

    # basic syntax: unmatched braces (rough check)
    open_braces = text.count("{")
    close_braces = text.count("}")

    return {
        "gotos": gotos,
        "speaker_expr": speaker_expr,
        "conditions": all_conditions,
        "flags_set": flags_set,
        "choice_count": len(choices),
        "has_title": has_title,
        "brace_balance": open_braces - close_braces,
        "line_count": text.count("\n"),
    }


def validate_route(route, result):
    """Validate a single character route."""
    route_dir = SCENES_DIR / route
    if not route_dir.exists():
        result.error(route, "*", f"Route directory does not exist: {route_dir}")
        return

    # Check all expected scenes exist
    existing_scenes = set()
    for f in route_dir.iterdir():
        if f.suffix == ".lua":
            existing_scenes.add(f.stem)

    for scene_name in EXPECTED_SCENES:
        if scene_name not in existing_scenes:
            result.error(route, scene_name, f"Missing scene file: {scene_name}.lua")

    # Collect all flags set across the entire route (for condition validation)
    all_flags_in_route = set()
    all_scene_data = {}

    for scene_file in sorted(route_dir.glob("*.lua")):
        scene_name = scene_file.stem
        try:
            data = parse_scene_file(scene_file)
        except Exception as e:
            result.error(route, scene_name, f"Failed to parse: {e}")
            continue

        all_scene_data[scene_name] = data
        all_flags_in_route.update(data["flags_set"])

    # Now validate each scene
    for scene_name, data in all_scene_data.items():

        # 1. Brace balance
        if data["brace_balance"] != 0:
            result.error(
                route, scene_name,
                f"Unbalanced braces: {data['brace_balance']:+d}"
            )

        # 2. Goto targets resolve
        for goto in data["gotos"]:
            if goto in SPECIAL_GOTOS:
                continue
            if goto not in existing_scenes:
                result.error(
                    route, scene_name,
                    f"goto \"{goto}\" has no matching scene file"
                )

        # 3. Speaker/expression → portrait exists
        for speaker, expression in data["speaker_expr"]:
            portrait_name = f"{speaker}_{expression}"
            if portrait_name not in AVAILABLE_PORTRAITS:
                result.error(
                    route, scene_name,
                    f"No portrait for speaker=\"{speaker}\" expression=\"{expression}\" "
                    f"(expected assets/characters/{portrait_name}.png)"
                )

        # 4. Conditions reference flags that are set somewhere in the route
        for cond in data["conditions"]:
            if cond not in all_flags_in_route:
                # Check if it's a flag set in other routes (cross-route isn't an error,
                # but flags not set ANYWHERE are a warning)
                result.warn(
                    route, scene_name,
                    f"condition \"{cond}\" is never set in this route's choices"
                )

        # 5. Day scenes should have choices (except day15 which is just the ending router)
        if scene_name in EXPECTED_DAYS and scene_name != "day15":
            if data["choice_count"] == 0:
                result.warn(
                    route, scene_name,
                    "Day scene has no choices (expected at least one)"
                )

    # 6. Day chain: each day should goto the next day (or contain a goto to it)
    for i in range(1, 15):
        current = f"day{i}"
        next_day = f"day{i + 1}"
        if current in all_scene_data:
            gotos = all_scene_data[current]["gotos"]
            if next_day not in gotos:
                result.warn(
                    route, current,
                    f"Does not chain to {next_day} (gotos: {gotos})"
                )

    # 7. Day 15 should goto $ending
    if "day15" in all_scene_data:
        gotos = all_scene_data["day15"]["gotos"]
        if "$ending" not in gotos:
            result.warn(
                route, "day15",
                f"Does not goto $ending (gotos: {gotos})"
            )

    # 8. Endings should goto $menu
    for ending in EXPECTED_ENDINGS:
        if ending in all_scene_data:
            gotos = all_scene_data[ending]["gotos"]
            if "$menu" not in gotos:
                result.warn(
                    route, ending,
                    f"Does not goto $menu (gotos: {gotos})"
                )


def main():
    routes = sys.argv[1:] if len(sys.argv) > 1 else CHARACTERS

    # Validate requested routes exist
    for r in routes:
        if r not in CHARACTERS:
            print(f"Unknown route: {r}. Available: {', '.join(CHARACTERS)}")
            sys.exit(1)

    result = ValidationResult()
    scene_counts = {}

    print(f"Validating {len(routes)} route(s): {', '.join(routes)}")
    print(f"Portraits found: {len(AVAILABLE_PORTRAITS)}")
    print()

    for route in routes:
        validate_route(route, result)
        route_dir = SCENES_DIR / route
        if route_dir.exists():
            files = list(route_dir.glob("*.lua"))
            scene_counts[route] = len(files)
            total_lines = 0
            total_choices = 0
            for f in files:
                try:
                    data = parse_scene_file(f)
                    total_lines += data["line_count"]
                    total_choices += data["choice_count"]
                except:
                    pass
            print(f"  {route:6s}  {len(files):2d} scenes  {total_lines:4d} lines  {total_choices:2d} choices")

    print()

    if result.warnings:
        print(f"WARNINGS ({len(result.warnings)}):")
        for w in sorted(result.warnings):
            print(w)
        print()

    if result.errors:
        print(f"ERRORS ({len(result.errors)}):")
        for e in sorted(result.errors):
            print(e)
        print()
        print("RESULT: FAIL")
        sys.exit(1)
    else:
        print("RESULT: PASS (0 errors)")
        if result.warnings:
            print(f"         {len(result.warnings)} warning(s) — review above")
        sys.exit(0)


if __name__ == "__main__":
    main()
