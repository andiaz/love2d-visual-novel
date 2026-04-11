return {
    title = "Day 10 -- Wednesday",
    subtitle = "The Long Night",
    narration = "Final demo Friday. The build is fragile. The team is fraying. The office lights are staying on tonight.",

    bg = "office_evening",
    bgm = "late_night",

    dialogue = {
        { speaker = "dev", expression = "tired", text = "Wednesday evening. Final demo Friday. The build is held together with hope and one staging server." },
        { speaker = "pm", expression = "stressed", text = "Status: behind on five of seven deliverables. The Jira board is... aspirational." },
        { speaker = "dev", expression = "tired", text = "11 hours coding today. Feed works. Search is held together with regex and despair." },
        { speaker = "arch", expression = "neutral", text = "Infrastructure is solid. But there are performance issues under load." },
        { speaker = "qa", expression = "deadpan", text = "Under load? It crashes with three concurrent users." },
        { speaker = "arch", expression = "whiteboarding", text = "That's a scaling issue. I need to revisit the caching layer--" },
        { speaker = "dev", expression = "frustrated", text = "Casey. We have 36 hours. There is no caching layer revision." },
        { speaker = "dev", expression = "tired", text = "(I love Casey. I would love him more if he had a sense of time.)" },

        { speaker = "pm", expression = "stressed", text = "Real talk. We need to decide what we're doing tonight. Are we crunching?" },

        -- Team responses depend on relationship
        { speaker = "ux", expression = "thinking", text = "I'll stay. I want to make sure the flows hold up under stress.", condition = "paired_with_dev" },
        { speaker = "ux", expression = "neutral", text = "I'll stay a bit. But I need to sleep at some point.", condition = "collab_with_dev" },
        { speaker = "ux", expression = "neutral", text = "I'll stay if I can be useful.", condition = {paired_with_dev = nil, collab_with_dev = nil} },

        { speaker = "qa", expression = "neutral", text = "I'll keep testing. Better me than leadership." },
        { speaker = "po", expression = "excited", text = "I can help! I'll update the demo script!" },
        { speaker = "dev", expression = "frustrated", text = "Priya. PLEASE. Don't change requirements tonight." },
        { speaker = "po", expression = "neutral", text = "I won't! ...probably." },

        { speaker = "pm", expression = "neutral", text = "Sam? You're the linchpin here. Call it.",
            choices = {
                { text = "I'm staying till it's done. Whatever it takes. Bring pizza.", set = {pulled_allnighter = true}, rel = {pm = 2, po = 1} },
                { text = "I'll stay till midnight. I do bad work tired. I'll be back at 6 AM sharp.", set = {set_boundaries = true}, rel = {qa = 2, ux = 1, pm = -1} },
                { text = "Split the work. Three of us each take a slice. Go home, regroup at 7.", set = {rallied_team = true}, rel = {ux = 2, qa = 1, arch = 1, pm = 1} },
            }
        },

        -- All-nighter
        { speaker = "pm", expression = "cheerful", text = "That's the spirit! Pizza incoming!", condition = "pulled_allnighter" },
        { speaker = "qa", expression = "neutral", text = "Crunch isn't a badge of honor, Sam.", condition = "pulled_allnighter" },
        { speaker = "dev", expression = "tired", text = "(Riley's right. But the code won't write itself.)", condition = "pulled_allnighter" },

        -- Boundaries
        { speaker = "qa", expression = "neutral", text = "Smart. A tired engineer writes the bugs of tomorrow.", condition = "set_boundaries" },
        { speaker = "pm", expression = "neutral", text = "But the demo--", condition = "set_boundaries" },
        { speaker = "dev", expression = "tired", text = "Will be better if I can think straight Friday.", condition = "set_boundaries" },

        -- Rally
        { speaker = "ux", expression = "excited", text = "Yes. Divide and conquer. Give me the front-end fixes.", condition = "rallied_team" },
        { speaker = "arch", expression = "neutral", text = "I'll fix the perf issue from home. Just need VPN.", condition = "rallied_team" },
        { speaker = "dev", expression = "neutral", text = "Task list in Slack by 9. Everyone picks their slice.", condition = "rallied_team" },

        -- End of day
        { speaker = "dev", expression = "tired", text = "(The crunch. Every project has one. The question is whether you survive it together or fall apart.)" },

        { text = "", goto = "day11" }
    }
}
