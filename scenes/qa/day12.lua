return {
    title = "Day 12 -- Friday",
    subtitle = "Demo Day",
    narration = "Five hours to lock the build. Leadership at 2 PM. You have a list of buttons not to click. The list is the demo plan now.",

    bg = "meeting_room",
    bgm = "tension",

    dialogue = {
        { speaker = "qa", expression = "deadpan", text = "Friday morning. Demo day. The real one. I have a list of 23 buttons not to click. It is laminated." },

        { speaker = "pm", expression = "stressed", text = "Demo at 2 PM. Five hours to finalize." },
        { speaker = "dev", expression = "neutral", text = "Last night's build is stable. Don't touch anything." },
        { speaker = "qa", expression = "smirk", text = "I have prepared a demo flowchart. It says 'do not click here, here, here, here, here, here, or here.' I have starred the worst three." },
        { speaker = "arch", expression = "neutral", text = "Performance fix is in. We can handle 10 concurrent users." },
        { speaker = "dev", expression = "smiling", text = "Ten whole users. The future of enterprise software." },

        { speaker = "po", expression = "neutral", text = "Team? I want to say... I know I've been a lot." },
        { speaker = "dev", expression = "neutral", text = "Priya--" },
        { speaker = "po", expression = "neutral", text = "No, let me finish. I push hard because I believe in this. But I should have listened more." },
        { speaker = "qa", expression = "smirk", text = "(Is Priya... growing as a person?)" },
        { speaker = "po", expression = "neutral", text = "After the demo, I want a real retrospective. The kind we don't usually do." },
        { speaker = "qa", expression = "smirk", text = "(I am cautiously optimistic. I will remain cautiously optimistic until proven otherwise. Which will probably be Tuesday.)" },

        -- Framing
        { speaker = "pm", expression = "neutral", text = "Riley, you ran the regression. You know the build better than anyone. How should we frame this?" },
        { speaker = "qa", expression = "deadpan", text = "(QA gets to frame the demo. Did somebody die?)" },

        { speaker = "qa", expression = "neutral", text = "(Three options. Each one shapes how leadership remembers ten weeks of work.)",
            choices = {
                { text = "'Polished MVP.' Demo only the green flows. Don't open the broken stuff. At all.", set = {polished_subset = true}, rel = {dev = 2, ux = 2, pm = 1} },
                { text = "'Full vision.' Show everything. Include the bugs. Let leadership see what 'unscoped' looks like.", set = {showed_everything = true}, rel = {po = 2, dev = -1, qa = -1} },
                { text = "'Honest progress.' Walk through what works, what doesn't, and what's in the bug log.", set = {honest_demo = true}, rel = {pm = 1, dev = 1, ux = 1, po = 1, arch = 1} },
            }
        },

        -- Polished
        { speaker = "qa", expression = "neutral", text = "Three flows. Green only. I'll sit at the keyboard. Anyone tries to click something else, I cough loudly.", condition = "polished_subset" },
        { speaker = "dev", expression = "smiling", text = "I love this plan.", condition = "polished_subset" },

        -- Showed
        { speaker = "qa", expression = "smirk", text = "Show them everything. Let them see the search that sorts by zodiac sign. It's almost art at this point.", condition = "showed_everything" },
        { speaker = "po", expression = "excited", text = "YES! Show the vision!", condition = "showed_everything" },
        { speaker = "dev", expression = "neutral", text = "It's alphabetical in Korean. I told you.", condition = "showed_everything" },

        -- Honest
        { speaker = "qa", expression = "neutral", text = "Honest demo. 'Here's what works. Here's what doesn't. Here's the bug log.' I will read three bug numbers out loud. I will smile while doing it.", condition = "honest_demo" },
        { speaker = "pm", expression = "neutral", text = "Radical transparency. Leadership respects honesty.", condition = "honest_demo" },

        -- Demo
        { speaker = "pm", expression = "neutral", text = "It's 2 PM. Leadership in the room. Here we go." },
        { speaker = "qa", expression = "deadpan", text = "(20 minutes of demo. 40 minutes of Q&A. It is always the Q&A. I have prepared answers to 11 questions. Two of them are about the search.)" },

        -- End
        { speaker = "pm", expression = "cheerful", text = "We did it, team. Demo done." },
        { speaker = "dev", expression = "neutral", text = "How do we feel?" },
        { speaker = "qa", expression = "deadpan", text = "Ask me on Monday. Right now I want to file 12 more bugs while the build is fresh in my head." },

        { text = "", goto = "day13" }
    }
}
