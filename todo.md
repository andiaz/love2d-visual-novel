# Sprint Zero -- To-Do List

## Phase 0: Quality Fixes

### Flag Audit
- [ ] Audit all flag names across all 114 scene files for consistency
- [ ] Fix `wants_research` vs `pushed_interviews` naming mismatch (Days 1-3)
- [ ] Ensure every flag set in a choice is referenced in at least 2-3 later days
- [ ] Remove or consolidate orphaned flags (`eager_for_vision`, `asked_what` etc.)
- [ ] Add new second-choice flags (Day 3 emotional, Day 5 emotional, etc.)
- [ ] Add rapport milestone flags (`dev_ally`, `qa_ally`, etc.)

### Gag Reduction
- [ ] Reduce "47-slide deck" to max 3 uses: Day 1 (setup), Day 3 (callback), 1 ending (payoff). Remove all other instances.
- [ ] Reduce "15-minute standup" to 3 uses: Day 2 (38 min), Day 5 (42 min), Day 14 (12 min payoff). Remove all other instances.
- [ ] Vary Casey's `whiteboarding` expression -- use it for ~30% of appearances, replace rest with `concerned`, `neutral`, `thinking`
- [ ] Reduce "delight" gag to 1 use in Day 2, 1 callback max
- [ ] Ensure "can we just" escalates in absurdity each use (max 3 uses)

### Copy-Paste Elimination
- [ ] Rewrite Riley's Day 11 "47 bugs" speech uniquely for each route's POV
- [ ] Rewrite Sam's intro line uniquely per route (currently identical in 5 routes)
- [ ] Rewrite Priya's Day 5 scope pitch uniquely per route
- [ ] Rewrite Day 10 crunch monologue uniquely per route
- [ ] Rewrite Day 12 demo framing uniquely per route
- [ ] Review and differentiate all Day 1 kickoff intros across routes

### Narrative Contradictions
- [ ] Establish canonical architecture timeline (proposed Day 2, partially adopted Day 4, load-bearing Day 10)
- [ ] Fix demo scope: conditional outcomes based on earlier technical choices (not convergent)
- [ ] Make Priya's self-awareness consistent: she knows the deck is too long but can't stop herself

### Character Voice Differentiation
- [ ] Sam: different critique style when talking to UX vs Arch vs PM vs PO
- [ ] Priya: different pitch style based on audience
- [ ] Casey: different explanation style based on audience
- [ ] Riley: different bug reporting tone based on audience
- [ ] Jordan: different mediation approach based on who's in conflict

---

## Phase 1: Engine Enhancements

- [ ] Per-line BGM switching in `engine/scene.lua` (check for `line.bgm` in `setLine()`)
- [ ] Relationship-threshold conditions in `engine/state.lua` (`condition = {rel_dev_gte = 5}`)
- [ ] Test both features with a sample scene

---

## Phase 2: Story Expansion -- Day 15 (All Characters)

Currently 3 lines. Target: 30-35 lines (~500 words).

- [ ] UX (Alex) -- Day 15 expansion
- [ ] Dev (Sam) -- Day 15 expansion
- [ ] PM (Jordan) -- Day 15 expansion
- [ ] PO (Priya) -- Day 15 expansion
- [ ] QA (Riley) -- Day 15 expansion
- [ ] Arch (Casey) -- Day 15 expansion

---

## Phase 3: Story Expansion -- Days 13-14 (All Characters)

### Day 13 -- The Retro (Target: ~1,000 words, 2 choices)
- [ ] UX Day 13 expansion (morning email, expanded retro, 1-on-1, second choice)
- [ ] Dev Day 13 expansion
- [ ] PM Day 13 expansion
- [ ] PO Day 13 expansion
- [ ] QA Day 13 expansion
- [ ] Arch Day 13 expansion

### Day 14 -- The Last Day (Target: ~800 words, binary choice)
- [ ] UX Day 14 expansion (morning packing, conditional goodbyes, 1-on-1 farewell)
- [ ] Dev Day 14 expansion
- [ ] PM Day 14 expansion
- [ ] PO Day 14 expansion
- [ ] QA Day 14 expansion
- [ ] Arch Day 14 expansion

