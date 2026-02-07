return {
    bg = "office_day",
    bgm = "theme",

    dialogue = {
        { speaker = "ux", expression = "neutral", text = "Thursday. Demo tomorrow. Everything is fine. Everything is absolutely fine." },

        -- Riley strikes
        { speaker = "qa", expression = "neutral", text = "So I've been testing the prototype." },
        { speaker = "pm", expression = "neutral", text = "Great! How's it looking?" },
        { speaker = "qa", expression = "neutral", text = "I have 23 bugs." },
        { speaker = "dev", expression = "neutral", text = "Twenty-three?!" },
        { speaker = "qa", expression = "neutral", text = "Want the highlights?" },
        { speaker = "pm", expression = "neutral", text = "Do we have a choice?" },

        -- The bug parade
        { speaker = "qa", expression = "neutral", text = "The content feed breaks if you scroll too fast. The profile page crashes if the user has no profile picture." },
        { speaker = "dev", expression = "neutral", text = "Works on my machine." },
        { speaker = "qa", expression = "neutral", text = "Your machine has a profile picture, Sam." },

        { speaker = "qa", expression = "neutral", text = "The search bar accepts HTML. I typed a script tag and the page said 'hello Riley.'" },
        { speaker = "dev", expression = "neutral", text = "...that's a security issue." },
        { speaker = "qa", expression = "neutral", text = "That's bug number 7. Want to hear about what happens when a user's name contains an emoji?" },

        { speaker = "arch", expression = "neutral", text = "This is what happens when we skip the architecture review. I had a whole—" },
        { speaker = "dev", expression = "neutral", text = "Diagram? We know, Casey. We know." },

        -- The blame game
        { speaker = "pm", expression = "neutral", text = "Okay, the demo is tomorrow. We need to triage these. Whose responsibility is this?" },

        { speaker = "ux", expression = "neutral", text = "The blame game begins. What do I do?",
            choices = {
                { text = "Some of these are design issues. I should have caught edge cases.", set = {took_ownership = true}, rel = {qa = 2, dev = 2, pm = 1} },
                { text = "The requirements were unclear. We all share responsibility.", set = {shared_blame = true}, rel = {pm = 1, qa = 1, po = 1} },
                { text = "We can't fix 23 bugs by tomorrow. Let's hide the broken parts.", set = {hid_bugs = true}, rel = {pm = 2, po = 1, qa = -2, dev = -1} },
            }
        },

        -- Ownership path
        { speaker = "dev", expression = "neutral", text = "Hold on — the profile crash isn't a design issue. That's on me.", condition = "took_ownership" },
        { speaker = "qa", expression = "neutral", text = "I appreciate you both owning it. Shall we triage together?", condition = "took_ownership" },
        { speaker = "ux", expression = "neutral", text = "(Taking responsibility. It's scary but it builds trust.)", condition = "took_ownership" },

        -- Shared blame path
        { speaker = "po", expression = "neutral", text = "I mean... I did change the requirements three times...", condition = "shared_blame" },
        { speaker = "dev", expression = "neutral", text = "Four times.", condition = "shared_blame" },
        { speaker = "pm", expression = "neutral", text = "Let's focus on fixing, not counting. What can we fix by tomorrow?", condition = "shared_blame" },

        -- Hide bugs path
        { speaker = "qa", expression = "neutral", text = "Hide them? That's your solution?", condition = "hid_bugs" },
        { speaker = "ux", expression = "neutral", text = "Not hide — scope the demo to the parts that work. We don't show search. We don't show profiles.", condition = "hid_bugs" },
        { speaker = "qa", expression = "neutral", text = "So we demo... the feed. Just the feed.", condition = "hid_bugs" },
        { speaker = "pm", expression = "neutral", text = "A focused demo. I like the spin.", condition = "hid_bugs" },

        -- End of day
        { speaker = "ux", expression = "neutral", text = "QA is the team's immune system. You don't appreciate it until something goes wrong." },
        { speaker = "ux", expression = "neutral", text = "And right now, everything is going wrong." },

        { text = "", goto = "day9" }
    }
}
