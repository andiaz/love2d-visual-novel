return {
    title = "Day 3 -- Wednesday",
    subtitle = "The Demo Bomb",
    narration = "Yesterday's choices are settling. Then leadership Slacks Jordan. Two weeks. Demo. The test plan you started writing just became theoretical.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "qa", expression = "neutral", text = "Wednesday. The middle of the week. The middle of nothing." },

        -- Branch
        { speaker = "qa", expression = "neutral", text = "I've done two user interviews so far. People mostly want their existing tools to suck less.", condition = "pushed_interviews" },
        { speaker = "ux", expression = "excited", text = "Same finding from my interviews. Should we present this to Priya together?", condition = "pushed_interviews" },

        { speaker = "qa", expression = "deadpan", text = "I'm writing test cases against the deck. So far they all read 'verify the user feels delight.'", condition = "started_wireframes" },
        { speaker = "dev", expression = "smiling", text = "Add an XPath for delight.", condition = "started_wireframes" },

        { speaker = "qa", expression = "neutral", text = "Workshop went better than I expected. We have three real flows with criteria.", condition = "needs_requirements" },
        { speaker = "dev", expression = "neutral", text = "Riley wrote half of those criteria. Without complaining.", condition = "needs_requirements" },

        -- Slack drops
        { speaker = "pm", expression = "stressed", text = "Hey team -- leadership wants a demo in two weeks." },
        { speaker = "dev", expression = "frustrated", text = "A demo of WHAT? We have a git repo and some opinions." },
        { speaker = "qa", expression = "deadpan", text = "A demo of vapor. With unwitnessed delight. Sounds great." },
        { speaker = "pm", expression = "stressed", text = "It doesn't have to be functional. They want to see progress." },
        { speaker = "qa", expression = "deadpan", text = "(Translation: they want a screenshot they can put in their own deck.)" },

        { speaker = "ux", expression = "neutral", text = "Suddenly all eyes are on me. Or whoever can make a clickable mockup." },
        { speaker = "qa", expression = "neutral", text = "Hold on -- before we commit to anything..." },

        { speaker = "qa", expression = "neutral", text = "(QA can shape the demo before it's a fire. Three options.)",
            choices = {
                { text = "Build a prototype, but write the test script for it now. Demo what we can verify.", set = {made_prototype = true}, rel = {ux = 1, dev = 1, pm = 1} },
                { text = "Pair Sam and Alex on a real slice. Real code I can actually break before Friday.", set = {collab_with_dev = true}, rel = {dev = 2, ux = 2, arch = 1} },
                { text = "Push back hard. 'A demo this early will train leadership to expect features we don't have.'", set = {pushed_back_demo = true}, rel = {dev = 2, arch = 1, pm = -2} },
            }
        },

        -- Prototype
        { speaker = "qa", expression = "neutral", text = "Alex builds it. I write the demo test script today. We rehearse Thursday. Nothing leaves my list.", condition = "made_prototype" },
        { speaker = "pm", expression = "cheerful", text = "Riley, that's actually... great.", condition = "made_prototype" },
        { speaker = "qa", expression = "smirk", text = "(QA showing up two weeks early. Mark your calendars.)", condition = "made_prototype" },

        -- Real slice
        { speaker = "qa", expression = "neutral", text = "Pair them. Real code. I'd rather break something true than catch nothing in a fake.", condition = "collab_with_dev" },
        { speaker = "dev", expression = "smiling", text = "Riley wants real code. I love this team.", condition = "collab_with_dev" },

        -- Push back
        { speaker = "qa", expression = "deadpan", text = "Jordan, hear me out. A demo this early teaches leadership to expect features we haven't built. We'll never recover.", condition = "pushed_back_demo" },
        { speaker = "pm", expression = "stressed", text = "Riley, leadership asked. We can't say no.", condition = "pushed_back_demo" },
        { speaker = "qa", expression = "deadpan", text = "We CAN say no. Nobody ever does.", condition = "pushed_back_demo" },
        { speaker = "dev", expression = "smiling", text = "Respect.", condition = "pushed_back_demo" },

        -- End of day
        { speaker = "qa", expression = "deadpan", text = "(Day 3. Standup duration tracker now has its own dashboard.)" },

        { text = "", goto = "day4" }
    }
}
