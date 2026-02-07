return {
    title = "Day 2 — Tuesday",
    subtitle = "The First Standup",
    narration = "Jordan promised 15 minutes. The repo exists. The requirements do not.",

    bg = "office_day",
    bgm = "theme",

    dialogue = {
        { speaker = "pm", expression = "neutral", text = "Good morning! Welcome to standup. Let's keep it tight — what did you do yesterday, what are you doing today, any blockers?" },
        { speaker = "dev", expression = "neutral", text = "Yesterday I set up the repo. Today I'm looking at the tech stack. No blockers." },
        { speaker = "arch", expression = "neutral", text = "I started the architecture doc. We need to discuss the data model before Sam goes too far." },
        { speaker = "dev", expression = "neutral", text = "I literally just created a git repo." },
        { speaker = "arch", expression = "neutral", text = "Right, but the FOUNDATION matters. I've been thinking about a microservices approach..." },
        { speaker = "dev", expression = "neutral", text = "For an MVP?" },
        { speaker = "pm", expression = "neutral", text = "Let's take that offline. Riley?" },
        { speaker = "qa", expression = "neutral", text = "I'm writing the test plan. Which is hard because we don't have requirements yet." },
        { speaker = "po", expression = "neutral", text = "I sent a 47-slide deck!" },
        { speaker = "qa", expression = "neutral", text = "That's a mood board, Priya. It has stock photos of people high-fiving." },
        { speaker = "pm", expression = "neutral", text = "Alex, what about you?" },

        { speaker = "ux", expression = "neutral", text = "I've been thinking about the approach for design.",
            choices = {
                { text = "I'd like to run user interviews this week.", set = {pushed_interviews = true}, rel = {qa = 1, po = -1, pm = -1} },
                { text = "I'll start wireframing based on the deck.", set = {started_wireframes = true}, rel = {po = 1, pm = 1} },
                { text = "We need clearer requirements before I design anything.", set = {needs_requirements = true}, rel = {dev = 1, arch = 1, po = -1} },
            }
        },

        -- Interview path
        { speaker = "pm", expression = "neutral", text = "Interviews? That'll take at least a week. We don't have that kind of time.", condition = "pushed_interviews" },
        { speaker = "ux", expression = "neutral", text = "Five interviews. Three days. It'll save us from building the wrong thing.", condition = "pushed_interviews" },
        { speaker = "qa", expression = "neutral", text = "I'd rather test something users actually want.", condition = "pushed_interviews" },
        { speaker = "pm", expression = "neutral", text = "...fine. Three days. But I'm putting it on the Jira board.", condition = "pushed_interviews" },

        -- Wireframe path
        { speaker = "po", expression = "neutral", text = "Yes! I love it. Start with the social feed — that's the hero feature.", condition = "started_wireframes" },
        { speaker = "arch", expression = "neutral", text = "Please don't design a social feed without talking to me first. The real-time sync alone is—", condition = "started_wireframes" },
        { speaker = "po", expression = "neutral", text = "Casey, let Alex cook. We can figure out the tech later.", condition = "started_wireframes" },
        { speaker = "ux", expression = "neutral", text = "(Design first, argue later. Classic.)", condition = "started_wireframes" },

        -- Requirements path
        { speaker = "po", expression = "neutral", text = "The vision IS the requirement! It's all in the deck!", condition = "needs_requirements" },
        { speaker = "dev", expression = "neutral", text = "Slide 23 just says 'delight' in 72-point font.", condition = "needs_requirements" },
        { speaker = "arch", expression = "neutral", text = "I agree with Alex. We need to scope this properly.", condition = "needs_requirements" },
        { speaker = "pm", expression = "neutral", text = "Okay, let's schedule a requirements workshop. But we're still shipping in 6 weeks.", condition = "needs_requirements" },

        -- Converge
        { speaker = "pm", expression = "neutral", text = "Great standup everyone. That was... 38 minutes." },
        { speaker = "dev", expression = "neutral", text = "New record. Usually it's worse." },
        { speaker = "ux", expression = "neutral", text = "(Day 2 and the fault lines are already showing. This is fine.)" },

        { text = "", goto = "day3" }
    }
}
