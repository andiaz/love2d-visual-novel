# Sprint Zero -- Story Bible

## Premise

You choose one of **six IT roles** -- UX Designer, Developer, Project Manager, Product Owner, QA Engineer, or Architect -- and join a new product team at a mid-sized tech company. The team has been assembled to build **Project Chimera** -- a "knowledge-sharing platform" that the Product Owner describes as "Confluence meets TikTok meets LinkedIn." Nobody is sure what that means, including the Product Owner.

Over the course of 2 sprints (15 in-game days), you navigate conflicting priorities, impossible deadlines, scope creep, and office politics -- all from the perspective of your chosen role. The same events feel different depending on who you are: the dev sees API costs where the designer sees interaction polish; the PM sees risk registers where the PO sees vision.

Your choices shape relationships with teammates, the direction of the product, and ultimately whether the project succeeds, pivots, or burns everyone out. Each role has a complete 15-day storyline with unique inner monologue, choices, and the same 4 endings told from that role's perspective.

**Target length:** ~17,000-18,000 words per route (~1.5-2 hours of play). ~104,000 words total across all 6 characters.

---

## Characters

### Alex (UX Designer)
- The protagonist of the UX route. Advocates for users in a room full of competing agendas.
- Caught between "what users need" and "what everyone else wants."
- Inner monologue provides comic relief -- sarcastic observations in parentheses.

### Jordan (Project Manager)
- Obsessed with timelines, Jira boards, and "syncs."
- Means well but creates chaos by trying to keep everyone happy.
- Catchphrases: "Quick sync," "Let's take that offline," "I'll add it to the board."

### Sam (Developer)
- Pragmatic, slightly cynical. Has seen projects like this before.
- Respects good UX but pushes back on complex interactions.
- Catchphrases: "Works on my machine," "That's a refactor," "Define 'simple.'"
- Potential ally if you respect their technical constraints.

### Priya (Product Owner)
- Big ideas, boundless enthusiasm, zero scope discipline.
- Changes requirements like others change socks. "I had a thought over the weekend..."
- The 47-slide deck with stock photos of people high-fiving is her masterpiece.
- Not malicious -- genuinely believes every feature is essential. Self-aware enough to know the deck is too long, but can't stop herself. This is funnier and more human than pure obliviousness.
- Catchphrases: "What if we also...", "Think of it as a phase 1.5!", "The vision IS the requirement."

### Riley (QA Engineer)
- Finds every edge case nobody thought of. Chronically underappreciated.
- Dry, deadpan humor. Says the quiet part out loud.
- The only person who reads the actual requirements (when they exist).
- Catchphrases: "What happens if the user does [absurd thing]?", "That's not a feature, that's a bug."

### Casey (Architect)
- Thinks in systems, abstractions, and whiteboard diagrams.
- Every conversation turns into a discussion about microservices, scalability, or "the right way."
- Means well but can over-engineer a toaster.
- Important: Casey is a full person, not just a whiteboard dispenser. Use varied expressions (concerned, neutral, thinking) for interpersonal and emotional moments. Reserve the whiteboarding expression for actual architectural discussions (~30% of appearances).
- Catchphrases: "Before we go further...", "We need to future-proof this," "Let me draw something."

### Character Voice Differentiation Rules

Characters must adjust how they speak based on who they're talking to:

**Sam speaking to...**
- Alex (UX): focuses on interaction costs, API calls, re-renders
- Casey (Arch): focuses on abstraction overhead, pattern complexity
- Priya (PO): focuses on what's technically feasible vs impossible
- Jordan (PM): focuses on time estimates and what "done" means

**Priya pitching to...**
- Dev: emphasizes technical impressiveness, "this would be a great engineering challenge"
- PM: emphasizes stakeholder expectations and deadlines
- QA: emphasizes user satisfaction metrics and acceptance criteria
- Arch: emphasizes scale and future vision

**Casey explaining to...**
- Dev: uses technical specifics, shared vocabulary
- UX: translates architecture into user-facing implications
- PM: frames as risk and timeline impact
- PO: frames as what it enables for the product

---

## Day Templates

Not every day follows the same formula. Five distinct templates create structural variety:

### Meeting Day
Standard group scene with pre-meeting arrival, the main event, and post-meeting decompression. One choice point (3 options). Target: 80-100 dialogue lines.
**Used on:** Days 1, 2, 4, 12

