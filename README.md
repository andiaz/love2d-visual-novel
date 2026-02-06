# Sprint Zero

A comedy visual novel about surviving the IT industry, built with [Love2D](https://love2d.org/).

You play as Alex, a UX Designer on a new product team. Navigate standups, scope creep, impossible deadlines, and office politics — all while trying to ship something users actually want.

## Features

- Scene-based dialogue with branching choices
- Conditional story paths based on player decisions
- Character relationship tracking
- Typewriter text effect with skip
- Character portraits and backgrounds
- Looping background music and sound effects

## Controls

- **Space** — Advance dialogue / Skip text / Confirm choice
- **Up/Down** — Navigate choices
- **Enter** — Confirm choice
- **Mouse** — Click to select choices
- **Escape** — Quit

## Characters

| Name   | Role              |
|--------|-------------------|
| Alex   | UX Designer (you) |
| Jordan | Project Manager   |
| Sam    | Developer         |
| Priya  | Product Owner     |
| Riley  | QA Engineer       |
| Casey  | Architect         |

## Project Structure

```
engine/
  state.lua           # Game flags, relationships, conditions
  characters.lua      # Character registry (names, colors)
  scene.lua           # Scene loading, dialogue, choices, branching
scenes/               # Story scenes (.lua)
assets/
  bg/                 # Background images (.png)
  bgm/                # Background music (.ogg)
  characters/         # Character portraits (.png)
  sfx/                # Sound effects (.ogg)
main.lua              # Love2D callbacks and rendering
```

## Scene Format

Scenes are Lua files in `scenes/` that return a table:

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
        { goto = "next_scene" }
    }
}
```

## Running

1. Install [Love2D](https://love2d.org/)
2. Run: `love .`

Or drag the project folder onto `love.exe`.
