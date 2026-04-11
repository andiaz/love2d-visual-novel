return {
    title = "Day 12 -- Friday",
    subtitle = "Demo Day",
    narration = "This is it. Five hours to lock the build. Leadership is waiting. Don't push to main.",

    bg = "meeting_room",
    bgm = "tension",

    dialogue = {
        { speaker = "dev", expression = "tired", text = "Friday morning. Demo day. The real one this time. The build is frozen. The build had better STAY frozen." },

        { speaker = "pm", expression = "stressed", text = "Demo at 2 PM. Five hours to finalize." },
        { speaker = "dev", expression = "neutral", text = "Last night's build is stable. Nobody touches it. Nobody pushes to main. Nobody opens a PR. Nobody breathes near the deploy script." },
        { speaker = "qa", expression = "smirk", text = "I have a list of buttons NOT to click during the demo. It's extensive." },
        { speaker = "arch", expression = "neutral", text = "The performance fix is in. We can handle 10 concurrent users." },
        { speaker = "dev", expression = "smiling", text = "Ten whole users. The future of enterprise software." },

        { speaker = "po", expression = "neutral", text = "Team? I just want to say... I know I've been a lot." },
        { speaker = "dev", expression = "neutral", text = "Priya--" },
        { speaker = "po", expression = "neutral", text = "No, let me finish. I push hard because I believe in this product. But I should have listened more." },
        { speaker = "qa", expression = "smirk", text = "(Is Priya... growing?)" },
        { speaker = "po", expression = "neutral", text = "After the demo, real retro. Real one." },
        { speaker = "pm", expression = "cheerful", text = "That's actually very mature, Priya." },

        -- The framing choice
        { speaker = "pm", expression = "neutral", text = "Sam, you're walking through the technical side. How do we frame this?" },

        { speaker = "dev", expression = "tired", text = "(Last call. How do I represent ten weeks of compromise?)",
            choices = {
                { text = "Show the parts that work. Don't even open the broken stuff.", set = {polished_subset = true}, rel = {qa = 2, ux = 2, pm = 1} },
                { text = "Show the whole thing. Let leadership see the full ambition.", set = {showed_everything = true}, rel = {po = 2, pm = -1, qa = -2} },
                { text = "Be honest. Here's what works. Here's what doesn't. Here's why.", set = {honest_demo = true}, rel = {pm = 1, ux = 1, qa = 1, po = 1, arch = 1} },
            }
        },

        -- Polished
        { speaker = "ux", expression = "excited", text = "Smart. Strength, not surface area.", condition = "polished_subset" },
        { speaker = "qa", expression = "neutral", text = "I approve. The parts that work actually work well.", condition = "polished_subset" },

        -- Show all
        { speaker = "po", expression = "excited", text = "YES! Show them everything!", condition = "showed_everything" },
        { speaker = "qa", expression = "smirk", text = "Including the search that sorts by zodiac sign?", condition = "showed_everything" },
        { speaker = "dev", expression = "neutral", text = "It's alphabetical in Korean. I told you.", condition = "showed_everything" },

        -- Honest
        { speaker = "pm", expression = "neutral", text = "Radical transparency. Leadership respects honesty.", condition = "honest_demo" },
        { speaker = "dev", expression = "neutral", text = "Here's what we built. Here's what works. Here's what needs more time. No spin.", condition = "honest_demo" },

        -- The demo
        { speaker = "pm", expression = "neutral", text = "It's 2 PM. Leadership in the room. Here we go." },
        { speaker = "dev", expression = "neutral", text = "Good afternoon. Let me walk you through the technical side of Project Chimera." },
        { speaker = "dev", expression = "neutral", text = "..." },
        { speaker = "dev", expression = "tired", text = "(20 minutes of demo. 40 minutes of Q&A. It is always the Q&A.)" },

        -- End of day
        { speaker = "pm", expression = "cheerful", text = "We did it, team. Demo is done." },
        { speaker = "ux", expression = "neutral", text = "How do we feel?" },
        { speaker = "dev", expression = "tired", text = "Ask me on Monday. Right now I just want to delete every Slack notification I have." },

        { text = "", goto = "day13" }
    }
}
