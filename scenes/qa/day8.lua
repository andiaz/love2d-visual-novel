return {
    title = "Day 8 -- Thursday",
    subtitle = "QA Strikes",
    narration = "Demo tomorrow. You ran the regression suite overnight. The numbers are bad. The numbers have always been bad. Today is the day everyone finds out.",

    bg = "office_day",
    bgm = "tension",

    dialogue = {
        { speaker = "qa", expression = "deadpan", text = "Thursday. Demo tomorrow. The regression suite ran overnight. The results are... informative." },

        { speaker = "qa", expression = "neutral", text = "So I've been testing the prototype." },
        { speaker = "pm", expression = "cheerful", text = "Great! How's it looking?" },
        { speaker = "qa", expression = "deadpan", text = "I have 23 bugs." },
        { speaker = "dev", expression = "frustrated", text = "TWENTY-THREE?!" },
        { speaker = "qa", expression = "smirk", text = "(This is my Super Bowl. I have been waiting two weeks for this Super Bowl.)" },

        { speaker = "qa", expression = "neutral", text = "Want the highlights?" },
        { speaker = "pm", expression = "neutral", text = "Do we have a choice?" },
        { speaker = "qa", expression = "neutral", text = "No." },

        { speaker = "qa", expression = "neutral", text = "Content feed breaks if you scroll too fast. Profile crashes if no profile picture." },
        { speaker = "dev", expression = "neutral", text = "Works on my machine." },
        { speaker = "qa", expression = "neutral", text = "Your machine has a profile picture, Sam." },

        { speaker = "qa", expression = "smirk", text = "Search bar accepts HTML. I typed a script tag and the page said 'hello Riley.'" },
        { speaker = "dev", expression = "frustrated", text = "...that's a security issue." },
        { speaker = "qa", expression = "neutral", text = "Bug 7. Want to hear what happens when a user's name contains an emoji?" },
        { speaker = "dev", expression = "frustrated", text = "Please don't." },
        { speaker = "qa", expression = "smirk", text = "It crashes. It crashes elegantly. It crashes with a beautiful stack trace I want to print on a poster." },

        { speaker = "arch", expression = "concerned", text = "This is what happens when we skip the architecture review--" },
        { speaker = "dev", expression = "neutral", text = "Diagram? We know, Casey. We know." },

        -- Triage
        { speaker = "pm", expression = "stressed", text = "Demo is tomorrow. Triage. Whose responsibility is this?" },

        { speaker = "qa", expression = "neutral", text = "(QA decides the tone now. I can be vindictive. I can be magnanimous. I can be professional. I get to pick.)",
            choices = {
                { text = "Take a slice of the blame. 'I should have raised these earlier.' Build the bridge.", set = {took_ownership = true}, rel = {dev = 2, ux = 1, pm = 1} },
                { text = "Spread it. 'Everyone shares this. The process broke, not the people.'", set = {shared_blame = true}, rel = {dev = 0, pm = 1, po = 1} },
                { text = "Hold the line. 'Cut the broken features from the demo. We show only what works.'", set = {hid_bugs = true}, rel = {pm = 1, dev = -1, qa = 1} },
            }
        },

        -- Ownership
        { speaker = "qa", expression = "neutral", text = "Some of these I should have caught earlier. I'll triage with Sam. Together.", condition = "took_ownership" },
        { speaker = "dev", expression = "smiling", text = "Riley, you absolutely don't need to take any of this. But thank you.", condition = "took_ownership" },
        { speaker = "qa", expression = "neutral", text = "(Owning a slice. Even when it's not yours. The bridge has to start somewhere.)", condition = "took_ownership" },

        -- Shared
        { speaker = "po", expression = "neutral", text = "I mean... I did change the requirements three times...", condition = "shared_blame" },
        { speaker = "dev", expression = "neutral", text = "Four times.", condition = "shared_blame" },
        { speaker = "qa", expression = "neutral", text = "Nobody's getting fired today. The process broke. Let's fix the process and the bugs.", condition = "shared_blame" },

        -- Hold the line
        { speaker = "qa", expression = "deadpan", text = "Cut search. Cut profiles. Demo the feed and the create flow. The rest is on fire and we're not putting it on stage.", condition = "hid_bugs" },
        { speaker = "pm", expression = "neutral", text = "A focused demo. I like the spin.", condition = "hid_bugs" },
        { speaker = "qa", expression = "deadpan", text = "(That's not a spin. That's me protecting leadership from the truth I'm too tired to fight today.)", condition = "hid_bugs" },

        -- End
        { speaker = "qa", expression = "deadpan", text = "(Day 8. The regression suite is now 240 cases. 23 are red. The team is finally seeing the matrix.)" },

        { text = "", goto = "day9" }
    }
}
