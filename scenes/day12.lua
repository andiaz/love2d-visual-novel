return {
    title = "Day 12 — Friday",
    subtitle = "Demo Day",
    narration = "This is it. The final demo. Five hours to prepare. Leadership is waiting.",

    bg = "office_evening",
    bgm = "theme",

    dialogue = {
        { speaker = "ux", expression = "neutral", text = "Friday morning. Demo day. The real one this time." },

        -- Morning prep
        { speaker = "pm", expression = "neutral", text = "Okay team. Demo at 2 PM. That gives us five hours to finalize." },
        { speaker = "dev", expression = "neutral", text = "The build from last night is stable. Don't touch anything." },
        { speaker = "qa", expression = "neutral", text = "I've prepared a list of things NOT to click during the demo. It's... extensive." },
        { speaker = "arch", expression = "neutral", text = "The performance fix is in. We can handle up to 10 concurrent users now." },
        { speaker = "dev", expression = "neutral", text = "Ten whole users. The future of enterprise software." },

        -- Priya has one more thing
        { speaker = "po", expression = "neutral", text = "Team? I just want to say... I know I've been a lot." },
        { speaker = "dev", expression = "neutral", text = "Priya—" },
        { speaker = "po", expression = "neutral", text = "No, let me finish. I push hard because I believe in this product. But I should have listened more." },
        { speaker = "qa", expression = "neutral", text = "(Is Priya... growing as a person?)" },
        { speaker = "po", expression = "neutral", text = "After the demo, I want to do a proper retrospective. A real one." },
        { speaker = "pm", expression = "neutral", text = "That's... actually very mature, Priya." },

        -- The demo prep choice
        { speaker = "pm", expression = "neutral", text = "Alex, you're leading the demo walkthrough. How do you want to present this?" },

        { speaker = "ux", expression = "neutral", text = "Last design decision. How do we frame Project Chimera?",
            choices = {
                { text = "Show the polished core. Less is more.", set = {polished_subset = true}, rel = {qa = 2, dev = 2, pm = 1} },
                { text = "Show everything, warts and all. Demonstrate scope.", set = {showed_everything = true}, rel = {po = 2, pm = -1, qa = -2} },
                { text = "Be honest about where we are and where we're going.", set = {honest_demo = true}, rel = {pm = 1, dev = 1, qa = 1, po = 1, arch = 1} },
            }
        },

        -- Polished subset
        { speaker = "dev", expression = "neutral", text = "Smart. Show strength, not surface area.", condition = "polished_subset" },
        { speaker = "qa", expression = "neutral", text = "I approve. The parts that work actually work well.", condition = "polished_subset" },

        -- Show everything
        { speaker = "po", expression = "neutral", text = "Yes! Show them the vision! All of it!", condition = "showed_everything" },
        { speaker = "qa", expression = "neutral", text = "Including the search that sorts by zodiac sign?", condition = "showed_everything" },
        { speaker = "dev", expression = "neutral", text = "It's alphabetical in Korean. I told you.", condition = "showed_everything" },

        -- Honest demo
        { speaker = "pm", expression = "neutral", text = "Radical transparency. I like it. Leadership respects honesty.", condition = "honest_demo" },
        { speaker = "ux", expression = "neutral", text = "Here's what we built. Here's what works. Here's what needs more time.", condition = "honest_demo" },
        { speaker = "dev", expression = "neutral", text = "Refreshing. Let's do it.", condition = "honest_demo" },

        -- The demo (brief montage)
        { speaker = "pm", expression = "neutral", text = "It's 2 PM. Leadership is in the room. Here we go." },
        { speaker = "ux", expression = "neutral", text = "Good afternoon everyone. Let me walk you through Project Chimera." },
        { speaker = "ux", expression = "neutral", text = "..." },
        { speaker = "ux", expression = "neutral", text = "(The demo takes 20 minutes. The Q&A takes 40. It's always the Q&A.)" },

        -- End of day
        { speaker = "pm", expression = "neutral", text = "We did it, team. The demo is done." },
        { speaker = "dev", expression = "neutral", text = "How do we feel?" },
        { speaker = "ux", expression = "neutral", text = "Ask me on Monday." },

        { text = "", goto = "day13" }
    }
}
