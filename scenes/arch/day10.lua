return {
    title = "Day 10 -- Wednesday",
    subtitle = "The Long Night",
    narration = "Final demo Friday. The architecture is bending under load. You can fix it. You can refactor it. You can run away from it. Pick.",

    bg = "office_evening",
    bgm = "late_night",

    dialogue = {
        { speaker = "arch", expression = "concerned", text = "Wednesday evening. Final demo Friday. The architecture is bending. I drew it on the whiteboard. The whiteboard is also bending." },
        { speaker = "pm", expression = "stressed", text = "Status: behind on five of seven deliverables." },
        { speaker = "dev", expression = "tired", text = "I've been coding 11 hours. Feed works. Search is held together with hope." },
        { speaker = "qa", expression = "deadpan", text = "Under load? It crashes with three concurrent users." },
        { speaker = "arch", expression = "whiteboarding", text = "That's the caching layer. I told you. I drew the diagram. The diagram had three colors." },
        { speaker = "dev", expression = "frustrated", text = "Casey. We have 36 hours. There is no caching layer revision." },
        { speaker = "arch", expression = "concerned", text = "(He is right. I was right. Both of those things can be true. The architecture does not care which.)" },

        { speaker = "pm", expression = "stressed", text = "Real talk. Are we crunching tonight?" },

        { speaker = "arch", expression = "neutral", text = "(Three options. Each one is a different architectural strategy applied to a sleep schedule.)",
            choices = {
                { text = "Stay all night. Refactor the cache layer. Ship the right thing. Sleep is a future-Casey problem.", set = {pulled_allnighter = true}, rel = {pm = 1, dev = 0} },
                { text = "Boundary at midnight. Refactoring tired produces the worst kind of architecture. I'll be back at 6 AM with a clear head.", set = {set_boundaries = true}, rel = {dev = 2, qa = 2, ux = 1} },
                { text = "Triage. I patch the worst bottleneck tonight. The rest goes in the architectural debt log. We document it.", set = {rallied_team = true}, rel = {dev = 2, qa = 1, arch = 1, pm = 1} },
            }
        },

        -- All-nighter
        { speaker = "arch", expression = "whiteboarding", text = "I'm staying. The cache layer gets the rewrite it needed three days ago. By morning it will be a different system.", condition = "pulled_allnighter" },
        { speaker = "qa", expression = "neutral", text = "Casey. The architecture you write at 3 AM is the architecture you will be apologizing for at the next retro.", condition = "pulled_allnighter" },
        { speaker = "arch", expression = "concerned", text = "(She is right. I will do it anyway.)", condition = "pulled_allnighter" },

        -- Boundaries
        { speaker = "arch", expression = "neutral", text = "Hard cutoff at midnight. Architecture written tired is architecture I rewrite next sprint. I'll be back at 6 AM with a clear head.", condition = "set_boundaries" },
        { speaker = "dev", expression = "tired", text = "Smart. Wish I could.", condition = "set_boundaries" },
        { speaker = "arch", expression = "neutral", text = "(I will start modeling boundaries. The team copies whoever leaves first.)", condition = "set_boundaries" },

        -- Triage
        { speaker = "arch", expression = "neutral", text = "Triage. I patch the worst bottleneck tonight. The rest goes in the architectural debt log. Documented. Tracked. Revisited.", condition = "rallied_team" },
        { speaker = "dev", expression = "smiling", text = "Architectural debt log. Casey, I have wanted this since week one.", condition = "rallied_team" },
        { speaker = "arch", expression = "neutral", text = "(Pragmatism is not a betrayal of architecture. It is the only way architecture survives a deadline.)", condition = "rallied_team" },

        -- End
        { speaker = "arch", expression = "concerned", text = "(The crunch. Every project has one. The architect is supposed to prevent it. I did not.)" },

        { text = "", goto = "day11" }
    }
}