### Solo Day
Character works alone. Inner monologue dominates. Slack/email exchanges presented as dialogue without the sender being present. Choice is an internal decision, not spoken aloud. Quieter BGM. Target: 50-70 lines.
**Used on:** Day 6, Day 15

### 1-on-1 Day
Two characters, one conversation. Intimate. Choice is about navigating a specific interpersonal dynamic. Different bg per pairing (break_room for casual, desk_closeup for working). Target: 60-80 lines, 1-2 choices.
**Used on:** Days 7, 13

### Crisis Day
Starts mid-action. No preamble. First line is someone else talking, mid-crisis. Fast pace. Choice appears earlier than usual (~30% through). Second choice appears later. Target: 100-130 lines, 2 choices.
**Used on:** Days 3, 5, 8, 9, 10, 11

### Aftermath Day
Slow, reflective. Character walks through the office. Notices things. Conditional lines dominate (content varies heavily based on accumulated flags). Choice is retrospective, not in-the-moment. Target: 40-60 lines, 0-1 choice.
**Used on:** Days 14, 15

---

## Story Arc

### Act 1: Kickoff (Days 1-3)

**Day 1 -- First Impressions** | Meeting Day | ~1,000 words
Team kickoff meeting. Everyone introduces themselves. Priya unveils the 47-slide vision deck. The protagonist learns the project is web AND mobile, MVP in 6 weeks.

Structure:
- Pre-meeting: Character arrives at the office. First impressions. Inner monologue about starting a new project.
- Main scene: Kickoff meeting. Introductions. Priya's deck. The scope reveal.
- Post-meeting: Private reaction. Slack message to a friend/mentor about first impressions.
- Choice: How to approach the initial design work (research vs. diving in vs. questioning scope).

Character-specific additions:
- PM (Jordan): Reviewing the project brief alone before the meeting, planning the kickoff
- PO (Priya): Rehearsing the deck, nervous energy, stakes of this pitch
- Arch (Casey): Sketching a system diagram on a napkin before anyone arrives

**Day 2 -- First Standup** | Meeting Day | ~1,000 words
The first standup. Sam has only set up a git repo. Casey is already talking about microservices. Riley can't write a test plan without requirements. Priya thinks the deck IS the requirements.

Structure:
- Pre-standup: Morning at desk. Checking overnight Slack. Reading emails. Team dynamics forming.
- Main scene: The standup. Status updates. Dysfunction emerges.
- Post-standup: Follow-up conversation with one teammate.
- Choice: Design approach (user interviews / wireframing / demanding specs).

Character-specific unique scenes:
- Dev (Sam): Debugging the dev environment setup that ate the whole morning
- QA (Riley): Writing the first test plan in isolation. Methodical, satisfying work nobody sees.
- PM (Jordan): "Calendar Tetris" -- juggling meeting requests, the invisible connective tissue

**Day 3 -- The Demo Bomb** | Crisis Day | ~1,200 words
Leadership wants a demo in two weeks. The team has a git repo and opinions.

Structure:
- Opens with the leadership email/Slack dropping the bomb (shown before the meeting)
- Main scene: Emergency team reaction. Extended back-and-forth.
- Post-meeting: Hallway venting. Private processing.
- Choice 1 (binary): Push back on the demo or accept it. No safe middle ground.
- Choice 2: How to process the pressure emotionally.

Character-specific unique scenes:
- PO (Priya): A stakeholder call where she learns about the demo before the team does
- PM (Jordan): Surprise executive ambush. VP pulls Jordan in unprepared.
- Dev (Sam): Evaluating technical feasibility. Running mental calculations.

### Act 2: Design Phase (Days 4-7)

**Day 4 -- The Design Review** | Meeting Day | ~1,100 words
The protagonist presents or reviews initial designs. Everyone has opinions. Casey thinks the data model is wrong. Priya wants three more features. Sam asks if anyone considered mobile. Riley asks what happens offline.

Structure:
- Pre-review: Preparing feedback or presentation.
- Main scene: The review. Extended, role-specific critique from each team member.
- Post-review: Private reaction.
- Choice: Whose feedback to prioritize.

Character-specific unique scenes:
- UX (Alex): Imposter syndrome moment alone at desk before the review
- QA (Riley): "Automation vs manual" internal debate about testing strategy
- Arch (Casey): Code review of Sam's early code. 1-on-1 tension about "correct" vs "pragmatic."

