return {
    title = "Day 8 -- Thursday",
    subtitle = "QA Strikes Back",
    narration = "Demo tomorrow. Riley has been testing your code. Riley has notes.",

    bg = "office_day",
    bgm = "tension",

    dialogue = {
        { speaker = "dev", expression = "tired", text = "Thursday. Demo tomorrow. Everything is fine. Everything is absolutely fine." },

        { speaker = "qa", expression = "neutral", text = "So I've been testing the build." },
        { speaker = "pm", expression = "cheerful", text = "Great! How's it looking?" },
        { speaker = "qa", expression = "deadpan", text = "I have 23 bugs." },
        { speaker = "dev", expression = "frustrated", text = "TWENTY-THREE?!" },
        { speaker = "qa", expression = "neutral", text = "Want the highlights?" },
        { speaker = "dev", expression = "tired", text = "(I do not. But I will get them anyway.)" },

        -- The bug parade
        { speaker = "qa", expression = "neutral", text = "The content feed breaks if you scroll too fast. The profile page crashes if the user has no profile picture." },
        { speaker = "dev", expression = "neutral", text = "Works on my machine." },
        { speaker = "qa", expression = "neutral", text = "Your machine has a profile picture, Sam." },
        { speaker = "dev", expression = "frustrated", text = "(She's right. Of course she's right. I never test the empty state because I always have data.)" },

        { speaker = "qa", expression = "smirk", text = "The search bar accepts HTML. I typed a script tag and the page said 'hello Riley.'" },
        { speaker = "dev", expression = "frustrated", text = "...that's an XSS vulnerability." },
        { speaker = "qa", expression = "neutral", text = "That's bug number 7. Want to hear what happens when a user's name contains an emoji?" },
        { speaker = "dev", expression = "tired", text = "(I do not.)" },

        { speaker = "arch", expression = "concerned", text = "This is what happens when we skip the architecture review. I had a whole--" },
        { speaker = "dev", expression = "neutral", text = "Diagram? We know, Casey. We know." },

        -- Triage
        { speaker = "pm", expression = "stressed", text = "Demo is tomorrow. We need to triage. Whose responsibility is this?" },

        { speaker = "dev", expression = "neutral", text = "(Three honest answers. None of them feel good.)",
            choices = {
                { text = "Most of these are mine. I should have written tests. I'll own it.", set = {took_ownership = true}, rel = {qa = 2, ux = 1, pm = 1} },
                { text = "Requirements were a moving target. We all share this.", set = {shared_blame = true}, rel = {pm = 1, qa = 1, po = 1} },
                { text = "We can't fix 23 bugs by tomorrow. Let's scope the demo around the parts that work.", set = {hid_bugs = true}, rel = {pm = 2, po = 1, qa = -2} },
            }
        },

        -- Ownership
        { speaker = "dev", expression = "neutral", text = "The XSS, the empty state crash, the scroll bug -- those are all mine. I'll fix them tonight.", condition = "took_ownership" },
        { speaker = "qa", expression = "neutral", text = "I appreciate that. Let me triage with you. We can knock out the worst ones together.", condition = "took_ownership" },
        { speaker = "dev", expression = "tired", text = "(Owning it hurts. Not owning it hurts more, eventually.)", condition = "took_ownership" },

        -- Shared
        { speaker = "po", expression = "neutral", text = "I mean... I did change the requirements three times...", condition = "shared_blame" },
        { speaker = "dev", expression = "neutral", text = "Four times.", condition = "shared_blame" },
        { speaker = "pm", expression = "neutral", text = "Let's focus on fixing, not counting. What can we ship by tomorrow?", condition = "shared_blame" },

        -- Hide
        { speaker = "qa", expression = "deadpan", text = "Hide them? That's your solution?", condition = "hid_bugs" },
        { speaker = "dev", expression = "neutral", text = "Not hide. Scope. We don't show search. We don't show profiles. We demo the feed and the create flow.", condition = "hid_bugs" },
        { speaker = "qa", expression = "deadpan", text = "So we demo... the feed. Just the feed.", condition = "hid_bugs" },
        { speaker = "pm", expression = "neutral", text = "A focused demo. I like the spin.", condition = "hid_bugs" },

        -- End of day
        { speaker = "dev", expression = "tired", text = "(QA is the team's immune system. You don't appreciate it until something goes wrong.)" },
        { speaker = "dev", expression = "tired", text = "(Right now, my code is the something.)" },

        { text = "", goto = "day9" }
    }
}
