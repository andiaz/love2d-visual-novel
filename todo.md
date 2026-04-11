# Sprint Zero — To-Do List

## Engine

- [x] Add save/load system (serialize State flags + relationships + current scene/line to file)
- [x] Add title screen / main menu (New Game, Continue, Quit)
- [x] Add scene transition effects (fade to black between days)
- [x] Add per-line background switching (currently only set at scene level)
- [ ] Add support for multiple characters on screen at once
- [x] Add ending calculation logic (evaluate flags + relationship scores to pick ending)

## Art & Assets

### Character Portrait Prompts

Use these prompts for consistent anime-style visual novel portraits. Append the expression to each base prompt.
Save as PNG, transparent background, roughly 800x1200px. Filename format: `{id}_{expression}.png`

**Style prefix (use for ALL characters):**
`anime visual novel character portrait, upper body, office setting, clean lineart, cel shading, transparent background, facing slightly left, soft lighting, modern casual office attire --ar 2:3`

**Alex (UX) — ux\_{expression}.png**

- Base: `young adult, short tousled hair, warm brown skin, wearing a fitted henley shirt and smart watch, creative but polished look, carries a sketchbook`
- neutral: `calm confident expression, slight smile`
- thinking: `hand on chin, eyes looking up, contemplative`
- frustrated: `pinching bridge of nose, eyes closed, exasperated`
- excited: `bright wide smile, eyes sparkling, leaning forward slightly`

**Sam (Dev) — dev\_{expression}.png**

- Base: `mid-20s, messy dark hair, pale skin, wearing a faded band t-shirt under an open flannel, headphones around neck, slight stubble`
- neutral: `deadpan expression, arms crossed, unimpressed`
- smiling: `rare genuine grin, one eyebrow raised`
- frustrated: `rubbing temples, tired eyes, grimacing`
- tired: `dark circles under eyes, holding coffee mug, half-lidded stare`

**Jordan (PM) — pm\_{expression}.png**

- Base: `early 30s, neat short hair, olive skin, wearing a crisp button-down shirt with rolled sleeves, lanyard with badge, always holding a tablet or phone`
- neutral: `professional smile, attentive posture, ready to take notes`
- stressed: `forced smile, sweat drop, clutching tablet tightly`
- cheerful: `big enthusiastic grin, pointing finger up, motivational energy`

**Priya (PO) — po\_{expression}.png**

- Base: `late 20s, long dark wavy hair, South Asian, wearing a colorful blazer over a graphic tee, chunky statement necklace, expressive hand gestures`
- neutral: `confident stance, hands together, warm smile`
- excited: `eyes wide, both hands up gesturing, huge grin, radiating energy`
- defensive: `arms crossed, chin tilted up, slight frown, stubborn look`

**Riley (QA) — qa\_{expression}.png**

- Base: `late 20s, short undercut hair, East Asian, wearing a plain black turtleneck, minimalist style, sharp observant eyes, round glasses`
- neutral: `poker face, looking directly at viewer, arms at sides`
- deadpan: `completely flat expression, one eyebrow slightly raised, unblinking`
- smirk: `tiny knowing smirk, eyes narrowed slightly, "I told you so" energy`

**Casey (Architect) — arch\_{expression}.png**

- Base: `mid-30s, neatly trimmed beard, tall, wearing a vest over a dress shirt, always has a whiteboard marker in breast pocket, professorial vibe`
- neutral: `thoughtful expression, hand stroking beard, composed`
- whiteboarding: `holding up a finger making a point, mouth open mid-explanation, passionate`
- concerned: `furrowed brow, hand on back of neck, worried look`

### Background Prompts

Use same style prefix but: `anime background art, no characters, wide shot, 800x600, detailed environment`

