return {
    title = "Day 5 -- Monday",
    subtitle = "The Scope Creep",
    narration = "Monday. Sprint two. Priya had a thought over the weekend. The thought is real-time collaboration. The thought is going to require a message broker.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "arch", expression = "concerned", text = "Monday. Sprint two. The architecture is starting to feel coherent. I can already feel Priya about to ruin it." },
        { speaker = "pm", expression = "cheerful", text = "Quick standup! 15 minutes, I promise!" },
        { speaker = "dev", expression = "neutral", text = "(It won't be 15 minutes.)" },

        { speaker = "po", expression = "excited", text = "So, I had a thought over the weekend..." },
        { speaker = "arch", expression = "concerned", text = "(There it is. I felt it coming on Friday.)" },
        { speaker = "po", expression = "excited", text = "What if Chimera also had real-time collaboration? Like Google Docs but in the knowledge base!" },
        { speaker = "arch", expression = "concerned", text = "Real-time collaboration is an entire product. Operational transforms. CRDTs. Conflict resolution. Presence. A sync server. A message broker." },
        { speaker = "po", expression = "defensive", text = "Can we just add it? How hard can it be?" },
        { speaker = "arch", expression = "concerned", text = "Priya. It is, technically, the hardest distributed systems problem in modern web development. There are PhDs in it. There are libraries that took ten years to ship." },
        { speaker = "dev", expression = "frustrated", text = "What Casey said. With fewer words." },

        { speaker = "pm", expression = "stressed", text = "Casey, you're the architect. Tell me the truth. Can we mock it for the demo?" },
        { speaker = "arch", expression = "concerned", text = "(The truth depends on what kind of architect I want to be in this room.)" },

        { speaker = "arch", expression = "neutral", text = "(Three answers. Each one is a different kind of cost.)",
            choices = {
                { text = "Build it real. I'll pick a CRDT library and a message broker. Pretend the architecture isn't being warped.", set = {absorbed_scope = true}, rel = {po = 1, dev = -2, qa = -1} },
                { text = "Block it. The architecture is for the project we're building, not the project Priya pitched on Saturday.", set = {fought_scope = true}, rel = {dev = 2, qa = 1, po = -2} },
                { text = "Reframe it. Async comments. Same story, simpler infrastructure. The architecture survives.", set = {compromised_scope = true}, rel = {dev = 2, pm = 2, ux = 1, po = 1} },
            }
        },

        -- Absorbed
        { speaker = "arch", expression = "whiteboarding", text = "I'll pick a CRDT library. Add a sync service. Add a message broker. The architecture diagram now has six new boxes.", condition = "absorbed_scope" },
        { speaker = "dev", expression = "frustrated", text = "Casey. We have eight days.", condition = "absorbed_scope" },
        { speaker = "arch", expression = "concerned", text = "(I just signed us up to build something I have wanted to build for three years. At the worst possible time.)", condition = "absorbed_scope" },

        -- Fought
        { speaker = "arch", expression = "concerned", text = "Priya. No. The architecture is for the project we're shipping. Not the project you pitched on Saturday. I will not bend it for a demo.", condition = "fought_scope" },
        { speaker = "po", expression = "defensive", text = "But--", condition = "fought_scope" },
        { speaker = "arch", expression = "neutral", text = "Next sprint. We'll talk about it properly. With requirements. And a spike. And honest scoping.", condition = "fought_scope" },
        { speaker = "dev", expression = "smiling", text = "Casey just held the line. I am framing this moment.", condition = "fought_scope" },

        -- Compromise
        { speaker = "arch", expression = "neutral", text = "Counter-proposal. Async comments. Threaded. Database-backed. No CRDTs. No sync server. No new infrastructure.", condition = "compromised_scope" },
        { speaker = "dev", expression = "smiling", text = "I can build that. That's actually a reasonable feature.", condition = "compromised_scope" },
        { speaker = "po", expression = "neutral", text = "Comments are a start... Can we at least add emoji reactions?", condition = "compromised_scope" },
        { speaker = "arch", expression = "concerned", text = "Emoji reactions are technically a comment with a single character. The architecture is unchanged. Yes.", condition = "compromised_scope" },

        -- End
        { speaker = "pm", expression = "neutral", text = "Great standup everyone! That was only... 42 minutes." },
        { speaker = "arch", expression = "concerned", text = "(Scope creep is the architectural equivalent of a load-bearing wall being asked to also be a window.)" },

        { text = "", goto = "day6" }
    }
}
