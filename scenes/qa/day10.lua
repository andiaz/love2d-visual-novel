return {
    title = "Day 10 -- Wednesday",
    subtitle = "The Long Night",
    narration = "Final demo Friday. The team is staying late. You don't crunch. You break things, calmly.",

    bg = "office_evening",
    bgm = "late_night",

    dialogue = {
        { speaker = "qa", expression = "deadpan", text = "Wednesday evening. Final demo Friday. The office lights are staying on. The bug tracker is staying on too." },
        { speaker = "pm", expression = "stressed", text = "Status: behind on five of seven deliverables." },
        { speaker = "dev", expression = "tired", text = "I've been coding 11 hours. Feed works. Search is held together with hope." },
        { speaker = "qa", expression = "deadpan", text = "Under load? It crashes with three concurrent users." },
        { speaker = "arch", expression = "whiteboarding", text = "That's a scaling issue. I need to revisit the caching layer--" },
        { speaker = "dev", expression = "frustrated", text = "Casey. We have 36 hours. There is no caching layer revision." },

        { speaker = "pm", expression = "stressed", text = "Real talk. Are we crunching tonight?" },
        { speaker = "qa", expression = "deadpan", text = "(I'll be here. I always am. Crunch is when the bugs come out to play.)" },

        { speaker = "qa", expression = "neutral", text = "I'll keep testing. Better me than leadership." },
        { speaker = "po", expression = "excited", text = "I can help! I'll update the demo script!" },
        { speaker = "dev", expression = "frustrated", text = "Priya. Please. Don't change requirements tonight." },
        { speaker = "po", expression = "neutral", text = "I won't! ...probably." },

        { speaker = "pm", expression = "neutral", text = "Riley? You're already in this with us. What's the play?" },

        { speaker = "qa", expression = "neutral", text = "(Three options. None of them get me home before midnight.)",
            choices = {
                { text = "Stay all night. Run regression on every fix as it lands. Live triage.", set = {pulled_allnighter = true}, rel = {dev = 1, pm = 1} },
                { text = "Boundary at 11. I will not test tired. Tired QA misses bugs. We regroup at 7.", set = {set_boundaries = true}, rel = {dev = 2, ux = 1, qa = 1} },
                { text = "Split: I write a smoke test that runs in 90 seconds. Sam fixes things, I rerun it. Sustainable loop.", set = {rallied_team = true}, rel = {dev = 2, arch = 1, pm = 1} },
            }
        },

        -- All-nighter
        { speaker = "qa", expression = "deadpan", text = "I'll stay. I always stay. Pizza is acceptable currency.", condition = "pulled_allnighter" },
        { speaker = "qa", expression = "deadpan", text = "(Crunch isn't a badge of honor. It's also not optional, today.)", condition = "pulled_allnighter" },

        -- Boundaries
        { speaker = "qa", expression = "neutral", text = "Hard cutoff at 11. I will not test tired. Tired QA writes bugs and misses bugs. I'll be back at 7 sharp.", condition = "set_boundaries" },
        { speaker = "dev", expression = "tired", text = "Smart. Wish I could.", condition = "set_boundaries" },
        { speaker = "qa", expression = "neutral", text = "You can. Try it.", condition = "set_boundaries" },

        -- Rally
        { speaker = "qa", expression = "neutral", text = "I'm writing a 90-second smoke test. Sam fixes a thing, I run it. Loop until midnight. Then we sleep. Then we go again.", condition = "rallied_team" },
        { speaker = "dev", expression = "smiling", text = "That's the smartest thing I've heard all week.", condition = "rallied_team" },
        { speaker = "qa", expression = "smirk", text = "(QA running ops. Unprecedented. Effective.)", condition = "rallied_team" },

        -- End
        { speaker = "qa", expression = "deadpan", text = "(The crunch. Every project has one. QA is the immune system. Tonight I am very, very busy.)" },

        { text = "", goto = "day11" }
    }
}
