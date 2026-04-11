return {
    title = "Day 12 -- Friday",
    subtitle = "Demo Day",
    narration = "Five hours to lock the story. Leadership in the room at 2 PM. Your only job: choose the frame.",

    bg = "meeting_room",
    bgm = "tension",

    dialogue = {
        { speaker = "pm", expression = "stressed", text = "Friday morning. Demo day. The real one this time." },
        { speaker = "pm", expression = "stressed", text = "Demo at 2 PM. Five hours to finalize." },
        { speaker = "dev", expression = "tired", text = "Last night's build is stable. Don't touch anything." },
        { speaker = "qa", expression = "smirk", text = "I have a list of buttons NOT to click during the demo. It's extensive." },
        { speaker = "arch", expression = "neutral", text = "Performance fix is in. We can handle 10 concurrent users." },
        { speaker = "dev", expression = "smiling", text = "Ten whole users. The future of enterprise software." },

        { speaker = "po", expression = "neutral", text = "Team? I want to say... I know I've been a lot." },
        { speaker = "dev", expression = "neutral", text = "Priya--" },
        { speaker = "po", expression = "neutral", text = "No, let me finish. I push hard because I believe in this. But I should have listened more." },
        { speaker = "qa", expression = "smirk", text = "(Is Priya... growing?)" },
        { speaker = "po", expression = "neutral", text = "After the demo, I want a real retrospective. The kind we don't usually do." },
        { speaker = "pm", expression = "cheerful", text = "That's actually very mature, Priya. I'll book the room." },
        { speaker = "pm", expression = "stressed", text = "(I'll add it to the calendar. With a real agenda this time.)" },

        -- The framing call
        { speaker = "pm", expression = "neutral", text = "Alex is leading the walkthrough. But the framing -- that's mine. How do I want leadership to see this?" },

        { speaker = "pm", expression = "stressed", text = "(Frame the story. The product is 80% the story I tell about it.)",
            choices = {
                { text = "'Focused MVP.' Show the polished core. Less is more.", set = {polished_subset = true}, rel = {qa = 2, dev = 2, ux = 1} },
                { text = "'Ambitious vision.' Show everything. Let leadership see the scope.", set = {showed_everything = true}, rel = {po = 2, qa = -2, dev = -1} },
                { text = "'Honest progress.' Walk through what works, what doesn't, and what's next.", set = {honest_demo = true}, rel = {dev = 1, ux = 1, qa = 1, po = 1, arch = 1} },
            }
        },

        -- Polished
        { speaker = "dev", expression = "smiling", text = "Smart. Show strength, not surface area.", condition = "polished_subset" },
        { speaker = "qa", expression = "neutral", text = "I approve. The parts that work actually work well.", condition = "polished_subset" },

        -- Showed
        { speaker = "po", expression = "excited", text = "Yes! Show them everything!", condition = "showed_everything" },
        { speaker = "qa", expression = "smirk", text = "Including the search that sorts by zodiac sign?", condition = "showed_everything" },
        { speaker = "dev", expression = "neutral", text = "It's alphabetical in Korean. I told you.", condition = "showed_everything" },

        -- Honest
        { speaker = "pm", expression = "neutral", text = "Radical transparency. I've never tried it. Let's see how it lands.", condition = "honest_demo" },
        { speaker = "dev", expression = "neutral", text = "Refreshing. Let's do it.", condition = "honest_demo" },

        -- The demo
        { speaker = "pm", expression = "neutral", text = "It's 2 PM. Leadership is in the room. Here we go." },
        { speaker = "ux", expression = "neutral", text = "Good afternoon everyone. Let me walk you through Project Chimera." },
        { speaker = "pm", expression = "stressed", text = "(20 minutes of demo. 40 minutes of Q&A. It is always the Q&A.)" },

        -- End of day
        { speaker = "pm", expression = "cheerful", text = "We did it, team. Demo is done." },
        { speaker = "dev", expression = "neutral", text = "How do we feel?" },
        { speaker = "pm", expression = "stressed", text = "Ask me on Monday." },

        { text = "", goto = "day13" }
    }
}
