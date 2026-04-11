return {
    title = "Day 5 -- Monday",
    subtitle = "The Scope Creep",
    narration = "New week. Sprint two. And Priya had a thought over the weekend...",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "dev", expression = "tired", text = "Monday. Sprint two begins. I had a productive weekend. I'm afraid Priya did too." },
        { speaker = "pm", expression = "cheerful", text = "Quick standup! 15 minutes, I promise." },
        { speaker = "dev", expression = "neutral", text = "(It won't be 15 minutes.)" },

        { speaker = "po", expression = "excited", text = "So, I had a thought over the weekend..." },
        { speaker = "dev", expression = "frustrated", text = "(There it is. Right on schedule.)" },
        { speaker = "po", expression = "excited", text = "What if Chimera also had real-time collaboration? Like Google Docs but in the knowledge base!" },
        { speaker = "arch", expression = "concerned", text = "Real-time collaboration is an entire product. Operational transforms, conflict resolution--" },
        { speaker = "po", expression = "defensive", text = "Can we just add it? How hard can it be?" },
        { speaker = "dev", expression = "frustrated", text = "'Can we just.' Three words that have launched a thousand rewrites." },
        { speaker = "dev", expression = "frustrated", text = "Priya, I'm going to be very specific. Real-time collab needs a CRDT library, a sync server, presence, conflict UI, and a backend that supports any of that. We have none of those things." },
        { speaker = "po", expression = "defensive", text = "Surely there's a library?" },
        { speaker = "dev", expression = "frustrated", text = "There are libraries for the CRDT part. Everything else is custom. For us. To build. In four weeks." },

        { speaker = "pm", expression = "stressed", text = "Sam, can we mock it for the demo?" },
        { speaker = "dev", expression = "neutral", text = "(There it is. The decision.)",
            choices = {
                { text = "Sure. I'll fake it. We'll deal with the truth later.", set = {absorbed_scope = true}, rel = {po = 2, pm = 1, arch = -1} },
                { text = "No. Absolutely not. I'm not building a fake feature on top of real ones.", set = {fought_scope = true}, rel = {po = -2, arch = 2, qa = 1, pm = -1} },
                { text = "How about a comment system? Real, simple, ships in days, not weeks.", set = {compromised_scope = true}, rel = {po = 1, arch = 1, pm = 2, ux = 1} },
            }
        },

        -- Absorbed
        { speaker = "po", expression = "excited", text = "Amazing! I knew you'd figure it out!", condition = "absorbed_scope" },
        { speaker = "dev", expression = "tired", text = "(I just signed up to write a fake real-time engine. With CSS animations. I will not survive this sprint.)", condition = "absorbed_scope" },

        -- Fought
        { speaker = "po", expression = "defensive", text = "But leadership--", condition = "fought_scope" },
        { speaker = "dev", expression = "frustrated", text = "Leadership wants a demo that works. I will not duct-tape a fake feature on top of half-built real features.", condition = "fought_scope" },
        { speaker = "arch", expression = "neutral", text = "Sam's right. The cost-benefit doesn't pencil out.", condition = "fought_scope" },
        { speaker = "pm", expression = "neutral", text = "Priya, let's revisit after the demo. Deal?", condition = "fought_scope" },

        -- Compromised
        { speaker = "arch", expression = "neutral", text = "Comments are reasonable. The infrastructure is manageable.", condition = "compromised_scope" },
        { speaker = "dev", expression = "neutral", text = "Threaded comments, basic notifications, ships by Friday. That's the deal.", condition = "compromised_scope" },
        { speaker = "po", expression = "neutral", text = "I guess comments are a start... Can we at least add emoji reactions?", condition = "compromised_scope" },
        { speaker = "dev", expression = "smiling", text = "Sure. Emoji reactions. The cornerstone of enterprise software.", condition = "compromised_scope" },

        -- End of day
        { speaker = "pm", expression = "neutral", text = "Great standup everyone! That was only... 42 minutes." },
        { speaker = "dev", expression = "tired", text = "(Scope creep. The disease that kills sprints faster than the deadline.)" },

        { text = "", goto = "day6" }
    }
}
