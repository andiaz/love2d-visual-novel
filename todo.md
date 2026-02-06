# Sprint Zero — To-Do List

## Engine
- [ ] Add save/load system (serialize State flags + relationships + current scene/line to file)
- [ ] Add title screen / main menu (New Game, Continue, Quit)
- [ ] Add scene transition effects (fade to black between days)
- [ ] Add per-line background switching (currently only set at scene level)
- [ ] Add support for multiple characters on screen at once
- [ ] Add ending calculation logic (evaluate flags + relationship scores to pick ending)

## Art & Assets

### Character Portrait Prompts
Use these prompts for consistent anime-style visual novel portraits. Append the expression to each base prompt.
Save as PNG, transparent background, roughly 800x1200px. Filename format: `{id}_{expression}.png`

**Style prefix (use for ALL characters):**
`anime visual novel character portrait, upper body, office setting, clean lineart, cel shading, transparent background, facing slightly left, soft lighting, modern casual office attire --ar 2:3`

**Alex (UX) — ux_{expression}.png**
- Base: `young adult, short tousled hair, warm brown skin, wearing a fitted henley shirt and smart watch, creative but polished look, carries a sketchbook`
- neutral: `calm confident expression, slight smile`
- thinking: `hand on chin, eyes looking up, contemplative`
- frustrated: `pinching bridge of nose, eyes closed, exasperated`
- excited: `bright wide smile, eyes sparkling, leaning forward slightly`

**Sam (Dev) — dev_{expression}.png**
- Base: `mid-20s, messy dark hair, pale skin, wearing a faded band t-shirt under an open flannel, headphones around neck, slight stubble`
- neutral: `deadpan expression, arms crossed, unimpressed`
- smiling: `rare genuine grin, one eyebrow raised`
- frustrated: `rubbing temples, tired eyes, grimacing`
- tired: `dark circles under eyes, holding coffee mug, half-lidded stare`

**Jordan (PM) — pm_{expression}.png**
- Base: `early 30s, neat short hair, olive skin, wearing a crisp button-down shirt with rolled sleeves, lanyard with badge, always holding a tablet or phone`
- neutral: `professional smile, attentive posture, ready to take notes`
- stressed: `forced smile, sweat drop, clutching tablet tightly`
- cheerful: `big enthusiastic grin, pointing finger up, motivational energy`

**Priya (PO) — po_{expression}.png**
- Base: `late 20s, long dark wavy hair, South Asian, wearing a colorful blazer over a graphic tee, chunky statement necklace, expressive hand gestures`
- neutral: `confident stance, hands together, warm smile`
- excited: `eyes wide, both hands up gesturing, huge grin, radiating energy`
- defensive: `arms crossed, chin tilted up, slight frown, stubborn look`

**Riley (QA) — qa_{expression}.png**
- Base: `late 20s, short undercut hair, East Asian, wearing a plain black turtleneck, minimalist style, sharp observant eyes, round glasses`
- neutral: `poker face, looking directly at viewer, arms at sides`
- deadpan: `completely flat expression, one eyebrow slightly raised, unblinking`
- smirk: `tiny knowing smirk, eyes narrowed slightly, "I told you so" energy`

**Casey (Architect) — arch_{expression}.png**
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

- [ ] Generate character portraits using prompts above
- [ ] Generate backgrounds using prompts above
- [ ] Generate BGM tracks (at least: main theme, tense theme, resolution theme)
- [ ] Source SFX (notification, keyboard typing, door open, Slack ping, coffee pour)

## Story Content
- [ ] Day 4 — The Design Review (everyone critiques Alex's work)
- [ ] Day 5 — The Scope Creep (Priya's weekend idea)
- [ ] Day 6 — User Research vs. Designing Blind
- [ ] Day 7 — Dev Handoff (Sam finds issues in the designs)
- [ ] Day 8 — QA Strikes (Riley breaks everything)
- [ ] Day 9 — The Pivot (Priya changes direction mid-sprint)
- [ ] Day 10 — The Long Night (crunch begins)
- [ ] Day 11 — The Breaking Point (someone snaps)
- [ ] Day 12 — Demo Eve (final preparations)
- [ ] Day 13 — The Demo (presentation to leadership)
- [ ] Day 14 — The Aftermath (post-demo reactions)
- [ ] Day 15 — The End (reflection + ending trigger)
- [ ] Ending: The Burnout
- [ ] Ending: The Ship
- [ ] Ending: The Pivot
- [ ] Ending: The Promotion
- [ ] Write branching variants for days with major divergence points

## Polish
- [ ] Add conf.lua for window configuration
- [ ] Mouse hover highlight on choices
- [ ] Animate choice boxes appearing (slide in or fade)
- [ ] Add text sound effect (soft blip per character during typewriter)
- [ ] Add day title card between scenes ("Day 4 — Wednesday")
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
- [x] Story: Day 1 — Kickoff (with 3-way choice)
- [x] Story: Day 2 — First Standup (with 3-way choice)
- [x] Story: Day 3 — The Demo Bomb (with 3-way choice)
- [x] Story: story.md — Full story bible with arc, characters, endings
