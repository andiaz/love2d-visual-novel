return {
    title = "Day 5 — Monday",
    subtitle = "The Scope Creep",
    narration = "New week. New sprint. And Priya had a thought over the weekend...",

    bg = "office_day",
    bgm = "theme",

    dialogue = {
        { speaker = "ux", expression = "neutral", text = "Monday again. The start of sprint two. What could go wrong?" },
        { speaker = "pm", expression = "neutral", text = "Quick standup! 15 minutes, I promise." },
        { speaker = "dev", expression = "neutral", text = "(It won't be 15 minutes.)" },

        -- The dreaded Monday message
        { speaker = "po", expression = "neutral", text = "So, I had a thought over the weekend..." },
        { speaker = "dev", expression = "neutral", text = "(There it is.)" },
        { speaker = "po", expression = "neutral", text = "What if Chimera also had a real-time collaboration feature? Like Google Docs but within the knowledge base!" },
        { speaker = "arch", expression = "neutral", text = "Real-time collaboration? That's an entire product by itself. You're talking about operational transforms, conflict resolution—" },
        { speaker = "po", expression = "neutral", text = "Can we just add it? How hard can it be?" },
        { speaker = "dev", expression = "neutral", text = "'Can we just.' Three words that have launched a thousand rewrites." },

        -- Jordan tries to mediate
        { speaker = "pm", expression = "neutral", text = "Okay, let's not panic. Priya, is this a must-have for the demo?" },
        { speaker = "po", expression = "neutral", text = "Leadership mentioned 'collaboration' last week. I just want to make sure we're covered." },
        { speaker = "pm", expression = "neutral", text = "Alex, what do you think? This is a big scope change." },

        { speaker = "ux", expression = "neutral", text = "Every fiber of my being wants to say no.",
            choices = {
                { text = "We can probably mock it up for the demo.", set = {absorbed_scope = true}, rel = {po = 2, pm = 1, dev = -2, qa = -1} },
                { text = "No. We're already behind. This would sink us.", set = {fought_scope = true}, rel = {po = -2, dev = 2, qa = 1, pm = -1} },
                { text = "What if we do a lightweight version? Commenting instead of full co-editing.", set = {compromised_scope = true}, rel = {po = 1, dev = 1, pm = 2, arch = 1} },
            }
        },

        -- Absorbed path
        { speaker = "po", expression = "neutral", text = "Amazing! I knew you'd get it!", condition = "absorbed_scope" },
        { speaker = "dev", expression = "neutral", text = "Alex. That's three more screens, real-time sync, and we don't even have a backend yet.", condition = "absorbed_scope" },
        { speaker = "ux", expression = "neutral", text = "(I know. I know. But saying yes was easier than the argument.)", condition = "absorbed_scope" },

        -- Fought path
        { speaker = "po", expression = "neutral", text = "But leadership—", condition = "fought_scope" },
        { speaker = "ux", expression = "neutral", text = "Leadership wants a demo that works. Adding half-baked collab features won't impress anyone.", condition = "fought_scope" },
        { speaker = "dev", expression = "neutral", text = "Respect.", condition = "fought_scope" },
        { speaker = "pm", expression = "neutral", text = "Priya, let's revisit this after the demo. Deal?", condition = "fought_scope" },

        -- Compromised path
        { speaker = "arch", expression = "neutral", text = "Commenting is... actually reasonable. The infrastructure for that is manageable.", condition = "compromised_scope" },
        { speaker = "dev", expression = "neutral", text = "I can build a comment system. That's fine.", condition = "compromised_scope" },
        { speaker = "po", expression = "neutral", text = "I guess comments are a start... Can we at least add emoji reactions?", condition = "compromised_scope" },
        { speaker = "dev", expression = "neutral", text = "Sure. Emoji reactions. The cornerstone of enterprise software.", condition = "compromised_scope" },

        -- End of day
        { speaker = "pm", expression = "neutral", text = "Great standup everyone! That was only... 42 minutes." },
        { speaker = "ux", expression = "neutral", text = "Scope creep. The silent killer of projects, sanity, and weekends." },

        { text = "", goto = "day6" }
    }
}