- `modern open-plan office, daytime, desks with monitors, warm lighting, plants`
- `modern open-plan office, evening, orange sunset through windows, desk lamps on`
- `corporate meeting room, large table, whiteboard covered in diagrams, projector screen`
- `home office, messy desk, dual monitors, cat on chair, night time, desk lamp`
- `office break room, coffee machine, vending machine, small table, fluorescent lighting`

### Audio Sources

**BGM (AI-generated music):**

- Suno (suno.com) — text-to-music, free tier available. Good for looping BGM. Prompt ideas:
  - "lo-fi chill office beats, relaxed, loop-friendly" (general theme)
  - "upbeat quirky workplace comedy, light percussion" (standup scenes)
  - "tense anxious synth, building pressure, corporate stress" (crunch/deadline scenes)
  - "warm hopeful piano, resolution, achievement" (good endings)
  - "melancholic slow piano, burnout, exhaustion" (bad ending)
- Udio (udio.com) — similar to Suno, good quality
- Stable Audio (stability.ai) — Stability AI's music generator

**SFX (free libraries):**

- Freesound.org — massive CC-licensed SFX library (notification dings, keyboard typing, door sounds, etc.)
- Kenney.nl/assets — free game-ready SFX packs (UI clicks, transitions)
- OpenGameArt.org — free game audio, some visual novel specific packs
- SFXR/jsfxr (jsfxr.frozenfrog.com) — generate retro-style UI bleeps and bloops in-browser

- [x] Generate character portraits using prompts above
- [x] Generate backgrounds using prompts above
- [x] Generate BGM tracks (at least: main theme, tense theme, resolution theme)
- [x] Source SFX (notification, keyboard typing, door open, Slack ping, coffee pour)

## Story Content