---

## Phase 4: Story Expansion -- Days 1-4 (All Characters)

### Day 1 -- Kickoff (Target: ~1,000 words)
- [ ] UX Day 1 expansion (pre-meeting, post-meeting decompression)
- [ ] Dev Day 1 expansion
- [ ] PM Day 1 expansion + unique: reviewing project brief before meeting
- [ ] PO Day 1 expansion + unique: rehearsing deck, nervous energy
- [ ] QA Day 1 expansion
- [ ] Arch Day 1 expansion + unique: sketching system diagram

### Day 2 -- First Standup (Target: ~1,000 words)
- [ ] UX Day 2 expansion (morning routine, post-standup convo)
- [ ] Dev Day 2 expansion + unique: debugging dev environment
- [ ] PM Day 2 expansion + unique: Calendar Tetris scene
- [ ] PO Day 2 expansion
- [ ] QA Day 2 expansion + unique: writing first test plan
- [ ] Arch Day 2 expansion + unique: legacy system discovery

### Day 3 -- The Demo Bomb (Target: ~1,200 words, crisis template)
- [ ] UX Day 3 expansion (binary choice, second choice, hallway venting)
- [ ] Dev Day 3 expansion + unique: feasibility evaluation
- [ ] PM Day 3 expansion + unique: executive ambush scene
- [ ] PO Day 3 expansion + unique: stakeholder call
- [ ] QA Day 3 expansion
- [ ] Arch Day 3 expansion

### Day 4 -- The Design Review (Target: ~1,100 words)
- [ ] UX Day 4 expansion + unique: imposter syndrome moment
- [ ] Dev Day 4 expansion + unique: debugging session
- [ ] PM Day 4 expansion
- [ ] PO Day 4 expansion
- [ ] QA Day 4 expansion + unique: automation vs manual debate
- [ ] Arch Day 4 expansion + unique: code review of Sam's code

---

## Phase 5: Story Expansion -- Days 5-7 (All Characters)

### Day 5 -- The Scope Creep (Target: ~1,200 words, 2 choices)
- [ ] UX Day 5 expansion (Slack preview, extended meeting, second choice)
- [ ] Dev Day 5 expansion (extended CRDT monologue)
- [ ] PM Day 5 expansion
- [ ] PO Day 5 expansion (internal conflict, political pressure)
- [ ] QA Day 5 expansion
- [ ] Arch Day 5 expansion + unique: diagram ignored scene

### Day 6 -- Research Reckoning (Target: ~900 words, Solo Day)
- [ ] UX Day 6 expansion + unique: design critique with mentor
- [ ] Dev Day 6 expansion + unique: job posting temptation
- [ ] PM Day 6 expansion + unique: status report to leadership
- [ ] PO Day 6 expansion + unique: competitive analysis discovery
- [ ] QA Day 6 expansion
- [ ] Arch Day 6 expansion

### Day 7 -- Dev Handoff (Target: ~1,000 words, 1-on-1 Day)
- [ ] UX Day 7 expansion (intimate 2-character conversation)
- [ ] Dev Day 7 expansion (extended technical detail)
- [ ] PM Day 7 expansion
- [ ] PO Day 7 expansion
- [ ] QA Day 7 expansion + unique: test environment down
- [ ] Arch Day 7 expansion + unique: Sam ignored patterns

---

## Phase 6: Story Expansion -- Days 8-12 (All Characters)

