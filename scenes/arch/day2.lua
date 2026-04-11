return {
    title = "Day 2 -- Tuesday",
    subtitle = "The First Standup",
    narration = "Standup. The dev has a git repo. The PO has a deck. You have three diagrams nobody asked for, and a feeling that the data model is wrong.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "pm", expression = "cheerful", text = "Good morning! Welcome to standup. Yesterday, today, blockers." },
        { speaker = "dev", expression = "neutral", text = "Yesterday I set up the repo. Today I'm picking the stack. No blockers." },
        { speaker = "pm", expression = "neutral", text = "Casey, you're up." },

        { speaker = "arch", expression = "whiteboarding", text = "Yesterday I drew three architecture options. Today I want to discuss the data model. We need to decide before Sam gets too deep." },
        { speaker = "dev", expression = "frustrated", text = "Casey. I literally just made a git repo." },
        { speaker = "arch", expression = "whiteboarding", text = "Right, but the FOUNDATION matters. I've been thinking about microservices..." },
        { speaker = "dev", expression = "frustrated", text = "For an MVP." },
        { speaker = "arch", expression = "concerned", text = "(He's not wrong. But also not right. The first architectural decision is the one you can't undo. We have to talk about it now.)" },

        { speaker = "qa", expression = "neutral", text = "I'm writing the test plan. Which is hard because we don't have requirements." },
        { speaker = "po", expression = "defensive", text = "I sent a 47-slide deck!" },
        { speaker = "qa", expression = "deadpan", text = "That's a mood board, Priya." },
        { speaker = "arch", expression = "concerned", text = "(The data model lives in the deck. It is, technically, three stock photos and a feeling.)" },

        { speaker = "pm", expression = "neutral", text = "Casey, what do you actually need from this room today?" },

        { speaker = "arch", expression = "neutral", text = "(Three answers. Each one shapes the next six weeks.)",
            choices = {
                { text = "Spike the data model. Two days, three options, document the trade-offs.", set = {pushed_interviews = true}, rel = {dev = 1, qa = 1, po = -1, pm = -1} },
                { text = "Just start drawing. Whiteboard session this afternoon. Build consensus by Friday.", set = {started_wireframes = true}, rel = {dev = -1, po = 0, pm = 1} },
                { text = "I won't draw a line until the team writes acceptance criteria. Architecture serves requirements, not the other way around.", set = {needs_requirements = true}, rel = {dev = 2, qa = 2, po = -1, pm = -1} },
            }
        },

        -- Spike
        { speaker = "arch", expression = "neutral", text = "Two days. Three options. Pros, cons, scaling profile. By Thursday I'll have a decision doc.", condition = "pushed_interviews" },
        { speaker = "dev", expression = "smiling", text = "That's actually... what I need. Yes.", condition = "pushed_interviews" },
        { speaker = "pm", expression = "stressed", text = "Two days for architecture? When do you start coding?", condition = "pushed_interviews" },
        { speaker = "arch", expression = "neutral", text = "Day 4. Two days now or two months of regret.", condition = "pushed_interviews" },

        -- Just draw
        { speaker = "arch", expression = "whiteboarding", text = "Whiteboard session. Two PM. I'll come with a draft. We argue. We converge.", condition = "started_wireframes" },
        { speaker = "dev", expression = "frustrated", text = "(I am going to spend my Tuesday afternoon watching Casey draw boxes.)", condition = "started_wireframes" },
        { speaker = "arch", expression = "concerned", text = "(He won't say it, but he needs the diagrams more than anyone. He just doesn't know it yet.)", condition = "started_wireframes" },

        -- Requirements first
        { speaker = "arch", expression = "neutral", text = "I won't draw a line until somebody writes acceptance criteria. Architecture serves the product. Not the other way around.", condition = "needs_requirements" },
        { speaker = "po", expression = "defensive", text = "The deck IS the requirement!", condition = "needs_requirements" },
        { speaker = "arch", expression = "concerned", text = "Priya. Slide 23 says 'delight' in 72-point font. I cannot architect 'delight.'", condition = "needs_requirements" },
        { speaker = "dev", expression = "smiling", text = "Casey just earned my respect. Don't get used to it.", condition = "needs_requirements" },

        -- Converge
        { speaker = "pm", expression = "neutral", text = "Great standup everyone. That was... 38 minutes." },
        { speaker = "dev", expression = "smiling", text = "New record. Usually it's worse." },
        { speaker = "arch", expression = "concerned", text = "(38 minutes. We discussed nothing concrete. The whiteboard is going to be busy this week.)" },

        { text = "", goto = "day3" }
    }
}