- [x] Day 4 — The Design Review (everyone critiques Alex's work)
- [x] Day 5 — The Scope Creep (Priya's weekend idea)
- [x] Day 6 — User Research vs. Designing Blind
- [x] Day 7 — Dev Handoff (Sam finds issues in the designs)
- [x] Day 8 — QA Strikes (Riley breaks everything)
- [x] Day 9 — The Pivot (Priya changes direction mid-sprint)
- [x] Day 10 — The Long Night (crunch begins)
- [x] Day 11 — The Breaking Point (Riley snaps)
- [x] Day 12 — Demo Eve (final preparations)
- [x] Day 13 — The Demo (leadership feedback + retrospective)
- [x] Day 14 — The Aftermath (team says goodbye)
- [x] Day 15 — The End (reflection + ending router)
- [x] Ending: The Burnout
- [x] Ending: The Ship
- [x] Ending: The Pivot
- [x] Ending: The Promotion
- [x] Ending calculation logic in engine/state.lua
- [ ] Write branching day variants for major divergence points (optional — game works without these)

## Character Selection (Engine + UI)

- [x] Engine: Add `playable` + `tagline` fields to `engine/characters.lua`
- [x] Engine: Add `State.playingAs` + persist in save/load (default "ux" for back-compat)
- [x] Engine: Route `Scene:_doLoadScene` through `scenes/<playingAs>/`
- [x] Engine: New `charselect` gameMode in `main.lua`
- [x] UI: Character select screen (3×2 grid of portrait cards, keyboard + mouse)
- [x] Move existing `scenes/day*.lua` + `scenes/ending_*.lua` into `scenes/ux/`
- [x] Test: all 6 characters selectable, each boots into their own day 1, save/load round-trips per character

## Per-Character Storylines (Writing Backlog)

For each of the 5 new playable characters, the same 15-day arc + 4 endings need to be written from that role's perspective. The UX route already exists and will be moved into `scenes/ux/`. Each role's perspective should make the player *feel* what that IT job is like — purely experiential, no explainers.

### Sam (Dev) route — `scenes/dev/`

- [x] day1 — Kickoff from a developer's perspective (sizing the unknown, vague requirements)
- [x] day2 — First Standup (estimating the unestimable)
- [x] day3 — The Demo Bomb (the "works on my machine" moment)
- [x] day4 — The Design Review (pushing back on impossible designs)
- [x] day5 — The Scope Creep (the weekend idea that breaks the data model)
- [x] day6 — Tech debt vs. new features
- [x] day7 — Dev Handoff received (now you're the one finding issues)
- [x] day8 — QA Strikes (Riley files 30 bugs against your code)
- [x] day9 — The Pivot (refactoring under pressure)
- [x] day10 — The Long Night (the crunch coding session)
- [x] day11 — The Breaking Point (merge conflicts and exhaustion)
- [x] day12 — Demo Eve (last-minute hotfix)
- [x] day13 — The Demo (the live demo that almost crashes)
- [x] day14 — The Aftermath (post-mortem on what broke)
- [x] day15 — The End (reflection + ending router)
- [x] Ending: The Ship (Dev variant)
- [x] Ending: The Promotion (Tech Lead promotion)
- [x] Ending: The Pivot (a half-built system Dev no longer recognizes)
- [x] Ending: The Burnout (Dev variant)

### Jordan (PM) route — `scenes/pm/`

- [x] day1 — Kickoff (wrangling the room, setting expectations)
- [x] day2 — First Standup (the standup that won't end)
- [x] day3 — The Demo Bomb (managing the fallout)
- [x] day4 — The Design Review (mediating between design and dev)
- [x] day5 — The Scope Creep (defending the timeline)
- [x] day6 — Stakeholder check-in (status reports, risk register)
- [x] day7 — Dev Handoff (chasing down blockers)
- [x] day8 — QA Strikes (re-planning around bugs)
- [x] day9 — The Pivot (re-baselining the whole plan)
- [x] day10 — The Long Night (keeping the team fed and sane)
- [x] day11 — The Breaking Point (a team member breaks down)
- [x] day12 — Demo Eve (rehearsals and contingencies)
- [x] day13 — The Demo (the leadership Q&A)
- [x] day14 — The Aftermath (retrospective facilitation)
- [x] day15 — The End (reflection + ending router)
- [x] Ending: The Ship (PM variant)
- [x] Ending: The Promotion (Senior PM / Program Manager)
- [x] Ending: The Pivot (PM variant)
- [x] Ending: The Burnout (PM variant)

### Priya (PO) route — `scenes/po/`

- [x] day1 — Kickoff (presenting the vision)
- [x] day2 — First Standup (defending priorities)
- [x] day3 — The Demo Bomb (your vision, misunderstood)
- [x] day4 — The Design Review (translating vision into specs)
- [x] day5 — The Scope Creep (the weekend idea is now YOUR weekend idea)
- [x] day6 — Stakeholder pressure (the executive ask)
- [x] day7 — Dev Handoff (negotiating cuts)
- [x] day8 — QA Strikes (which bugs are blockers?)
- [x] day9 — The Pivot (you make the call to change direction)
- [x] day10 — The Long Night (rewriting acceptance criteria at midnight)
- [x] day11 — The Breaking Point (the team blames you)
- [x] day12 — Demo Eve (final scope cuts)
- [x] day13 — The Demo (presenting to leadership)
- [x] day14 — The Aftermath (the next roadmap)
- [x] day15 — The End (reflection + ending router)
- [x] Ending: The Ship (PO variant)
- [x] Ending: The Promotion (Head of Product)
- [x] Ending: The Pivot (PO variant — your vision realized?)
- [x] Ending: The Burnout (PO variant)

### Riley (QA) route — `scenes/qa/`

- [x] day1 — Kickoff (test planning while everyone else dreams)
- [x] day2 — First Standup (being ignored)
- [x] day3 — The Demo Bomb (you saw it coming)
- [x] day4 — The Design Review (raising untested edge cases)
- [x] day5 — The Scope Creep (more surface area to test)
- [x] day6 — Building the regression suite
- [x] day7 — Dev Handoff (finally something to test)
- [x] day8 — QA Strikes (you file the 30 bugs — your day in the sun)
- [x] day9 — The Pivot (your test plan invalidated)
- [x] day10 — The Long Night (regression run after regression run)
- [x] day11 — The Breaking Point (you snap at the team)
- [x] day12 — Demo Eve (last-minute smoke tests)
- [x] day13 — The Demo (will it crash on stage?)
- [x] day14 — The Aftermath (the bug you missed)
- [x] day15 — The End (reflection + ending router)
- [x] Ending: The Ship (QA variant — the underappreciated hero)
- [x] Ending: The Promotion (QA Lead / SDET)
- [x] Ending: The Pivot (QA variant)
- [x] Ending: The Burnout (QA variant)

### Casey (Architect) route — `scenes/arch/`

- [x] day1 — Kickoff (sketching the system on a napkin)
- [x] day2 — First Standup (being asked "is this possible?")
- [x] day3 — The Demo Bomb (architectural drift)
- [x] day4 — The Design Review (aligning UI to data model)
- [x] day5 — The Scope Creep (over-engineering vs. quick wins)
- [x] day6 — The whiteboard session nobody understands
- [x] day7 — Dev Handoff (Sam ignores your patterns)
- [x] day8 — QA Strikes (architectural bugs vs. implementation bugs)
- [x] day9 — The Pivot (the architecture has to bend or break)
- [x] day10 — The Long Night (refactoring foundations)
- [x] day11 — The Breaking Point (your design rejected)
- [x] day12 — Demo Eve (will the architecture hold?)
- [x] day13 — The Demo (technical Q&A)
- [x] day14 — The Aftermath (the technical debt diary)
- [x] day15 — The End (reflection + ending router)
- [x] Ending: The Ship (Architect variant)
- [x] Ending: The Promotion (Principal Engineer / Staff)
- [x] Ending: The Pivot (Architect variant)
- [x] Ending: The Burnout (Architect variant)

### Optional polish (future)

- [ ] Per-character intro card on selection (animated transition into day 1)
- [ ] Character-specific BGM theme on the select screen
- [ ] Per-character ending formulas in `State:calculateEnding()` if roles diverge enough
- [ ] New portrait expressions as writing demands them
- [ ] Update `story.md` story bible with the per-character perspective notes
- [ ] Update README with the character-select feature

## Polish

- [x] Animate choice boxes appearing (slide in + fade, staggered per choice)
- [x] Add text sound effect (procedural blip every 2 characters during typewriter)
- [ ] Test all story branches end-to-end
- [ ] Update README with final feature list

## Done

- [x] Engine: State system (flags, relationships, conditions)
- [x] Engine: Character registry with names, titles, colors
- [x] Engine: Scene module (loading, advancing, branching)
- [x] Engine: Choice system with UI (keyboard + mouse)
- [x] Engine: Conditional line skipping
- [x] Engine: UTF-8 safe typewriter effect
- [x] Engine: Colored speaker names with titles
- [x] Engine: Fade transitions between scenes
- [x] Engine: Per-line background switching
- [x] Engine: Ending calculation logic
- [x] Engine: Day title cards with narration
- [x] Engine: Bigger fonts and improved textbox (conf.lua, 960x540)
- [x] Engine: Mouse hover highlight on choices
- [x] Engine: Save/load system (auto-save on scene load + line advance)
- [x] Engine: Title screen / main menu (New Game, Continue, Quit)
- [x] Engine: Choice box slide-in animation
- [x] Engine: Procedural text blip sound effect
- [x] Story: Day 1 — Kickoff (with 3-way choice)
- [x] Story: Day 2 — First Standup (with 3-way choice)
- [x] Story: Day 3 — The Demo Bomb (with 3-way choice)
- [x] Story: Days 4-15 + 4 endings (complete story)
- [x] Story: story.md — Full story bible with arc, characters, endings
- [x] Story: Title cards with narration on all 15 days
