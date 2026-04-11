return {
    title = "Day 8 -- Thursday",
    subtitle = "QA Strikes",
    narration = "Riley has 23 bugs. Eight of them are architectural. None of them are surprising. You saw them coming. You drew them on the whiteboard. Nobody read the whiteboard.",

    bg = "office_day",
    bgm = "tension",

    dialogue = {
        { speaker = "arch", expression = "concerned", text = "Thursday. Demo tomorrow. Riley has The List. The List has been waiting." },

        { speaker = "qa", expression = "neutral", text = "So I've been testing the prototype." },
        { speaker = "pm", expression = "cheerful", text = "Great! How's it looking?" },
        { speaker = "qa", expression = "deadpan", text = "I have 23 bugs." },
        { speaker = "dev", expression = "frustrated", text = "Twenty-three?!" },
        { speaker = "arch", expression = "concerned", text = "(I drew the diagram for at least 8 of those. They were in the architecture doc nobody opened.)" },

        { speaker = "qa", expression = "neutral", text = "Content feed breaks if you scroll too fast. Profile crashes if no profile picture." },
        { speaker = "dev", expression = "neutral", text = "Works on my machine." },
        { speaker = "qa", expression = "neutral", text = "Your machine has a profile picture, Sam." },

        { speaker = "qa", expression = "smirk", text = "Search bar accepts HTML. I typed a script tag and the page said 'hello Riley.'" },
        { speaker = "dev", expression = "frustrated", text = "...that's a security issue." },
        { speaker = "arch", expression = "concerned", text = "(Input validation. I had a whole section in the doc. Section 4.2. Page 11. Nobody got past the table of contents.)" },

        { speaker = "arch", expression = "concerned", text = "This is what happens when we skip the architecture review. I had a whole--" },
        { speaker = "dev", expression = "neutral", text = "Diagram? We know, Casey. We know." },
        { speaker = "arch", expression = "concerned", text = "(They know. They knew. The knowing didn't help.)" },

        -- Triage
        { speaker = "pm", expression = "stressed", text = "Demo is tomorrow. Triage. Whose responsibility is this?" },

        { speaker = "arch", expression = "neutral", text = "(Three options. As the architect, I have to model the response I want everyone else to take.)",
            choices = {
                { text = "Take a slice. 'I called these out but didn't push hard enough. I should have pulled rank.'", set = {took_ownership = true}, rel = {dev = 2, qa = 2, ux = 1} },
                { text = "Spread it. 'The process broke. The doc was there. We all share this.'", set = {shared_blame = true}, rel = {dev = 0, qa = 1, pm = 1} },
                { text = "Scope down. 'Cut the broken features. We demo only the parts the architecture actually supports.'", set = {hid_bugs = true}, rel = {dev = -1, qa = -2, pm = 1} },
            }
        },

        -- Ownership
        { speaker = "arch", expression = "concerned", text = "I called these out in the doc. I didn't push hard enough. I should have pulled rank. Riley, can we triage together?", condition = "took_ownership" },
        { speaker = "qa", expression = "neutral", text = "Casey. Yes. Let's go.", condition = "took_ownership" },
        { speaker = "dev", expression = "smiling", text = "Did Casey just take responsibility?", condition = "took_ownership" },
        { speaker = "arch", expression = "neutral", text = "(Owning the failure is harder than designing the system. I am learning this in real time.)", condition = "took_ownership" },

        -- Shared
        { speaker = "po", expression = "neutral", text = "I mean... I did change the requirements three times...", condition = "shared_blame" },
        { speaker = "dev", expression = "neutral", text = "Four times.", condition = "shared_blame" },
        { speaker = "arch", expression = "concerned", text = "The doc was there. We all share this. Let's fix what we can, and improve the process for next sprint.", condition = "shared_blame" },

        -- Hide
        { speaker = "arch", expression = "concerned", text = "Cut the broken features. Demo only what the architecture actually supports. We don't show search. We don't show profiles.", condition = "hid_bugs" },
        { speaker = "qa", expression = "deadpan", text = "Casey is reframing 'we have bugs' as 'we have a focused architecture.' That's almost impressive.", condition = "hid_bugs" },
        { speaker = "arch", expression = "concerned", text = "(I am doing the architect thing where the failure becomes a virtue. I am ashamed and effective at the same time.)", condition = "hid_bugs" },

        -- End
        { speaker = "arch", expression = "concerned", text = "(QA is the team's immune system. The architect is the team's blood pressure. Today, mine is high.)" },

        { text = "", goto = "day9" }
    }
}
