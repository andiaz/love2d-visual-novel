return {
    title = "Day 12 -- Friday",
    subtitle = "Demo Day",
    narration = "Five hours to lock the build. Leadership at 2 PM. The technical Q&A is going to be the architect's moment. Or the architect's grave. Or both.",

    bg = "meeting_room",
    bgm = "tension",

    dialogue = {
        { speaker = "arch", expression = "concerned", text = "Friday morning. Demo day. The real one. The architecture diagram has been printed and laminated. I am taking it into the meeting." },

        { speaker = "pm", expression = "stressed", text = "Demo at 2 PM. Five hours to finalize." },
        { speaker = "dev", expression = "neutral", text = "Last night's build is stable. Don't touch anything." },
        { speaker = "qa", expression = "smirk", text = "I have a list of buttons NOT to click during the demo. It's extensive." },
        { speaker = "arch", expression = "neutral", text = "Performance fix is in. We can handle 10 concurrent users." },
        { speaker = "dev", expression = "smiling", text = "Ten whole users. The future of enterprise software." },
        { speaker = "arch", expression = "concerned", text = "(I architected for 10. I should have architected for 10 thousand. I will architect for 10 thousand in v2. The architectural debt log has 14 entries. I am ready to defend each one.)" },

        { speaker = "po", expression = "neutral", text = "Team? I want to say... I know I've been a lot." },
        { speaker = "po", expression = "neutral", text = "I push hard because I believe in this product. But I should have listened more." },
        { speaker = "arch", expression = "concerned", text = "(Priya is growing in real time. The architect in me wants to document the change. The human in me just nods.)" },
        { speaker = "po", expression = "neutral", text = "After the demo, I want a real retrospective. Real one." },
        { speaker = "pm", expression = "cheerful", text = "That's actually very mature, Priya." },

        -- Framing
        { speaker = "pm", expression = "neutral", text = "Casey, you're walking through the technical Q&A. How do we frame the architecture for leadership?" },

        { speaker = "arch", expression = "neutral", text = "(Three options. Each one is a different architectural philosophy applied to a sales pitch.)",
            choices = {
                { text = "Show the focused architecture. Three boxes, three responsibilities, clean boundaries. Simple is the message.", set = {polished_subset = true}, rel = {dev = 2, qa = 1, ux = 1} },
                { text = "Show the full diagram. Fourteen boxes. Tell them about the future state. Sell ambition.", set = {showed_everything = true}, rel = {po = 2, dev = -2, qa = -2} },
                { text = "Show the debt log. 'Here is what we built. Here is what we know is provisional. Here is what comes next.'", set = {honest_demo = true}, rel = {pm = 1, dev = 1, qa = 1, ux = 1, po = 1} },
            }
        },

        -- Polished
        { speaker = "arch", expression = "neutral", text = "Three boxes. Clean boundaries. Simple is the message. The fourteen-box diagram stays in my notebook.", condition = "polished_subset" },
        { speaker = "dev", expression = "smiling", text = "Casey is choosing simple over complete. I am framing this.", condition = "polished_subset" },

        -- Showed
        { speaker = "arch", expression = "whiteboarding", text = "Fourteen boxes. The whole future state. I will explain every line. The Q&A will be 90 minutes long.", condition = "showed_everything" },
        { speaker = "po", expression = "excited", text = "YES! Show them the vision!", condition = "showed_everything" },
        { speaker = "qa", expression = "smirk", text = "(I am going to die in this Q&A. We are all going to die in this Q&A.)", condition = "showed_everything" },

        -- Honest
        { speaker = "arch", expression = "neutral", text = "Debt log. Three sections. 'What we built.' 'What is provisional.' 'What comes next.' Leadership respects the architect who knows what they don't know.", condition = "honest_demo" },
        { speaker = "pm", expression = "neutral", text = "Radical transparency. I love it.", condition = "honest_demo" },

        -- Demo
        { speaker = "pm", expression = "neutral", text = "It's 2 PM. Leadership in the room. Here we go." },
        { speaker = "arch", expression = "concerned", text = "(20 minutes of demo. 40 minutes of Q&A. The Q&A is mine. The architecture is mine. The defense is mine.)" },

        -- End
        { speaker = "pm", expression = "cheerful", text = "We did it, team. Demo done." },
        { speaker = "dev", expression = "neutral", text = "How do we feel?" },
        { speaker = "arch", expression = "concerned", text = "Ask me on Monday. Right now I want to revise the data model based on three questions leadership asked." },

        { text = "", goto = "day13" }
    }
}
