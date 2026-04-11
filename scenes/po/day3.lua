return {
    title = "Day 3 -- Wednesday",
    subtitle = "The Demo Bomb",
    narration = "Leadership wants a demo in two weeks. They want to see your vision. The vision is currently in slide form.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "po", expression = "excited", text = "Wednesday. The middle of the week. The middle of momentum." },

        -- Branch on day 2
        { speaker = "po", expression = "neutral", text = "I asked the team what they need from me. The answers were... not what I expected.", condition = "pushed_interviews" },
        { speaker = "ux", expression = "neutral", text = "She actually listened. I'm in shock.", condition = "pushed_interviews" },

        { speaker = "po", expression = "excited", text = "Yesterday I walked Alex through slides 1-12. We're aligned!", condition = "started_wireframes" },
        { speaker = "ux", expression = "frustrated", text = "(We are not aligned. We just stopped arguing.)", condition = "started_wireframes" },

        { speaker = "po", expression = "neutral", text = "I wrote acceptance criteria last night. Three flows. Real ones.", condition = "needs_requirements" },
        { speaker = "dev", expression = "smiling", text = "I read it. It's actually... usable.", condition = "needs_requirements" },

        -- Slack drops
        { speaker = "pm", expression = "stressed", text = "Hey team, quick Slack update -- leadership wants a demo in two weeks." },
        { speaker = "po", expression = "excited", text = "(YES. THIS. This is what I've been pitching for. A real audience.)" },
        { speaker = "dev", expression = "frustrated", text = "A demo of WHAT? We have a git repo and some opinions." },
        { speaker = "po", expression = "excited", text = "We have the VISION. We just need to bring it to life." },
        { speaker = "qa", expression = "deadpan", text = "The vision is 47 slides of stock photos." },
        { speaker = "po", expression = "defensive", text = "(Riley. Always. Always with the slides.)" },

        { speaker = "pm", expression = "neutral", text = "Priya, you know leadership best. What do they need to see?" },
        { speaker = "po", expression = "neutral", text = "(This is the moment. This is when I prove I can read the room.)",
            choices = {
                { text = "Pitch them the dream. Mockups, vision slides, bold claims. Sell it.", set = {made_prototype = true}, rel = {pm = 1, dev = -2, qa = -1} },
                { text = "Ask Sam and Alex to build a real working slice. Less wow, more substance.", set = {collab_with_dev = true}, rel = {dev = 2, ux = 2, qa = 1} },
                { text = "Push back. Two weeks is too soon to show real progress -- I'll buy us four.", set = {pushed_back_demo = true}, rel = {dev = 2, qa = 2, pm = -1} },
            }
        },

        -- Sell the dream
        { speaker = "po", expression = "excited", text = "Mockups. Vision board. The full pitch. Leadership loves a story.", condition = "made_prototype" },
        { speaker = "dev", expression = "frustrated", text = "We're building a beautiful lie.", condition = "made_prototype" },
        { speaker = "po", expression = "defensive", text = "(He doesn't get it. Storytelling IS the product. At this stage.)", condition = "made_prototype" },

        -- Real slice
        { speaker = "po", expression = "neutral", text = "Less wow, more substance. Sam, Alex -- can you pair on a real slice? I'll handle leadership expectations.", condition = "collab_with_dev" },
        { speaker = "dev", expression = "smiling", text = "Wait. You're telling LEADERSHIP that we'll have less? That's new.", condition = "collab_with_dev" },
        { speaker = "po", expression = "neutral", text = "(I have spent six months pitching this vision. The hardest thing I will do this week is downscale it. But.)", condition = "collab_with_dev" },

        -- Push back
        { speaker = "po", expression = "neutral", text = "I'll talk to the director. Two weeks is too soon. I'll buy us four.", condition = "pushed_back_demo" },
        { speaker = "pm", expression = "stressed", text = "Priya. Are you sure? You spent months getting their attention.", condition = "pushed_back_demo" },
        { speaker = "po", expression = "neutral", text = "Yes. A bad demo costs more than a delayed one.", condition = "pushed_back_demo" },
        { speaker = "qa", expression = "smirk", text = "Did Priya... just protect the team?", condition = "pushed_back_demo" },

        -- End of day
        { speaker = "po", expression = "neutral", text = "(Day 3. I made a decision. I'm not sure it was the right one. But it was MINE.)" },

        { text = "", goto = "day4" }
    }
}