### Day 8 -- QA Strikes (Target: ~1,300 words, crisis + binary choice early)
- [ ] UX Day 8 expansion + unique: accessibility audit + callbacks
- [ ] Dev Day 8 expansion + unique: debugging montage + callbacks
- [ ] PM Day 8 expansion + unique: team morale survey
- [ ] PO Day 8 expansion + callbacks
- [ ] QA Day 8 expansion (massively expanded -- Riley's day)
- [ ] Arch Day 8 expansion + callbacks

### Day 9 -- The Pivot (Target: ~1,200 words, 2 choices)
- [ ] UX Day 9 expansion (pre-meeting, extended demo, second choice)
- [ ] Dev Day 9 expansion
- [ ] PM Day 9 expansion
- [ ] PO Day 9 expansion (sympathetic internal conflict)
- [ ] QA Day 9 expansion
- [ ] Arch Day 9 expansion + unique: architecture bends or breaks

### Day 10 -- The Long Night (Target: ~1,300 words, 2 choices)
- [ ] UX Day 10 expansion (timestamp segments, BGM changes)
- [ ] Dev Day 10 expansion + unique: 3 AM commit scene
- [ ] PM Day 10 expansion + unique: schedule chicken
- [ ] PO Day 10 expansion
- [ ] QA Day 10 expansion
- [ ] Arch Day 10 expansion + unique: scaling math / infrastructure alert

### Day 11 -- The Breaking Point (Target: ~1,300 words, 2 choices)
- [ ] UX Day 11 expansion (conditional who-breaks, post-crisis)
- [ ] Dev Day 11 expansion
- [ ] PM Day 11 expansion
- [ ] PO Day 11 expansion + unique: feature kill scene
- [ ] QA Day 11 expansion (massively expanded -- Riley's snap)
- [ ] Arch Day 11 expansion

### Day 12 -- Demo Day (Target: ~1,200 words, 2 choices)
- [ ] UX Day 12 expansion (pre-demo, specific demo moments, Q&A choice)
- [ ] Dev Day 12 expansion
- [ ] PM Day 12 expansion (orchestration moment)
- [ ] PO Day 12 expansion
- [ ] QA Day 12 expansion + unique: bug that slipped through
- [ ] Arch Day 12 expansion

---

## Phase 7: Callback Web Implementation

- [ ] Add conditional callbacks for `wants_research` in Days 6, 8, 12, 13
- [ ] Add conditional callbacks for `pushed_interviews` in Days 6, 9, 13
- [ ] Add conditional callbacks for `collab_with_dev` in Days 7, 8, 10
- [ ] Add conditional callbacks for `pushed_back_demo` in Days 9, 12
- [ ] Add conditional callbacks for `prioritized_users` in Days 8, 12, 13
- [ ] Add conditional callbacks for `fought_scope` in Days 9, 12, 13
- [ ] Add conditional callbacks for `absorbed_scope` in Days 8, 11
- [ ] Add conditional callbacks for `followed_data` in Days 9, 12, 13
- [ ] Add conditional callbacks for `paired_with_dev` in Days 8, 10, 11, 14
- [ ] Add conditional callbacks for `took_ownership` in Days 10, 11, 13
- [ ] Add conditional callbacks for `set_boundaries` in Days 11, 13, endings
- [ ] Add conditional callbacks for `backed_riley` in Days 12, 13, 14

---

## Phase 8: Endings Expansion

- [ ] UX -- The Burnout: add conditional callbacks
- [ ] UX -- The Ship: add conditional callbacks
- [ ] UX -- The Pivot: add conditional callbacks
- [ ] UX -- The Promotion: add conditional callbacks
- [ ] Dev -- all 4 endings: add conditional callbacks
- [ ] PM -- all 4 endings: add conditional callbacks
- [ ] PO -- all 4 endings: add conditional callbacks
- [ ] QA -- all 4 endings: add conditional callbacks
- [ ] Arch -- all 4 endings: add conditional callbacks
- [ ] Rebalance ending thresholds if needed after new flags

---

## Phase 9: Pacing Polish

- [ ] Add per-line BGM switches in crisis days (tension to relief within scenes)
- [ ] Add bg switches within days for movement (desk to meeting to break room)
- [ ] Add `{ text = "..." }` silence lines after vulnerable moments
- [ ] Vary choice placement across days (some early, some mid, some late)
- [ ] Verify pacing curve: long days (100-130 lines) vs short days (30-50 lines)
- [ ] Time a full playthrough of UX route (~1.5-2 hours target)
- [ ] Time a full playthrough of Dev route (~1.5-2 hours target)

---

## Phase 10: Verification

- [ ] Run validate.py to check all story branches
- [ ] Test all 4 endings trigger correctly for UX route
- [ ] Test all 4 endings trigger correctly for Dev route
- [ ] Verify conditional callbacks fire with known flag combinations
- [ ] Check per-line BGM switching crossfades smoothly
- [ ] Confirm relationship-threshold conditions work
- [ ] Spot-check remaining 4 routes for consistency

---

## Previously Completed

### Engine (Done)
- [x] State system (flags, relationships, conditions)
- [x] Character registry with names, titles, colors
- [x] Scene module (loading, advancing, branching)
- [x] Choice system with UI (keyboard + mouse)
- [x] Conditional line skipping
- [x] UTF-8 safe typewriter effect
- [x] Colored speaker names with titles
- [x] Fade transitions between scenes
- [x] Per-line background switching
- [x] Ending calculation logic
- [x] Day title cards with narration
- [x] Bigger fonts and improved textbox (conf.lua, 960x540)
- [x] Mouse hover highlight on choices
- [x] Save/load system (auto-save on scene load + line advance)
- [x] Title screen / main menu (New Game, Continue, Quit)
- [x] Choice box slide-in animation
- [x] Procedural text blip sound effect
- [x] Character select screen (3x2 grid, keyboard + mouse)
- [x] Per-character scene routing

### Story Content (Baseline -- to be expanded)
- [x] All 15 days written for all 6 characters (baseline versions)
- [x] All 4 endings written for all 6 characters (baseline versions)
- [x] Story bible (story.md) -- updated with expansion plan
- [x] Title cards with narration on all 15 days

### Art & Assets (Done)
- [x] Character portraits generated
- [x] Backgrounds generated
- [x] BGM tracks generated
- [x] SFX sourced

### Art & Assets -- Prompts Reference

#### Character Portrait Prompts

Style prefix (all characters):
`anime visual novel character portrait, upper body, office setting, clean lineart, cel shading, transparent background, facing slightly left, soft lighting, modern casual office attire --ar 2:3`

**Alex (UX) -- ux\_{expression}.png**
- Base: `young adult, short tousled hair, warm brown skin, wearing a fitted henley shirt and smart watch, creative but polished look, carries a sketchbook`
- neutral, thinking, frustrated, excited

**Sam (Dev) -- dev\_{expression}.png**
- Base: `mid-20s, messy dark hair, pale skin, wearing a faded band t-shirt under an open flannel, headphones around neck, slight stubble`
- neutral, smiling, frustrated, tired

**Jordan (PM) -- pm\_{expression}.png**
- Base: `early 30s, neat short hair, olive skin, wearing a crisp button-down shirt with rolled sleeves, lanyard with badge, always holding a tablet or phone`
- neutral, stressed, cheerful

**Priya (PO) -- po\_{expression}.png**
- Base: `late 20s, long dark wavy hair, South Asian, wearing a colorful blazer over a graphic tee, chunky statement necklace, expressive hand gestures`
- neutral, excited, defensive

**Riley (QA) -- qa\_{expression}.png**
- Base: `late 20s, short undercut hair, East Asian, wearing a plain black turtleneck, minimalist style, sharp observant eyes, round glasses`
- neutral, deadpan, smirk

**Casey (Architect) -- arch\_{expression}.png**
- Base: `mid-30s, neatly trimmed beard, tall, wearing a vest over a dress shirt, always has a whiteboard marker in breast pocket, professorial vibe`
- neutral, whiteboarding, concerned

#### Background Prompts
Style: `anime background art, no characters, wide shot, 800x600, detailed environment`
- Modern open-plan office, daytime
- Modern open-plan office, evening
- Corporate meeting room
- Home office, night time
- Office break room

#### Audio Sources
**BGM:** Suno, Udio, Stable Audio
**SFX:** Freesound.org, Kenney.nl, OpenGameArt.org, jsfxr
