# Love2D Visual Novel

A simple visual novel engine built with [Love2D](https://love2d.org/) (Lua).

## Features

- Scene-based dialogue system with speaker names
- Typewriter text effect with skip functionality
- Character portraits with automatic caching
- Background images scaled to fit the window
- Looping background music with scene transitions
- Sound effects for UI interactions
- Scene-to-scene transitions via `goto`

## Controls

- **Space** - Advance dialogue / Skip text animation
- **Escape** - Quit game

## Project Structure

```
assets/
├── bg/           # Background images (.png)
├── bgm/          # Background music (.ogg)
├── characters/   # Character portraits (.png)
└── sfx/          # Sound effects (.ogg)
scenes/           # Scene dialogue files (.lua)
main.lua          # Main game code
```

## Scene Format

Scenes are Lua files in the `scenes/` folder that return a table:

```lua
return {
    bg = "background_name",  -- optional background image
    bgm = "music_name",      -- optional background music
    dialogue = {
        { speaker = "Name", text = "Dialogue text here.", image = "portrait_name" },
        { text = "Narration without a speaker." },
        { goto = "next_scene" }  -- transition to another scene
    }
}
```

## Running

1. Install [Love2D](https://love2d.org/)
2. Run the game:

**Windows (if Love2D is not in PATH):**
```
"C:\Program Files\LOVE\love.exe" .
```

**Or add Love2D to PATH, then:**
```
love .
```

**Drag and drop:** You can also drag the project folder onto `love.exe`
