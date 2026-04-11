return {
    title = "Day 2 -- Tuesday",
    subtitle = "The First Standup",
    narration = "Jordan promised 15 minutes. The repo exists. The requirements do not.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "pm", expression = "cheerful", text = "Good morning! Welcome to standup. Let's keep it tight -- yesterday, today, blockers." },
        { speaker = "ux", expression = "neutral", text = "Yesterday I sketched some user flows. Today I'm going to map out the information architecture." },
        { speaker = "arch", expression = "neutral", text = "I started the architecture doc. We need to discuss the data model before Sam goes too far." },
        { speaker = "dev", expression = "neutral", text = "(I have not gone anywhere. I have a git repo and three opinions.)" },
        { speaker = "pm", expression = "neutral", text = "Sam, your turn." },
        { speaker = "dev", expression = "neutral", text = "Yesterday: created the repo, set up the linter, picked a stack. Today: depends on what I hear in this room." },
        { speaker = "qa", expression = "neutral", text = "I'm writing the test plan. Which is hard because we don't have requirements yet." },
        { speaker = "po", expression = "defensive", text = "I sent a 47-slide deck!" },
        { speaker = "qa", expression = "deadpan", text = "That's a mood board, Priya. It has stock photos of people high-fiving." },
        { speaker = "arch", expression = "whiteboarding", text = "About the data model -- I've been thinking about a microservices approach..." },
        { speaker = "dev", expression = "frustrated", text = "Casey. For an MVP." },
        { speaker = "arch", expression = "neutral", text = "It's never too early to think about it." },
        { speaker = "pm", expression = "neutral", text = "Let's take that offline. Sam, what are you actually going to start on today?" },

        { speaker = "dev", expression = "neutral", text = "(Three honest options. I have to pick one.)",
            choices = {
                { text = "I want to spike the highest-risk technical question first.", set = {pushed_interviews = true}, rel = {qa = 1, arch = 2, po = -1} },
                { text = "I'll scaffold the API based on the deck and see what falls out.", set = {started_wireframes = true}, rel = {po = 1, pm = 1} },
                { text = "I'm not writing a line until someone gives me real requirements.", set = {needs_requirements = true}, rel = {arch = 1, qa = 1, po = -1, pm = -1} },
            }
        },

        -- Spike path (= research)
        { speaker = "dev", expression = "neutral", text = "Real-time sync. Auth model. Mobile parity. One of those is going to bite us. I want to know which.", condition = "pushed_interviews" },
        { speaker = "arch", expression = "neutral", text = "Yes. Thank you. THIS is engineering.", condition = "pushed_interviews" },
        { speaker = "pm", expression = "stressed", text = "A spike? That's two days you could be writing the actual product.", condition = "pushed_interviews" },
        { speaker = "dev", expression = "neutral", text = "Two days now or two weeks of regret. Pick.", condition = "pushed_interviews" },

        -- Scaffold path (= compliance)
        { speaker = "po", expression = "excited", text = "Yes! Build it! That's the spirit!", condition = "started_wireframes" },
        { speaker = "dev", expression = "neutral", text = "(Famous last words.)", condition = "started_wireframes" },
        { speaker = "arch", expression = "concerned", text = "Sam, scaffold around the data model. Don't paint yourself into a corner.", condition = "started_wireframes" },
        { speaker = "dev", expression = "neutral", text = "Noted.", condition = "started_wireframes" },

        -- Requirements path (= pushback)
        { speaker = "dev", expression = "frustrated", text = "I'm serious. The deck has the word 'delight' in 72-point font on slide 23. That is not a spec.", condition = "needs_requirements" },
        { speaker = "po", expression = "defensive", text = "The vision IS the requirement!", condition = "needs_requirements" },
        { speaker = "arch", expression = "neutral", text = "Sam's right. We need scope before code.", condition = "needs_requirements" },
        { speaker = "pm", expression = "neutral", text = "Okay -- requirements workshop, this week. But we're still shipping in 6 weeks.", condition = "needs_requirements" },

        -- Converge
        { speaker = "pm", expression = "neutral", text = "Great standup everyone. That was... 38 minutes." },
        { speaker = "qa", expression = "smirk", text = "New record." },
        { speaker = "dev", expression = "neutral", text = "(Day 2. Already 23 minutes over budget on the only meeting that's supposed to be cheap.)" },

        { text = "", goto = "day3" }
    }
}
