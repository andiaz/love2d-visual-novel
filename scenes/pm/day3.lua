return {
    title = "Day 3 -- Wednesday",
    subtitle = "The Demo Bomb",
    narration = "You'd just gotten the standup under control. Then leadership Slacked you. Two weeks. They want a demo.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "pm", expression = "neutral", text = "Wednesday. The middle of the week. The middle of everything." },

        -- Branch on yesterday's choice
        { speaker = "pm", expression = "cheerful", text = "Standup yesterday went... well, the parking lot is full now. But we hit 38 minutes.", condition = "pushed_interviews" },
        { speaker = "pm", expression = "stressed", text = "Yesterday's standup was 52 minutes. Casey drew on the whiteboard. Twice.", condition = "started_wireframes" },
        { speaker = "pm", expression = "neutral", text = "Yesterday's planning workshop actually generated three pages of requirements. Almost like real ones.", condition = "needs_requirements" },

        -- Slack drops
        { speaker = "pm", expression = "stressed", text = "(My phone is buzzing. It's the director. This is never good.)" },
        { speaker = "pm", expression = "stressed", text = "Team! Heads up -- leadership wants a demo in two weeks." },
        { speaker = "dev", expression = "frustrated", text = "A demo of WHAT? We have a git repo and some opinions." },
        { speaker = "pm", expression = "stressed", text = "They want to 'see progress.' It doesn't have to be functional." },
        { speaker = "arch", expression = "neutral", text = "So a mockup demo. That's Alex's territory." },
        { speaker = "ux", expression = "neutral", text = "(Suddenly all eyes are on me.)" },
        { speaker = "qa", expression = "deadpan", text = "A demo of vapor in two weeks. What could go wrong." },

        -- Jordan's pivotal call
        { speaker = "pm", expression = "stressed", text = "(My move. I shape this conversation or it shapes me.)",
            choices = {
                { text = "Lock the demo to a clickable prototype. Ship the lie professionally.", set = {made_prototype = true}, rel = {po = 2, ux = 1, dev = -1} },
                { text = "Ask Sam and Alex to pair on a real working slice. No mockups.", set = {collab_with_dev = true}, rel = {dev = 2, ux = 2, arch = 1} },
                { text = "Push back to leadership. 'Two weeks is too soon, here's what we CAN show.'", set = {pushed_back_demo = true}, rel = {dev = 2, qa = 2, arch = 1, po = -1} },
            }
        },

        -- Prototype
        { speaker = "pm", expression = "cheerful", text = "Alex, can you put together a clickable prototype? You're a lifesaver.", condition = "made_prototype" },
        { speaker = "ux", expression = "thinking", text = "(Great. Now I'm building a beautiful lie.)", condition = "made_prototype" },
        { speaker = "dev", expression = "frustrated", text = "Cool. So I'll keep setting up the repo I guess.", condition = "made_prototype" },
        { speaker = "pm", expression = "stressed", text = "(Sam's not happy. Risk register: dev morale.)", condition = "made_prototype" },

        -- Collab
        { speaker = "pm", expression = "neutral", text = "Sam, Alex, can you two pair on a real slice? Front and back together?", condition = "collab_with_dev" },
        { speaker = "dev", expression = "smiling", text = "Yeah, I can throw together a quick frontend over Alex's designs.", condition = "collab_with_dev" },
        { speaker = "ux", expression = "excited", text = "Really? That would be amazing.", condition = "collab_with_dev" },
        { speaker = "pm", expression = "cheerful", text = "(That's the play. Two birds, one demo.)", condition = "collab_with_dev" },

        -- Pushback
        { speaker = "pm", expression = "stressed", text = "(I'm going to call the director back. This is a hard conversation.)", condition = "pushed_back_demo" },
        { speaker = "pm", expression = "neutral", text = "Two weeks is too soon for a meaningful demo. I'm proposing four. With a status update at week two instead.", condition = "pushed_back_demo" },
        { speaker = "dev", expression = "smiling", text = "Respect.", condition = "pushed_back_demo" },
        { speaker = "qa", expression = "smirk", text = "I'll buy you coffee if leadership says yes.", condition = "pushed_back_demo" },

        -- End of day
        { speaker = "pm", expression = "stressed", text = "(Day 3. Status report due. Risk register growing. Calendar already a wall of orange.)" },
        { speaker = "pm", expression = "neutral", text = "(But the standup hit 38 minutes again. That's something.)" },

        { text = "", goto = "day4" }
    }
}
