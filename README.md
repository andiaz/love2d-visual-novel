# Sprint Zero

A comedy visual novel about surviving the IT industry, built with [Love2D](https://love2d.org/).

Choose one of six IT roles and experience the chaos of Project Chimera from that perspective. Navigate standups, scope creep, impossible deadlines, and office politics — all while trying to ship something users actually want. Each role sees the same events differently, with unique inner monologue, choices, and consequences.

## Features

- 6 playable characters, each with a full 15-day storyline
- Character select screen with portrait cards
- Scene-based dialogue with branching choices
- Conditional story paths based on player decisions
- Character relationship tracking
- 4 endings per character (Ship, Promotion, Pivot, Burnout)
- Typewriter text effect with skip
- Character portraits and backgrounds
- Looping background music with crossfade
- Auto-save and resume

## Controls

- **Space** — Advance dialogue / Skip text / Confirm choice
- **Up/Down/Left/Right** — Navigate choices and character select
- **Enter** — Confirm choice
- **Mouse** — Click/hover to select
- **Escape** — Return to menu

## Characters

| Name   | Role              | Perspective |
|--------|-------------------|-------------|
| Alex   | UX Designer       | Fights for the user in a room full of competing agendas |
| Sam    | Developer         | Writes the code, knows what's actually possible |
| Jordan | Project Manager   | Herds the cats, owns the timeline |
| Priya  | Product Owner     | Holds the vision, decides what ships |
| Riley  | QA Engineer       | Finds the bugs, saves you from production |
| Casey  | Architect         | Designs the system, sees three sprints ahead |

All six characters are playable. Each one experiences the same two-sprint arc from their own perspective, with unique choices, inner monologue, and relationship dynamics.

## Project Structure

```
engine/
  state.lua           # Game flags, relationships, save/load
  characters.lua      # Character registry (names, colors, taglines)
  scene.lua           # Scene loading, dialogue, choices, branching
scenes/
  ux/                  # Alex's storyline (15 days + 4 endings)
  dev/                 # Sam's storyline
  pm/                  # Jordan's storyline
  po/                  # Priya's storyline
  qa/                  # Riley's storyline
  arch/                # Casey's storyline
assets/
  bg/                  # Background images (.png)
  bgm/                 # Background music (.ogg)
  characters/          # Character portraits (.png)
  sfx/                 # Sound effects (.ogg)
main.lua              # Love2D callbacks, menu, character select, rendering
validate.py           # Story validation script (checks all routes for structural errors)
```

## Scene Format

Scenes are Lua files in `scenes/<character>/` that return a table:

```lua
return {
    bg = "background_name",
    bgm = "music_name",
    dialogue = {
        { speaker = "dev", expression = "neutral", text = "Hello!" },
        { speaker = "pm", expression = "neutral", text = "Pick one:",
            choices = {
                { text = "Option A", set = {flag_a = true}, rel = {dev = 1} },
                { text = "Option B", set = {flag_b = true} },
            }
        },
        { speaker = "dev", text = "You picked A!", condition = "flag_a" },
        { text = "", goto = "next_scene" }
    }
}
```

## Running

1. Install [Love2D](https://love2d.org/)
2. Run: `love .`

Or drag the project folder onto `love.exe`.
