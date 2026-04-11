return {
    title = "Day 10 -- Wednesday",
    subtitle = "The Long Night",
    narration = "Final demo Friday. The team is behind. The office lights are staying on. Your job is to keep them fed, sane, and pointed in the same direction.",

    bg = "office_evening",
    bgm = "late_night",

    dialogue = {
        { speaker = "pm", expression = "stressed", text = "Wednesday evening. Final demo Friday. We're behind. The Jira board is a hostage situation." },
        { speaker = "pm", expression = "stressed", text = "Status update: behind on five of seven deliverables. The Jira board is... let's call it aspirational." },
        { speaker = "dev", expression = "tired", text = "I've been coding 11 hours. The feed works. The search is held together with hope." },
        { speaker = "arch", expression = "neutral", text = "Infrastructure is solid. Performance issues under load." },
        { speaker = "qa", expression = "deadpan", text = "Under load? It crashes with three concurrent users." },
        { speaker = "arch", expression = "whiteboarding", text = "That's a scaling issue. I need to revisit the caching layer--" },
        { speaker = "dev", expression = "frustrated", text = "Casey. We have 36 hours. There is no caching layer revision." },
        { speaker = "pm", expression = "stressed", text = "(I have to make the call. Crunch or no crunch. There is no good answer.)" },

        { speaker = "pm", expression = "stressed", text = "Real talk. Are we crunching tonight?" },

        -- Team responses
        { speaker = "ux", expression = "neutral", text = "I'll stay. Let me know what you need.", condition = "paired_with_dev" },
        { speaker = "ux", expression = "neutral", text = "I'll stay a few hours.", condition = "collab_with_dev" },
        { speaker = "ux", expression = "neutral", text = "I'll stay if it helps.", condition = {paired_with_dev = nil, collab_with_dev = nil} },

        { speaker = "qa", expression = "neutral", text = "I'll keep testing. Better me than leadership." },
        { speaker = "po", expression = "excited", text = "I can help! I'll update the demo script!" },
        { speaker = "dev", expression = "frustrated", text = "Priya. Please. Don't change requirements tonight." },
        { speaker = "po", expression = "neutral", text = "I won't! ...probably." },

        { speaker = "pm", expression = "stressed", text = "(I'm responsible for everyone in this room. Whatever I say next, they will follow.)",
            choices = {
                { text = "Call the all-nighter. Pizza on the company card. Push through.", set = {pulled_allnighter = true}, rel = {po = 1, dev = 0} },
                { text = "Send people home at 10. Tired team makes bad decisions on demo day.", set = {set_boundaries = true}, rel = {qa = 2, dev = 1, ux = 1} },
                { text = "Divide the work. Three slices, three owners, regroup at 7 AM. Sustainable.", set = {rallied_team = true}, rel = {dev = 2, qa = 1, ux = 1, arch = 1} },
            }
        },

        -- All-nighter
        { speaker = "pm", expression = "cheerful", text = "Alright team. We're crunching. Pizza incoming.", condition = "pulled_allnighter" },
        { speaker = "qa", expression = "neutral", text = "Crunch isn't a badge of honor, Jordan.", condition = "pulled_allnighter" },
        { speaker = "pm", expression = "stressed", text = "(She's right. But the demo won't write itself.)", condition = "pulled_allnighter" },

        -- Boundaries
        { speaker = "pm", expression = "neutral", text = "Hard cutoff at 10 PM. Anyone still here, I'm sending home. We regroup tomorrow rested.", condition = "set_boundaries" },
        { speaker = "qa", expression = "smirk", text = "Smart. A tired team makes bad demos.", condition = "set_boundaries" },
        { speaker = "dev", expression = "tired", text = "Thank you.", condition = "set_boundaries" },

        -- Rally
        { speaker = "pm", expression = "neutral", text = "Divide and conquer. Three owners, three slices. Tonight you finish your slice and go home. Regroup at 7 AM.", condition = "rallied_team" },
        { speaker = "dev", expression = "neutral", text = "I'll take the data layer.", condition = "rallied_team" },
        { speaker = "arch", expression = "neutral", text = "I'll fix the perf issue from home.", condition = "rallied_team" },
        { speaker = "pm", expression = "cheerful", text = "(That's leadership. That's the job.)", condition = "rallied_team" },

        -- End of day
        { speaker = "pm", expression = "stressed", text = "(The crunch. Every project has one. Whether the team survives it together is on me.)" },

        { text = "", goto = "day11" }
    }
}
