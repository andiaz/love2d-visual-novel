return {
    title = "Day 12 -- Friday",
    subtitle = "Demo Day",
    narration = "Five hours to lock the story. Leadership at 2 PM. You wrote the deck. You picked the vision. The frame is yours.",

    bg = "meeting_room",
    bgm = "tension",

    dialogue = {
        { speaker = "po", expression = "excited", text = "Friday morning. Demo day. The real one. Six months of work in one room." },

        { speaker = "pm", expression = "stressed", text = "Demo at 2 PM. Five hours to finalize." },
        { speaker = "dev", expression = "neutral", text = "Last night's build is stable. Don't touch anything." },
        { speaker = "qa", expression = "smirk", text = "I have a list of buttons NOT to click. Extensive." },
        { speaker = "arch", expression = "neutral", text = "Performance fix is in. We can handle 10 concurrent users." },
        { speaker = "dev", expression = "smiling", text = "Ten whole users. The future of enterprise software." },

        { speaker = "po", expression = "neutral", text = "Team? I want to say something." },
        { speaker = "dev", expression = "neutral", text = "Priya--" },
        { speaker = "po", expression = "neutral", text = "No, let me finish. I push hard because I believe in this product. But I should have listened more." },
        { speaker = "qa", expression = "smirk", text = "(Is Priya... growing as a person?)" },
        { speaker = "po", expression = "neutral", text = "After the demo, I want a real retro. Real one." },
        { speaker = "pm", expression = "cheerful", text = "That's actually very mature, Priya." },

        -- The framing call
        { speaker = "pm", expression = "neutral", text = "Priya, you're the PO. How do we frame this for leadership?" },

        { speaker = "po", expression = "neutral", text = "(The frame is the product. I get to choose how leadership sees ten weeks of work.)",
            choices = {
                { text = "'Focused MVP.' Show what works. Sell the discipline. Less is more.", set = {polished_subset = true}, rel = {qa = 2, dev = 2, ux = 1} },
                { text = "'Ambitious vision.' Show everything. Let leadership see the full scope.", set = {showed_everything = true}, rel = {pm = -1, dev = -2, qa = -2} },
                { text = "'Honest progress.' Walk through what works, what doesn't, what's next.", set = {honest_demo = true}, rel = {pm = 1, dev = 1, qa = 1, ux = 1, arch = 1} },
            }
        },

        -- Polished
        { speaker = "po", expression = "neutral", text = "Focused MVP. Three flows that work. One story: discipline. Show me a slide deck I can pitch.", condition = "polished_subset" },
        { speaker = "dev", expression = "smiling", text = "Smart. Show strength, not surface area.", condition = "polished_subset" },

        -- Showed
        { speaker = "po", expression = "excited", text = "Show them everything! All of it! Vision wall to wall!", condition = "showed_everything" },
        { speaker = "qa", expression = "smirk", text = "Including the search that sorts by zodiac sign?", condition = "showed_everything" },
        { speaker = "dev", expression = "neutral", text = "It's alphabetical in Korean. I told you.", condition = "showed_everything" },

        -- Honest
        { speaker = "po", expression = "neutral", text = "Honest demo. 'Here's what works. Here's what doesn't. Here's why.' Leadership respects the truth.", condition = "honest_demo" },
        { speaker = "po", expression = "neutral", text = "(Six months of selling the vision. The hardest pitch is the one without spin.)", condition = "honest_demo" },

        -- Demo
        { speaker = "pm", expression = "neutral", text = "It's 2 PM. Leadership in the room. Here we go." },
        { speaker = "po", expression = "neutral", text = "Good afternoon everyone. Let me tell you about Project Chimera." },
        { speaker = "po", expression = "neutral", text = "(20 minutes of demo. 40 minutes of Q&A. It is always the Q&A.)" },

        -- End of day
        { speaker = "pm", expression = "cheerful", text = "We did it, team. Demo done." },
        { speaker = "dev", expression = "neutral", text = "How do we feel?" },
        { speaker = "po", expression = "neutral", text = "Ask me on Monday." },

        { text = "", goto = "day13" }
    }
}
