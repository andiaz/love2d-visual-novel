return {
    title = "Day 8 -- Thursday",
    subtitle = "QA Strikes",
    narration = "Demo tomorrow. Riley has a list. The list is long. Some of those bugs are because of features YOU added.",

    bg = "office_day",
    bgm = "tension",

    dialogue = {
        { speaker = "po", expression = "excited", text = "Thursday. Demo tomorrow. The vision is almost real." },

        { speaker = "qa", expression = "neutral", text = "So I've been testing the prototype." },
        { speaker = "pm", expression = "cheerful", text = "Great! How's it looking?" },
        { speaker = "qa", expression = "deadpan", text = "I have 23 bugs." },
        { speaker = "dev", expression = "frustrated", text = "Twenty-three?!" },
        { speaker = "po", expression = "defensive", text = "(Twenty-three bugs. The PO knows: most of them will trace back to scope changes I made.)" },

        { speaker = "qa", expression = "neutral", text = "The content feed breaks if you scroll too fast. Profile crashes if no profile picture." },
        { speaker = "dev", expression = "neutral", text = "Works on my machine." },
        { speaker = "qa", expression = "neutral", text = "Your machine has a profile picture, Sam." },

        { speaker = "qa", expression = "smirk", text = "Search bar accepts HTML. I typed a script tag and the page said 'hello Riley.'" },
        { speaker = "dev", expression = "frustrated", text = "...that's a security issue." },

        { speaker = "qa", expression = "neutral", text = "And the comment threads I added last sprint -- they break if a parent comment is deleted." },
        { speaker = "po", expression = "defensive", text = "(That's mine. Comments were my compromise. The bug is mine.)" },

        -- Triage
        { speaker = "pm", expression = "stressed", text = "Demo is tomorrow. We need to triage. Whose responsibility is this?" },

        { speaker = "po", expression = "neutral", text = "(Three options. None of them feel like product strategy. All of them feel like adulthood.)",
            choices = {
                { text = "Step up. 'A lot of these are because I changed the requirements. I own it.'", set = {took_ownership = true}, rel = {dev = 2, qa = 2, pm = 1} },
                { text = "Spread it. 'We all share this. The requirements were a moving target.'", set = {shared_blame = true}, rel = {dev = 0, qa = 1, pm = 1} },
                { text = "Scope down. 'Cut the broken features from the demo. Show only what works.'", set = {hid_bugs = true}, rel = {pm = 1, dev = -1, qa = -2} },
            }
        },

        -- Ownership
        { speaker = "po", expression = "neutral", text = "I changed requirements four times. Eight of these bugs are direct consequences. That's on me. Riley, can we triage together?", condition = "took_ownership" },
        { speaker = "qa", expression = "neutral", text = "...yes. Yes, we can. Thank you, Priya.", condition = "took_ownership" },
        { speaker = "dev", expression = "smiling", text = "(Did Priya just OWN something?)", condition = "took_ownership" },
        { speaker = "po", expression = "neutral", text = "(That cost me. It also bought me something. I just don't know what yet.)", condition = "took_ownership" },

        -- Shared
        { speaker = "po", expression = "neutral", text = "I mean... I did change the requirements three times...", condition = "shared_blame" },
        { speaker = "dev", expression = "neutral", text = "Four times.", condition = "shared_blame" },
        { speaker = "pm", expression = "neutral", text = "Let's focus on fixing, not counting. What can we ship by tomorrow?", condition = "shared_blame" },

        -- Hide
        { speaker = "po", expression = "neutral", text = "Cut the broken features. Demo only the parts that work. Spin it as 'focus.'", condition = "hid_bugs" },
        { speaker = "qa", expression = "deadpan", text = "Including the comment threads I just spent a week testing?", condition = "hid_bugs" },
        { speaker = "po", expression = "defensive", text = "(I'm sorry, Riley.)", condition = "hid_bugs" },
        { speaker = "pm", expression = "neutral", text = "A focused demo. I like the spin.", condition = "hid_bugs" },

        -- End of day
        { speaker = "po", expression = "neutral", text = "(QA. The conscience of the project. I have spent a week not listening.)" },

        { text = "", goto = "day9" }
    }
}
