return {
    bg = "office_evening",
    bgm = "theme",

    dialogue = {
        { speaker = "ux", expression = "neutral", text = "Wednesday evening. The final demo is Friday. We're not ready." },
        { speaker = "pm", expression = "neutral", text = "Status update: we're behind on five of seven deliverables. The Jira board is... let's call it aspirational." },
        { speaker = "dev", expression = "neutral", text = "I've been coding for 11 hours. The feed works. The search is held together with hope." },
        { speaker = "arch", expression = "neutral", text = "The infrastructure is solid. But there are performance issues under load." },
        { speaker = "qa", expression = "neutral", text = "Under load? It crashes with three concurrent users." },
        { speaker = "arch", expression = "neutral", text = "That's a scaling issue. I need to revisit the caching layer—" },
        { speaker = "dev", expression = "neutral", text = "Casey. We have 36 hours. There is no caching layer revision." },

        -- The late-night decision
        { speaker = "pm", expression = "neutral", text = "Okay, real talk. We need to decide what we're doing tonight. Are we crunching?" },

        -- Sam's response depends on earlier relationship
        { speaker = "dev", expression = "neutral", text = "I'll stay. Someone has to keep the servers alive.", condition = "paired_with_dev" },
        { speaker = "dev", expression = "neutral", text = "I'll stay. But only because the code will break without me, not because I want to.", condition = "collab_with_dev" },
        { speaker = "dev", expression = "neutral", text = "I've been here since 7 AM. I'll stay another hour. Maybe.", condition = {paired_with_dev = nil, collab_with_dev = nil} },

        { speaker = "qa", expression = "neutral", text = "I'll keep testing. Someone has to find the bugs before leadership does." },
        { speaker = "po", expression = "neutral", text = "I can help! I'll... I'll update the demo script!" },
        { speaker = "dev", expression = "neutral", text = "Priya, please don't change the requirements again." },
        { speaker = "po", expression = "neutral", text = "I won't! ...probably." },

        { speaker = "pm", expression = "neutral", text = "Alex? What about you?",
            choices = {
                { text = "I'm staying all night. Whatever it takes.", set = {pulled_allnighter = true}, rel = {pm = 2, dev = 1, po = 1} },
                { text = "I'll stay late, but I'm going home at midnight. Burnout helps nobody.", set = {set_boundaries = true}, rel = {qa = 2, dev = 1, pm = -1} },
                { text = "We can do this — but let's be smart. Split the work, go home, regroup at 7 AM.", set = {rallied_team = true}, rel = {pm = 1, dev = 2, qa = 1, arch = 1} },
            }
        },

        -- All-nighter path
        { speaker = "pm", expression = "neutral", text = "That's the spirit! Pizza's on me.", condition = "pulled_allnighter" },
        { speaker = "qa", expression = "neutral", text = "Crunch culture isn't a badge of honor, Alex.", condition = "pulled_allnighter" },
        { speaker = "ux", expression = "neutral", text = "(Riley's right. But the demo won't design itself.)", condition = "pulled_allnighter" },

        -- Boundaries path
        { speaker = "qa", expression = "neutral", text = "Smart. A tired designer makes bad design decisions.", condition = "set_boundaries" },
        { speaker = "pm", expression = "neutral", text = "But the demo—", condition = "set_boundaries" },
        { speaker = "ux", expression = "neutral", text = "Will be better if I can think straight tomorrow.", condition = "set_boundaries" },

        -- Rally path
        { speaker = "dev", expression = "neutral", text = "Divide and conquer. I like it. Give me a list and I'll knock it out.", condition = "rallied_team" },
        { speaker = "arch", expression = "neutral", text = "I can fix the performance issue from home. Just need VPN access.", condition = "rallied_team" },
        { speaker = "pm", expression = "neutral", text = "Okay. Task list in Slack by 9 PM. Everyone picks their slice.", condition = "rallied_team" },

        -- End of day
        { speaker = "ux", expression = "neutral", text = "The crunch. Every project has one. The question is whether you survive it together or fall apart." },

        { text = "", goto = "day11" }
    }
}