**Day 5 -- The Scope Creep** | Crisis Day | ~1,200 words
Priya had "a thought over the weekend." New feature request that would double the work.

Structure:
- Pre-standup: Character sees Priya's late-night Slack ("Had a thought!"). Reacts with dread.
- Main scene: The scope bomb. Extended technical pushback. Jordan mediates.
- Post-meeting: Character vents to one teammate or alone.
- Choice 1: Absorb the scope, fight it, or compromise.
- Choice 2: How to process the outcome emotionally.

Character-specific additions:
- Dev (Sam): Extended technical monologue about CRDTs, sync servers, presence
- Arch (Casey): "The diagram nobody reads." Presents architecture, team nods and ignores.
- PO (Priya): Internal conflict. Knows it's aggressive but the political pressure is real.

**Day 6 -- The Research Reckoning** | Solo Day | ~900 words
The conflict between data and vision comes to a head. Character processes this alone.

Structure:
- Extended inner monologue about what's been learned so far.
- Slack/email exchanges with teammates (dialogue without them being present).
- Conditional content based on Days 1-5 choices.
- Choice: Follow the data, follow the vision, or find middle ground.

Character-specific unique scenes:
- UX (Alex): Design critique via Slack with an offscreen mentor
- Dev (Sam): Side project temptation. Sees a startup job posting. Inner conflict.
- PO (Priya): Competitive analysis. Discovers a competitor launched something similar.
- PM (Jordan): Writing a status report to leadership (honest vs optimistic vs strategic).

**Day 7 -- Dev Handoff** | 1-on-1 Day | ~1,000 words
The designs meet technical reality. Intimate two-character conversation.

Structure:
- Pre-handoff: Preparation.
- Main scene: Extended technical negotiation. Specific back-and-forth.
- Post-handoff: Reflection on the relationship.
- Choice: How to handle the negotiation (simplify, hold firm, or pair up).

Character-specific unique scenes:
- QA (Riley): "Test environment is down." Nobody set up staging. Invisible infrastructure failure.
- Arch (Casey): Discovering Sam ignored the architecture patterns. Private frustration.
- Dev (Sam): Extended technical detail about specific design issues, API calls, performance.

### Act 3: Build (Days 8-10)

**Day 8 -- QA Strikes** | Crisis Day | ~1,300 words
Bugs emerge. Edge cases nobody considered. The blame game begins.

Structure:
- Opens mid-crisis. Bug count revealed. Choice appears early (~30% in).
- Extended bug discussion with specific, funny bug descriptions.
- More team blame dynamics.
- Post-crisis processing.
- Choice 1 (binary, early): Own it or deflect.
- Choice 2: How to handle the aftermath.

Callbacks from earlier days:
- If `paired_with_dev`: Sam defends the character ("we built this together")
- If `wants_research`: Riley says "you called this on day one"
- If `absorbed_scope`: more bugs traced directly to scope creep

Character-specific unique scenes:
- QA (Riley): Massively expanded. The testing process, bug filing, satisfaction and frustration.
- Dev (Sam): Reading stack traces alone. Debugging montage as narrative.
- UX (Alex): Discovering the product fails accessibility standards.

**Day 9 -- The Pivot** | Crisis Day | ~1,200 words
Priya changes a core feature mid-sprint after a conversation with the CEO's nephew.

Structure:
- Pre-meeting: Reacting to the "emergency meeting" calendar invite.
- Main scene: The pivot announcement. Extended discussion.
- The demo itself: 3-4 specific moments (tough question, a feature that works, a near-miss).
- Post-demo decompression.
- Choice 1: Support the pivot, resist it, or find middle ground.
- Choice 2: "How do you feel?" (relieved / angry / pragmatic).

Callbacks: If `fought_scope`, Priya references it ("you said no last time too").

Character-specific additions:
- PO (Priya): Extended internal conflict. CEO nephew thing is silly but the politics are real.
- Arch (Casey): "The architecture has to bend or break." Alone, evaluating what survives.

**Day 10 -- The Long Night** | Crisis Day | ~1,300 words
Demo is approaching. The team is behind. Crunch begins.

Structure:
- Extended crunch with time-stamp segments (8 PM, 10 PM, midnight) using BGM changes.
- Interpersonal moments during the late night.
- Conditional content based on team relationships.
- Choice 1: Pull an all-nighter, set boundaries, or rally the team.
- Choice 2: Personal/emotional moment during the crunch.

