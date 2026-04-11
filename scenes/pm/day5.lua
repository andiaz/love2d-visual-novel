return {
    title = "Day 5 -- Monday",
    subtitle = "The Scope Creep",
    narration = "New week. Sprint two. Then Priya texts: 'I had a thought over the weekend.' Your stomach already knows.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "pm", expression = "stressed", text = "Monday morning. New sprint. My phone buzzed at 7:14 AM. It was Priya. 'I had a thought.'" },
        { speaker = "pm", expression = "cheerful", text = "Quick standup! 15 minutes, I promise!" },
        { speaker = "dev", expression = "neutral", text = "(It won't be 15 minutes.)" },

        { speaker = "po", expression = "excited", text = "So, I had a thought over the weekend..." },
        { speaker = "pm", expression = "stressed", text = "(Here it comes. Brace.)" },
        { speaker = "po", expression = "excited", text = "What if Chimera also had real-time collaboration? Like Google Docs but in the knowledge base!" },
        { speaker = "arch", expression = "concerned", text = "Real-time collab is an entire product. Operational transforms, conflict resolution--" },
        { speaker = "po", expression = "defensive", text = "Can we just add it? How hard can it be?" },
        { speaker = "dev", expression = "frustrated", text = "'Can we just.' Three words that have launched a thousand rewrites." },

        -- Jordan steps in
        { speaker = "pm", expression = "stressed", text = "Okay -- everyone breathe. Priya, is this a must-have for the demo?" },
        { speaker = "po", expression = "neutral", text = "Leadership mentioned 'collaboration' last week. I just want us covered." },
        { speaker = "pm", expression = "stressed", text = "(Translation: she heard one word in a meeting and built a feature around it.)" },
        { speaker = "pm", expression = "stressed", text = "(My job: protect the team from scope. Without making Priya feel ignored. Without missing leadership's actual ask. No pressure.)" },

        { speaker = "pm", expression = "neutral", text = "I need to make a call.",
            choices = {
                { text = "Absorb it. Squeeze it in. The team will figure it out.", set = {absorbed_scope = true}, rel = {po = 2, dev = -2, qa = -1, arch = -1} },
                { text = "Block it. Hard no. We have a deadline and a team that hasn't slept.", set = {fought_scope = true}, rel = {dev = 2, qa = 1, arch = 1, po = -2} },
                { text = "Reframe it. 'Comments instead of co-editing.' Get Priya 80% with 20% of the work.", set = {compromised_scope = true}, rel = {po = 1, dev = 1, arch = 1, ux = 1} },
            }
        },

        -- Absorbed
        { speaker = "pm", expression = "stressed", text = "Okay. We'll fit it in. Sam, can you scope the engineering work?", condition = "absorbed_scope" },
        { speaker = "po", expression = "excited", text = "Amazing! I knew you'd get it!", condition = "absorbed_scope" },
        { speaker = "dev", expression = "frustrated", text = "Jordan. That's three more screens, real-time sync, no backend.", condition = "absorbed_scope" },
        { speaker = "pm", expression = "stressed", text = "(I just lost the team. Risk register: morale. Severity: high.)", condition = "absorbed_scope" },

        -- Fought
        { speaker = "pm", expression = "neutral", text = "Priya, no. Not this sprint. Demo is in eight days and we're already behind.", condition = "fought_scope" },
        { speaker = "po", expression = "defensive", text = "But leadership--", condition = "fought_scope" },
        { speaker = "pm", expression = "neutral", text = "Leadership wants a working demo. I'll handle the conversation about 'collaboration.' You handle the deck. Deal?", condition = "fought_scope" },
        { speaker = "dev", expression = "smiling", text = "Respect.", condition = "fought_scope" },

        -- Compromised
        { speaker = "pm", expression = "neutral", text = "Counter-proposal. Comments instead of co-editing. Same 'collaboration' story. One-tenth the build.", condition = "compromised_scope" },
        { speaker = "arch", expression = "neutral", text = "Comments are reasonable. The infrastructure is manageable.", condition = "compromised_scope" },
        { speaker = "dev", expression = "neutral", text = "I can build a comment system. That's fine.", condition = "compromised_scope" },
        { speaker = "po", expression = "neutral", text = "I guess comments are a start... Can we at least add emoji reactions?", condition = "compromised_scope" },
        { speaker = "pm", expression = "cheerful", text = "(That's the magic. She thinks she won. Sam thinks he won. Everyone wins.)", condition = "compromised_scope" },

        -- End of day
        { speaker = "pm", expression = "stressed", text = "Great standup everyone! That was only... 42 minutes." },
        { speaker = "pm", expression = "stressed", text = "(Scope creep. The disease that kills sprints faster than the deadline. The vaccine is saying no.)" },

        { text = "", goto = "day6" }
    }
}
