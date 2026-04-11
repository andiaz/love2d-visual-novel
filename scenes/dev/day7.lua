return {
    title = "Day 7 -- Wednesday",
    subtitle = "Designs Meet Reality",
    narration = "The designs are ready. Now you have to build them. Every pixel in the mockup is a decision you have to honor or break.",

    bg = "desk_closeup",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "dev", expression = "neutral", text = "Wednesday. Alex's designs landed in my inbox. Time to read the bad news." },
        { speaker = "dev", expression = "neutral", text = "(Beautiful designs. Smooth animations. Drag-and-drop. Real-time everything. Of course.)" },
        { speaker = "ux", expression = "neutral", text = "Sam, can we go through the handoff?" },
        { speaker = "dev", expression = "neutral", text = "Yeah. Pull up a chair." },

        -- The walkthrough
        { speaker = "dev", expression = "neutral", text = "This drag-and-drop content organizer. You know how many API calls that is?" },
        { speaker = "ux", expression = "thinking", text = "I... didn't think about the API calls." },
        { speaker = "dev", expression = "neutral", text = "Every drag fires a reorder request. With 50 items, that's 50 calls. On mobile, that's a dead battery and a timeout." },
        { speaker = "ux", expression = "neutral", text = "What if we batch them? Save on drop, not on drag?" },
        { speaker = "dev", expression = "smiling", text = "See, this is why pairing is good. Yes. Batched. Done. Next." },

        { speaker = "dev", expression = "neutral", text = "This infinite scroll feed. You're using offset pagination. With real-time content, that means duplicates and skips." },
        { speaker = "arch", expression = "whiteboarding", text = "I've been saying this. Cursor-based pagination, not offset-based." },
        { speaker = "dev", expression = "neutral", text = "Casey. I know. I was getting there." },
        { speaker = "arch", expression = "whiteboarding", text = "I drew a diagram--" },
        { speaker = "dev", expression = "neutral", text = "You always draw a diagram." },

        -- Pressure
        { speaker = "dev", expression = "tired", text = "Alex, here's the deal. The designs are good. Some of these interactions are expensive to build AND expensive to run. I have to make calls about what survives the demo." },

        { speaker = "dev", expression = "neutral", text = "Three options.",
            choices = {
                { text = "Strip the fancy interactions. Functional > beautiful. I'll explain to Alex.", set = {simplified_ux = true}, rel = {arch = 1, ux = -1, po = -1} },
                { text = "I'll build it as designed. I need three more days, but it'll match.", set = {kept_complex_ux = true}, rel = {ux = 2, po = 1, pm = -1} },
                { text = "Pair with Alex. Build live, adjust the design as we hit walls.", set = {paired_with_dev = true}, rel = {ux = 2, pm = 1, arch = 1} },
            }
        },

        -- Simplified
        { speaker = "ux", expression = "frustrated", text = "Sam... that's most of the interaction design.", condition = "simplified_ux" },
        { speaker = "dev", expression = "neutral", text = "I know. A design that can't ship is just a screenshot. I'll get as close as I can.", condition = "simplified_ux" },

        -- Kept complex
        { speaker = "pm", expression = "stressed", text = "Three more days? Sam, the demo is Friday.", condition = "kept_complex_ux" },
        { speaker = "dev", expression = "frustrated", text = "Then you're getting a demo with duct tape and prayers. Pick.", condition = "kept_complex_ux" },
        { speaker = "ux", expression = "excited", text = "Thank you. Seriously. The interactions matter.", condition = "kept_complex_ux" },

        -- Pairing
        { speaker = "ux", expression = "excited", text = "Wait, really? You'd pair with me?", condition = "paired_with_dev" },
        { speaker = "dev", expression = "smiling", text = "Designer-developer pairing. It's like pair programming except one of us can't code.", condition = "paired_with_dev" },
        { speaker = "ux", expression = "neutral", text = "(I'll take it.)", condition = "paired_with_dev" },
        { speaker = "dev", expression = "neutral", text = "We'll get further by Friday than you'd believe.", condition = "paired_with_dev" },

        -- End of day
        { speaker = "dev", expression = "tired", text = "(The gap between design and dev. Always there. Sometimes a crack. Sometimes a canyon.)" },
        { speaker = "dev", expression = "neutral", text = "(At least today we're both looking at the same canyon.)" },

        { text = "", goto = "day8" }
    }
}