Callbacks:
- If `paired_with_dev` or high dev relationship: Sam and character work as a unit
- If `set_boundaries`: show the character actually leaving while others stay

Character-specific unique scenes:
- Dev (Sam): "3 AM commit." Alone in the office. Just Sam, the code, and a Slack message: "the build is still red."
- PM (Jordan): "Schedule chicken." Realizes the timeline is impossible. Tell leadership now or wait?
- Arch (Casey): Infrastructure alert. Something Casey designed is breaking under load.

### Act 4: Crunch (Days 11-12)

**Day 11 -- The Breaking Point** | Crisis Day | ~1,300 words
Someone on the team reaches their limit. Who depends on accumulated relationship scores.

Structure:
- Extended emotional scene. More dialogue from whoever breaks.
- Conditional content about WHO breaks (using relationship-threshold conditions).
- Post-crisis quiet moment.
- Choice 1: How to respond to the crisis.
- Choice 2: Interpersonal moment after.

Callbacks:
- If `took_ownership` on Day 8: team trusts the character more
- If `rallied_team` on Day 10: team is more cohesive

Character-specific unique scenes:
- QA (Riley): Riley's snap scene, massively expanded. The buildup, the breaking point, the aftermath.
- PO (Priya): "The feature kill." Personally cutting a feature she championed.

**Day 12 -- Demo Day** | Meeting Day | ~1,200 words
The big presentation to leadership. How it goes depends on everything.

Structure:
- Pre-demo preparation.
- The demo with multiple specific moments.
- Post-demo: Leadership feedback, team processing.
- Choice 1: Demo strategy (polished subset, show everything, be honest).
- Choice 2: How to handle the Q&A after.

Callbacks:
- If `fought_scope`: demo is tighter (conditional PM line)
- If `honest_demo`: leadership respects the transparency
- Multiple flags affect how the demo goes

Character-specific additions:
- PM (Jordan): Orchestration moment. Preparation, contingency plans, anxiety.
- QA (Riley): "The bug that slipped through." Discovered after the demo. Guilt of QA failure.

### Act 5: Resolution (Days 13-15)

**Day 13 -- The Retro** | 1-on-1 Day | ~1,000 words
The team retrospective. This is the "payoff day" where earlier choices echo back.

Structure:
- Morning: Reading leadership feedback email privately.
- Expanded retro: Each team member gets 3-4 lines with conditional callbacks.
- Post-retro: 1-on-1 with whoever has the highest relationship score.
- Choice 1: Retro focus (research, communication, or trust).
- Choice 2: What to focus on going forward.

Callbacks: At least 5-6 conditional references to earlier flags. If `paired_with_dev`, Sam's retro line: "What went well: pairing with Alex." If `fought_scope`, leadership praises focus.

**Day 14 -- The Last Day** | Aftermath Day | ~800 words
Farewells. Packing up. The project ends.

