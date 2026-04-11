return {
    title = "Day 10 -- Wednesday",
    subtitle = "The Long Night",
    narration = "Final demo Friday. The team is exhausted. You can help. You can also make it worse. You usually do both.",

    bg = "office_evening",
    bgm = "late_night",

    dialogue = {
        { speaker = "po", expression = "neutral", text = "Wednesday evening. Final demo Friday. The office lights are staying on tonight." },
        { speaker = "pm", expression = "stressed", text = "Status: behind on five of seven deliverables." },
        { speaker = "dev", expression = "tired", text = "I've been coding 11 hours. The feed works. Search is held together with hope." },
        { speaker = "arch", expression = "neutral", text = "Performance issues under load." },
        { speaker = "qa", expression = "deadpan", text = "Under load? It crashes with three concurrent users." },
        { speaker = "po", expression = "defensive", text = "(Three users. The project is two weeks from shipping and it crashes with three users. This is the part where Sam looks at me.)" },

        { speaker = "pm", expression = "stressed", text = "Real talk. Are we crunching tonight?" },
        { speaker = "po", expression = "excited", text = "I can help! I'll update the demo script!" },
        { speaker = "dev", expression = "frustrated", text = "Priya. PLEASE. Don't change requirements tonight." },
        { speaker = "po", expression = "defensive", text = "(He thinks any contribution from me is more scope. I have to prove him wrong. Or right. Three options.)" },

        { speaker = "po", expression = "neutral", text = "(What does this team need from me right now?)",
            choices = {
                { text = "Stay all night with them. Buy pizza. Be in the trenches.", set = {pulled_allnighter = true}, rel = {pm = 1, dev = 1} },
                { text = "Send everyone home at 10. Take the schedule pressure off. I'll handle leadership.", set = {set_boundaries = true}, rel = {dev = 2, qa = 2, ux = 1, pm = -1} },
                { text = "Lock the scope. No new asks. I write zero new tickets. The team builds what we have.", set = {rallied_team = true}, rel = {dev = 2, qa = 1, arch = 1, pm = 1} },
            }
        },

        -- All-nighter
        { speaker = "po", expression = "excited", text = "I'm staying. I'll order pizza. I'll fetch coffee. Whatever you need.", condition = "pulled_allnighter" },
        { speaker = "dev", expression = "tired", text = "(That's actually... helpful. As long as she doesn't open Notion.)", condition = "pulled_allnighter" },
        { speaker = "qa", expression = "neutral", text = "Crunch isn't a badge of honor, Priya.", condition = "pulled_allnighter" },

        -- Boundaries
        { speaker = "po", expression = "neutral", text = "Hard cutoff at 10 PM. Everyone home. I'll talk to leadership about expectations. The team needs sleep more than the demo needs polish.", condition = "set_boundaries" },
        { speaker = "dev", expression = "tired", text = "Did Priya just protect us from leadership?", condition = "set_boundaries" },
        { speaker = "qa", expression = "smirk", text = "I'm framing this moment.", condition = "set_boundaries" },
        { speaker = "pm", expression = "stressed", text = "Priya, the demo--", condition = "set_boundaries" },
        { speaker = "po", expression = "neutral", text = "Will be better with a team that slept.", condition = "set_boundaries" },

        -- Rally
        { speaker = "po", expression = "neutral", text = "I am locking the backlog. Right now. No new tickets from me until after the demo. Build what's there.", condition = "rallied_team" },
        { speaker = "dev", expression = "smiling", text = "I want this on a poster.", condition = "rallied_team" },
        { speaker = "po", expression = "neutral", text = "(I just gave myself 48 hours of silence. It might kill me.)", condition = "rallied_team" },

        -- End of day
        { speaker = "po", expression = "neutral", text = "(The crunch. Every project has one. The PO either causes it or absorbs it. Tonight, I'm choosing.)" },

        { text = "", goto = "day11" }
    }
}
