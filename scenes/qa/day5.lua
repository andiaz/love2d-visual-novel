return {
    title = "Day 5 -- Monday",
    subtitle = "The Scope Creep",
    narration = "Monday. New sprint. Priya had a thought over the weekend. Your test surface is about to grow.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "qa", expression = "deadpan", text = "Monday. Sprint two. The dread is empirical. Friday Slack volume from Priya: 47 messages. None about bugs." },
        { speaker = "pm", expression = "cheerful", text = "Quick standup! 15 minutes, I promise!" },
        { speaker = "qa", expression = "deadpan", text = "(Liar.)" },

        { speaker = "po", expression = "excited", text = "So, I had a thought over the weekend..." },
        { speaker = "qa", expression = "deadpan", text = "(There it is. The scope alarm.)" },
        { speaker = "po", expression = "excited", text = "What if Chimera also had real-time collaboration? Like Google Docs but in the knowledge base!" },
        { speaker = "arch", expression = "concerned", text = "Real-time collab is an entire product. Operational transforms, conflict resolution--" },
        { speaker = "po", expression = "defensive", text = "Can we just add it? How hard can it be?" },
        { speaker = "dev", expression = "frustrated", text = "'Can we just.' Three words that have launched a thousand rewrites." },

        { speaker = "qa", expression = "deadpan", text = "(My test surface just doubled. Concurrent edit cases. Conflict resolution edge cases. Network partition edge cases. The matrix is screaming.)" },

        { speaker = "pm", expression = "stressed", text = "Riley, you've been quiet. Thoughts?" },

        { speaker = "qa", expression = "neutral", text = "(Three honest answers. None of them feel safe.)",
            choices = {
                { text = "Sure, add it. I'll add 200 test cases to the matrix. We'll find out together how it breaks.", set = {absorbed_scope = true}, rel = {po = 1, dev = -1, pm = 1} },
                { text = "Block it. Real-time collab will introduce 50 race conditions and we have eight days.", set = {fought_scope = true}, rel = {dev = 2, arch = 2, po = -2} },
                { text = "Comments only. Async. Three test cases instead of two hundred. Same vibe.", set = {compromised_scope = true}, rel = {dev = 1, arch = 1, pm = 2, po = 0} },
            }
        },

        -- Absorbed
        { speaker = "qa", expression = "deadpan", text = "Fine. I'll add 200 test cases. The matrix is now a wall.", condition = "absorbed_scope" },
        { speaker = "po", expression = "excited", text = "Yes! That's the spirit!", condition = "absorbed_scope" },
        { speaker = "qa", expression = "deadpan", text = "(That's not spirit. That's surrender.)", condition = "absorbed_scope" },

        -- Fought
        { speaker = "qa", expression = "deadpan", text = "Real-time collab introduces 50 race conditions in week one. We have eight days. The math is against us.", condition = "fought_scope" },
        { speaker = "po", expression = "defensive", text = "But--", condition = "fought_scope" },
        { speaker = "qa", expression = "deadpan", text = "Priya. I will tell you the bugs in advance. There will be 23. They will all be variations of 'two users edited at the same time and one of them lost their work.'", condition = "fought_scope" },
        { speaker = "dev", expression = "smiling", text = "Riley wins.", condition = "fought_scope" },

        -- Compromise
        { speaker = "qa", expression = "neutral", text = "Comments. Async. Three test cases. Same story for the deck. One percent of the regression cost.", condition = "compromised_scope" },
        { speaker = "arch", expression = "neutral", text = "Comments are reasonable. Infrastructure is manageable.", condition = "compromised_scope" },
        { speaker = "dev", expression = "neutral", text = "I can build a comment system.", condition = "compromised_scope" },
        { speaker = "po", expression = "neutral", text = "Can we at least add emoji reactions?", condition = "compromised_scope" },
        { speaker = "qa", expression = "smirk", text = "Six test cases.", condition = "compromised_scope" },

        -- End
        { speaker = "pm", expression = "neutral", text = "Great standup everyone! That was only... 42 minutes." },
        { speaker = "qa", expression = "deadpan", text = "(Standup duration tracker, day 5: variance now 180 percent over promise.)" },

        { text = "", goto = "day6" }
    }
}
