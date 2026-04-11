return {
    title = "Day 3 -- Wednesday",
    subtitle = "The Demo Bomb",
    narration = "Yesterday's choices are settling in. Then a message from leadership drops.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "dev", expression = "neutral", text = "Wednesday. The middle of the week. The middle of nothing." },

        -- If player did the spike
        { speaker = "dev", expression = "tired", text = "I've been head-down on the spike since yesterday. The findings are... informative.", condition = "pushed_interviews" },
        { speaker = "arch", expression = "neutral", text = "Informative good or informative bad?", condition = "pushed_interviews" },
        { speaker = "dev", expression = "neutral", text = "Real-time sync is going to eat us alive. We need WebSockets, a message broker, and conflict resolution. None of which exist yet.", condition = "pushed_interviews" },
        { speaker = "po", expression = "defensive", text = "But the deck has real-time as a core feature.", condition = "pushed_interviews" },
        { speaker = "dev", expression = "neutral", text = "The deck also has 'AI-powered' on slide 19. We're not building that either.", condition = "pushed_interviews" },

        -- If player started scaffolding
        { speaker = "dev", expression = "neutral", text = "I scaffolded the API yesterday. Routes for content, users, comments. It compiles.", condition = "started_wireframes" },
        { speaker = "arch", expression = "concerned", text = "Sam, your routes assume a flat document model. The deck implies hierarchy.", condition = "started_wireframes" },
        { speaker = "dev", expression = "neutral", text = "The deck implies a lot of things, Casey.", condition = "started_wireframes" },
        { speaker = "ux", expression = "neutral", text = "Can I see what you scaffolded? I'd like to align my flows.", condition = "started_wireframes" },
        { speaker = "dev", expression = "neutral", text = "Yeah. Come over.", condition = "started_wireframes" },

        -- If player held out for requirements
        { speaker = "pm", expression = "neutral", text = "Alright, requirements workshop. I've booked a 2-hour slot.", condition = "needs_requirements" },
        { speaker = "po", expression = "excited", text = "Oh good! I have some new ideas actually. What if we add a marketplace?", condition = "needs_requirements" },
        { speaker = "dev", expression = "frustrated", text = "A marketplace. On top of the knowledge platform. In 6 weeks.", condition = "needs_requirements" },
        { speaker = "po", expression = "excited", text = "Think of it as a phase 1.5!", condition = "needs_requirements" },
        { speaker = "dev", expression = "frustrated", text = "(I asked for requirements. I got more wishes.)", condition = "needs_requirements" },

        -- Shared: The Slack incident
        { speaker = "pm", expression = "stressed", text = "Hey team, quick Slack update -- leadership wants a demo in two weeks." },
        { speaker = "dev", expression = "frustrated", text = "A demo of WHAT? We have a git repo and some opinions." },
        { speaker = "pm", expression = "stressed", text = "They want to 'see progress.' It doesn't have to be functional." },
        { speaker = "ux", expression = "neutral", text = "So a clickable mockup? That's my territory." },
        { speaker = "dev", expression = "neutral", text = "(Suddenly all eyes are on me. The dev with two weeks and no spec.)" },

        { speaker = "dev", expression = "neutral", text = "What's the ask, exactly?",
            choices = {
                { text = "I'll build a real working slice. Ugly but functional.", set = {made_prototype = true}, rel = {pm = 2, arch = 1, po = -1} },
                { text = "Alex builds the front, I'll wire up just enough backend to make it click.", set = {collab_with_dev = true}, rel = {ux = 2, pm = 1} },
                { text = "A demo this early sets false expectations. I'm pushing back.", set = {pushed_back_demo = true}, rel = {pm = -2, qa = 2, arch = 1} },
            }
        },

        -- Real slice path
        { speaker = "pm", expression = "cheerful", text = "A working slice would be amazing.", condition = "made_prototype" },
        { speaker = "dev", expression = "tired", text = "It will be ugly. It will be brittle. It will not be the product. Manage expectations.", condition = "made_prototype" },
        { speaker = "ux", expression = "neutral", text = "(Sam's about to disappear into the cave for two weeks.)", condition = "made_prototype" },

        -- Collab path
        { speaker = "ux", expression = "excited", text = "Yes please. Let me build the screens, you give me the seams to plug in.", condition = "collab_with_dev" },
        { speaker = "dev", expression = "smiling", text = "Deal. Anything to keep Casey from making the demo into an architecture lecture.", condition = "collab_with_dev" },
        { speaker = "arch", expression = "concerned", text = "I heard that.", condition = "collab_with_dev" },

        -- Push back path
        { speaker = "pm", expression = "neutral", text = "Sam, leadership asked. We can't say no.", condition = "pushed_back_demo" },
        { speaker = "dev", expression = "frustrated", text = "We CAN say no. We just won't. Fine. But I want it on record.", condition = "pushed_back_demo" },
        { speaker = "qa", expression = "smirk", text = "I'll log it as a bug. 'Demo scheduled before product exists.' Severity: existential.", condition = "pushed_back_demo" },

        -- End of day
        { speaker = "dev", expression = "tired", text = "Day 3. Two weeks to a demo of a thing we haven't agreed on." },
        { speaker = "dev", expression = "neutral", text = "(I should buy more coffee.)" },

        { text = "", goto = "day4" }
    }
}