Structure:
- Morning at desk: Packing up. Noticing details (Casey's diagrams on the whiteboard, the broken coffee machine).
- Farewell standup: Conditional goodbye lines per character (3-4 lines each, varying by relationship).
- 1-on-1 farewell with closest character (highest relationship). Emotional climax.
- Choice (binary): Look forward or look back. No safe middle.

**Day 15 -- The End** | Aftermath Day | ~500 words
Private reflection. Heavily conditional. The quiet before the ending.

Structure:
- 20-30 lines of inner monologue.
- 5-6 key flags each trigger a 2-3 line memory sequence (e.g., "I remember choosing to push for research..." only if `wants_research` is set).
- No choice. Pure narrative.
- Different bg from the office. Quiet BGM.
- Routes to ending calculation.

---

## Endings

### "The Burnout"
**Trigger:** High compliance flags (always said yes, never pushed back). Low total relationship scores.

The protagonist did everything everyone asked. The product shipped -- a bloated, incoherent mess that technically meets every requirement. They stare at the Jira board, now fully green, and feel nothing. They update their LinkedIn status to "Open to Work."

*"I delivered exactly what was asked for. That was the problem."*

### "The Ship"
**Trigger:** Balanced flags (mix of pushback and compromise). Medium-high relationship scores.

The team shipped a solid MVP. Not everything Priya wanted, not as architecturally pure as Casey dreamed, not as polished as the protagonist hoped. But it works, users like it, and the team respects each other.

*"It's not perfect. But it's ours."*

### "The Pivot"
**Trigger:** Priya's relationship score is highest. Multiple scope change flags set.

The product changed direction so many times it's unrecognizable. It started as a knowledge platform, became a marketplace, pivoted to a social network, and launched as... a to-do list app. Priya calls it "exactly what I always envisioned." Nobody corrects her.

*"We set out to build Confluence meets TikTok meets LinkedIn. We built a to-do list. Priya is thrilled."*

### "The Promotion"
**Trigger:** High research flags. High relationship scores across the board. Pushed back on scope at key moments while maintaining goodwill.

The protagonist navigated politics, advocated for users, and earned the team's trust. The product isn't what anyone originally imagined -- it's better, because it's based on what users actually need. Leadership is impressed.

*"Turns out the secret wasn't having all the answers. It was asking the right questions."*

### Ending Enrichment
All endings should include conditional callbacks. If specific flags are set, add 3-5 lines referencing key moments from the playthrough. This makes endings feel personalized rather than generic.

---

## Running Gags & Comedy Rules

### Gag Discipline
Every running gag must **escalate or transform** on each use. Never simply repeat. Maximum 3 uses per gag across the full 15-day arc: **setup, callback, payoff**.

### Active Gags

- **The 15-minute standup** -- 3 uses only:
  - Day 2: Setup. Jordan promises 15 minutes. It runs 38.
  - Day 5: Callback. "15 minutes, I promise." It runs 42. New excuse.
  - Day 14: Payoff. Jordan finally hits 12 minutes. The team is stunned.

- **"Can we just..."** -- Priya's harbinger of scope creep. Each use should escalate in absurdity:
  - Day 5: "Can we just add real-time collaboration?"
  - Day 9: "Can we just pivot the entire product?" (escalation)
  - Endings: Callback only if appropriate to the ending tone.

- **The 47-slide deck** -- Retire as active joke after Day 3. Allow 1-2 subtle callbacks later (Day 11, endings) but stop hammering it.

- **The Jira board** -- Referenced but never actually updated by anyone. Subtle background detail, not a punchline.

- **"Works on my machine"** -- Sam's default. Use sparingly (2-3 times total).

- **Casey's whiteboard** -- Not every Casey scene. Use when architecturally relevant, not as character shorthand.

- **"I had a thought over the weekend..."** -- Priya's Monday dread trigger. Use once (Day 5). Reference the pattern once more. Don't overdo it.

- **"No blockers"** -- Said during standup while everything is on fire. 1-2 uses max.

### Retired/Reduced Gags
- **"Delight" as unmeasurable requirement** -- One good use in Day 2, one callback. Don't repeat.
- **Search sorting by language** -- Reasonable at 2-3 uses. Keep.
- **Riley's edge cases** -- Good recurring element but vary the specific edge case each time.

---

## Callback Web

Each early flag should be referenced **2-3 more times** in later days to make choices feel meaningful throughout the game.

| Flag (set on) | Referenced on | Example |
|---|---|---|
| `wants_research` (Day 1) | Days 6, 8, 12, 13 | Riley: "you called this on day one" / Demo credited to research |
| `pushed_interviews` (Day 2) | Days 6, 9, 13 | Research data contradicts the pivot / Retro references it |
| `collab_with_dev` (Day 3) | Days 7, 8, 10 | Sam more collaborative in handoff / Sam defends you in crisis |
| `pushed_back_demo` (Day 3) | Days 9, 12 | Character has credibility when pushing back again |
| `prioritized_users` (Day 4) | Days 8, 12, 13 | Accessibility issues found / Demo centers user value |
| `fought_scope` (Day 5) | Days 9, 12, 13 | Priya references pushback / Demo is tighter / Leadership praises focus |
| `absorbed_scope` (Day 5) | Days 8, 11 | More bugs traced to scope creep / Team stressed by overcommitment |
| `followed_data` (Day 6) | Days 9, 12, 13 | Data informs pivot response / Demo grounded in research |
| `paired_with_dev` (Day 7) | Days 8, 10, 11, 14 | Sam defends you / Work as a unit / Sam's farewell is warmer |
| `took_ownership` (Day 8) | Days 10, 11, 13 | Team trusts you more / Retro references accountability |
| `set_boundaries` (Day 10) | Days 11, 13, endings | Character is less burned out / Retro references healthy limits |
| `backed_riley` (Day 11) | Days 12, 13, 14 | Riley more engaged / Riley's farewell is emotional |

### Relationship Milestones
Add hidden "rapport" flags on cumulative choices. On the 3rd pro-dev choice, also set `dev_ally = true`. Condition later dialogue on these milestones for richer mid-story consequences.

---

## Character-Specific Unique Events

Each character has 3 scenes only their role would experience:

### UX (Alex)
1. **Usability test** (Day 2-3): Watching someone struggle with the prototype. Solo, desk_closeup.
2. **Design critique with mentor** (Day 6): Slack exchange with an offscreen senior designer.
3. **Accessibility audit** (Day 8): Discovering the product fails basic accessibility standards.

### Dev (Sam)
1. **Debugging session** (Day 4): Staring at a stack trace. Talking to themselves. Technical problem-solving as narrative.
2. **3 AM production incident** (Day 10): PagerDuty alert. Alone in the office. Atmospheric, lonely.
3. **Job posting temptation** (Day 6): Startup listing. Inner conflict about staying vs leaving.

### PM (Jordan)
1. **Calendar Tetris** (Day 2): Juggling meeting requests. Inner monologue about invisible labor.
2. **Executive ambush** (Day 3): VP pulls Jordan in unprepared. Must present status without prep.
3. **Team morale survey** (Day 8): Anonymous feedback. Harsh truths.

### PO (Priya)
1. **Customer call** (Day 3): Talks to a real customer. Feedback contradicts the deck.
2. **Board update email** (Day 6): Writing a progress update. Choice about which metrics to highlight.
3. **Feature kill** (Day 11): Personally cutting a feature she championed. Emotional.

### QA (Riley)
1. **Test plan writing** (Day 2): Methodical, satisfying work in isolation. The invisible craft of QA.
2. **Test environment down** (Day 7): Staging not set up. Nobody told QA.
3. **Bug nobody believes** (Day 11): Found something bad, can't reproduce reliably. QA credibility crisis.

### Arch (Casey)
1. **Legacy system discovery** (Day 2): "Greenfield" project needs to integrate with legacy. Only architect would find this.
2. **Diagram ignored** (Day 5): Presents architecture. Team nods and ignores it.
3. **Scaling math** (Day 10): Napkin math on infrastructure costs. Numbers are bad.

---

## Canonical Timeline

All routes must respect this shared timeline to avoid contradictions:

- **Day 1:** Team forms. Priya presents vision. Requirements are vague.
- **Day 2:** First standup. No real progress yet. Casey proposes initial architecture.
- **Day 3:** Leadership drops demo deadline. Team scrambles.
- **Day 4:** First designs reviewed. Casey's architecture partially adopted by team consensus.
- **Day 5:** Priya introduces scope creep. Team negotiates.
- **Day 6:** Research vs vision conflict comes to a head.
- **Day 7:** Designs handed to dev. Technical reality confronts design ideals.
- **Day 8:** QA finds bugs. Blame game. The architecture is partially load-bearing by now.
- **Day 9:** CEO nephew pivot. Emergency meeting.
- **Day 10:** Crunch night. The architecture either helps (if good choices) or hurts (if over-engineered).
- **Day 11:** Someone breaks. Team dynamics reach crisis.
- **Day 12:** Demo day. Outcome varies based on accumulated choices.
- **Day 13:** Retro. Reflection and callbacks.
- **Day 14:** Last day. Farewells.
- **Day 15:** Private reflection. Routes to ending.

---

## Key Flags & Tracking

### Choice Flags (set by dialogue choices)

**Day 1:** `wants_research` / `eager_for_vision` / `asked_what`
**Day 2:** `pushed_interviews` / `started_wireframes` / `needs_requirements`
**Day 3:** `pushed_back_demo` / `accepted_demo` (binary) + `demo_stressed` / `demo_determined` / `demo_pragmatic` (emotional choice)
**Day 4:** `prioritized_tech` / `prioritized_product` / `prioritized_users`
**Day 5:** `absorbed_scope` / `fought_scope` / `compromised_scope` + `scope_angry` / `scope_resigned` / `scope_hopeful` (emotional choice)
**Day 6:** `followed_data` / `followed_vision` / `found_middle`
**Day 7:** `simplified_ux` / `kept_complex_ux` / `paired_with_dev`
**Day 8:** `took_ownership` / `deflected_blame` (binary, early) + `bug_fix_focused` / `bug_process_focused` / `bug_blame_focused` (aftermath choice)
**Day 9:** `supported_pivot` / `resisted_pivot` / `negotiated_pivot` + `pivot_relieved` / `pivot_angry` / `pivot_pragmatic` (emotional choice)
**Day 10:** `pulled_allnighter` / `set_boundaries` / `rallied_team` + `crunch_bonded` / `crunch_isolated` (personal choice)
**Day 11:** `backed_riley` / `refocused_team` / `owned_mistakes` + `crisis_empathy` / `crisis_pragmatism` (interpersonal choice)
**Day 12:** `polished_subset` / `showed_everything` / `honest_demo` + `qa_confident` / `qa_nervous` (Q&A choice)
**Day 13:** `retro_research` / `retro_communication` / `retro_trust` + `forward_ambitious` / `forward_cautious` (focus choice)
**Day 14:** `final_forward` / `final_backward` (binary)

### Rapport Milestone Flags (set automatically on cumulative choices)
- `dev_ally`: Set on the 3rd pro-dev choice (e.g., collab_with_dev + paired_with_dev + backed Sam in a disagreement)
- `qa_ally`: Set on the 3rd pro-QA choice
- `po_ally`: Set on the 3rd pro-PO choice
- `arch_ally`: Set on the 3rd pro-Arch choice
- `pm_ally`: Set on the 3rd pro-PM choice

### Relationship Scores
Tracked per character: `dev`, `pm`, `po`, `qa`, `arch`. Each choice adjusts these by +1/-1 or +2/-2 (occasionally +3). Final ending is determined by the combination of flags and total/individual relationship scores.

### Ending Calculation (implemented in engine/state.lua)
1. **The Promotion**: research flags >= 3 AND total relationship >= 15 AND pushback > compliance
2. **The Pivot**: PO has highest relationship score AND scope change flags >= 2
3. **The Burnout**: compliance > pushback AND total relationship < 10
4. **The Ship**: default (balanced play)

Note: Ending thresholds may need rebalancing after adding new flags from second choices.

**Compliance flags:** `eager_for_vision`, `started_wireframes`, `accepted_demo`, `prioritized_product`, `absorbed_scope`, `followed_vision`, `kept_complex_ux`, `deflected_blame`, `supported_pivot`, `pulled_allnighter`, `showed_everything`

**Pushback flags:** `wants_research`, `pushed_interviews`, `pushed_back_demo`, `prioritized_users`, `fought_scope`, `followed_data`, `took_ownership`, `resisted_pivot`, `set_boundaries`, `backed_riley`, `polished_subset`, `honest_demo`

**Research flags:** `wants_research`, `pushed_interviews`, `followed_data`, `prioritized_users`, `retro_research`

---

## Writing Style Constraints

- **No em dashes.** Use commas, periods, ellipses, or line breaks instead.
- **Choice placement variety:** Choices should appear at different points in different days. Some at 30% (crisis), some at 50-60%, some at 70-80% (late reveals). The player should not predict when a choice is coming.
- **Running gag discipline:** Setup, callback, payoff. Three uses max. Escalate each time.
- **Show, don't tell:** Inner monologue should reveal character through reaction, not exposition.

---

## Word Count Targets

| Day | Target Words | Template | Choices |
|-----|-------------|----------|---------|
| 1 | ~1,000 | Meeting | 1 (3 opts) |
| 2 | ~1,000 | Meeting + unique | 1 (3 opts) |
| 3 | ~1,200 | Crisis | 1 binary + 1 (3 opts) |
| 4 | ~1,100 | Meeting + unique | 1 (3 opts) |
| 5 | ~1,200 | Crisis | 2 (3 opts each) |
| 6 | ~900 | Solo + unique | 1 (2-3 opts) |
| 7 | ~1,000 | 1-on-1 + unique | 1-2 choices |
| 8 | ~1,300 | Crisis + unique | 1 binary + 1 (3 opts) |
| 9 | ~1,200 | Crisis | 2 (3 opts each) |
| 10 | ~1,300 | Crisis + unique | 2 choices |
| 11 | ~1,300 | Crisis + unique | 2 choices |
| 12 | ~1,200 | Meeting | 2 choices |
| 13 | ~1,000 | 1-on-1 | 2 choices |
| 14 | ~800 | Aftermath | 1 binary |
| 15 | ~500 | Aftermath | 0 |
| Endings x4 | ~900 | -- | 0 |
| **Total/route** | **~17,400** | | |
