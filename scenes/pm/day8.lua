return {
    title = "Day 8 -- Thursday",
    subtitle = "QA Strikes",
    narration = "Demo tomorrow. Riley walks into your standup with a clipboard. There is a bug count on the clipboard. The number is large.",

    bg = "office_day",
    bgm = "tension",

    dialogue = {
        { speaker = "pm", expression = "stressed", text = "Thursday. Demo tomorrow. The Jira board has more open tickets than yesterday." },

        { speaker = "qa", expression = "neutral", text = "So I've been testing the prototype." },
        { speaker = "pm", expression = "cheerful", text = "Great! How's it looking?" },
        { speaker = "qa", expression = "deadpan", text = "I have 23 bugs." },
        { speaker = "dev", expression = "frustrated", text = "Twenty-three?!" },
        { speaker = "pm", expression = "stressed", text = "(Risk register: catastrophic. Add 23 entries.)" },

        { speaker = "qa", expression = "neutral", text = "Want the highlights?" },
        { speaker = "pm", expression = "stressed", text = "Do we have a choice?" },

        { speaker = "qa", expression = "neutral", text = "Content feed breaks if you scroll too fast. Profile crashes if no profile picture." },
        { speaker = "dev", expression = "neutral", text = "Works on my machine." },
        { speaker = "qa", expression = "neutral", text = "Your machine has a profile picture, Sam." },

        { speaker = "qa", expression = "smirk", text = "Search bar accepts HTML. I typed a script tag and the page said 'hello Riley.'" },
        { speaker = "dev", expression = "frustrated", text = "...that's a security issue." },
        { speaker = "pm", expression = "stressed", text = "(Bug 7 is an XSS. Director's going to ask. Director's going to find out.)" },

        { speaker = "arch", expression = "concerned", text = "This is what happens when we skip the architecture review. I had a whole--" },
        { speaker = "dev", expression = "neutral", text = "Diagram? We know, Casey. We know." },

        -- Triage time
        { speaker = "pm", expression = "stressed", text = "Demo is tomorrow. Triage. Whose responsibility is this?" },
        { speaker = "pm", expression = "stressed", text = "(How I frame this sets the tone for the rest of the project.)" },

        { speaker = "pm", expression = "neutral", text = "(Three options. Each one is a different kind of hard.)",
            choices = {
                { text = "Step up: 'This is on the team, but I own the process. I should have caught it.'", set = {took_ownership = true}, rel = {dev = 2, qa = 2, ux = 1} },
                { text = "Distribute: 'Requirements were unclear. We all share this.'", set = {shared_blame = true}, rel = {qa = 1, po = 1, dev = 0} },
                { text = "Scope down: 'We can't fix 23 bugs. We hide the broken parts and demo the rest.'", set = {hid_bugs = true}, rel = {po = 1, qa = -2, dev = -1} },
            }
        },

        -- Ownership
        { speaker = "pm", expression = "neutral", text = "I should have made sure QA was in the loop earlier. That's a process failure. I own that.", condition = "took_ownership" },
        { speaker = "qa", expression = "neutral", text = "Appreciated, Jordan. Let's triage together.", condition = "took_ownership" },
        { speaker = "dev", expression = "smiling", text = "Respect. Let's go.", condition = "took_ownership" },

        -- Shared
        { speaker = "po", expression = "neutral", text = "I mean... I did change the requirements three times...", condition = "shared_blame" },
        { speaker = "dev", expression = "neutral", text = "Four times.", condition = "shared_blame" },
        { speaker = "pm", expression = "neutral", text = "Let's focus on fixing, not counting. What can we ship by tomorrow?", condition = "shared_blame" },

        -- Hide
        { speaker = "qa", expression = "deadpan", text = "Hide them? That's your solution?", condition = "hid_bugs" },
        { speaker = "pm", expression = "neutral", text = "Not hide. Scope. We don't show search. We don't show profiles. We demo the feed.", condition = "hid_bugs" },
        { speaker = "qa", expression = "deadpan", text = "Is everyone going to remember not to click those features tomorrow?", condition = "hid_bugs" },
        { speaker = "pm", expression = "stressed", text = "I'll write a demo script. Step by step. We rehearse it.", condition = "hid_bugs" },

        -- End of day
        { speaker = "pm", expression = "stressed", text = "(QA is the team's immune system. I just learned this for the 47th time.)" },

        { text = "", goto = "day9" }
    }
}
