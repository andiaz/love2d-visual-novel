return {
    title = "Day 3 -- Wednesday",
    subtitle = "The Demo Bomb",
    narration = "You're mid-diagram when leadership Slacks Jordan. Two weeks. Demo. The diagram you're drawing just became academic.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "arch", expression = "whiteboarding", text = "Wednesday. The middle of the week. The middle of every important architectural decision in this project." },

        -- Branch
        { speaker = "arch", expression = "neutral", text = "The spike is going well. Document store is winning. Relational is too rigid for what Priya wants. I have evidence.", condition = "pushed_interviews" },
        { speaker = "arch", expression = "whiteboarding", text = "Yesterday's whiteboard session ran 90 minutes. We have a draft. Sam hated 60 percent of it. He hates 60 percent of everything.", condition = "started_wireframes" },
        { speaker = "arch", expression = "neutral", text = "Acceptance criteria are landing. Priya is rewriting them in real time. The architecture is starting to shape itself around them.", condition = "needs_requirements" },

        -- Slack
        { speaker = "pm", expression = "stressed", text = "Hey team, leadership wants a demo in two weeks." },
        { speaker = "arch", expression = "concerned", text = "(A demo. In two weeks. Of an architecture I haven't even drawn yet. The constraints just collapsed by an order of magnitude.)" },
        { speaker = "dev", expression = "frustrated", text = "A demo of WHAT? We have a git repo and some opinions." },
        { speaker = "pm", expression = "stressed", text = "It doesn't have to be functional. They want progress." },
        { speaker = "arch", expression = "concerned", text = "(Progress as theatre. The demo will set expectations. The expectations will set the architecture. The architecture will haunt us.)" },

        { speaker = "ux", expression = "neutral", text = "Suddenly all eyes are on me. A clickable mockup, then?" },
        { speaker = "arch", expression = "concerned", text = "Wait. Before we commit to anything..." },

        { speaker = "arch", expression = "neutral", text = "(I get one shot to shape the demo's blast radius on the architecture.)",
            choices = {
                { text = "Build a clickable prototype. The architecture stays untouched. The demo lies cleanly.", set = {made_prototype = true}, rel = {pm = 2, ux = 1, dev = -1} },
                { text = "Pair Sam and Alex on a real working slice. The architecture has to support it -- I want to see what bends.", set = {collab_with_dev = true}, rel = {dev = 2, ux = 2, qa = 1} },
                { text = "Push back. A demo before the architecture is decided will set expectations we can't meet.", set = {pushed_back_demo = true}, rel = {dev = 2, qa = 2, pm = -2} },
            }
        },

        -- Prototype
        { speaker = "arch", expression = "neutral", text = "Clickable prototype. Alex builds it. The data layer doesn't get touched. The architecture stays clean. We lie cleanly.", condition = "made_prototype" },
        { speaker = "ux", expression = "thinking", text = "(Casey just called my entire job 'lying cleanly.' Accurate, actually.)", condition = "made_prototype" },

        -- Real slice
        { speaker = "arch", expression = "neutral", text = "Real slice. Sam and Alex pair. The data layer gets exercised. I want to see which assumptions break first.", condition = "collab_with_dev" },
        { speaker = "dev", expression = "smiling", text = "Casey wants to learn from a fire. I respect this.", condition = "collab_with_dev" },
        { speaker = "arch", expression = "concerned", text = "(The first data model we ship is the one we'll live with. I want it to be exercised before the demo, not after.)", condition = "collab_with_dev" },

        -- Push back
        { speaker = "arch", expression = "concerned", text = "Jordan, this is the wrong time for a demo. The architecture isn't decided. Whatever we show, we will be expected to ship.", condition = "pushed_back_demo" },
        { speaker = "pm", expression = "stressed", text = "Casey, leadership asked.", condition = "pushed_back_demo" },
        { speaker = "arch", expression = "neutral", text = "Then leadership needs to be told the truth. I'll write a one-pager on what 'progress' means at this stage. You send it.", condition = "pushed_back_demo" },
        { speaker = "dev", expression = "smiling", text = "Casey, I have never agreed with you faster.", condition = "pushed_back_demo" },

        -- End
        { speaker = "arch", expression = "concerned", text = "(Day 3. The demo is going to shape the next two months. The architecture is going to shape the next two years. I have to keep them from shaping each other badly.)" },

        { text = "", goto = "day4" }
    }
}
