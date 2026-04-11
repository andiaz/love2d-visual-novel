return {
    title = "Day 2 -- Tuesday",
    subtitle = "The First Standup",
    narration = "Standup with the team. You have ideas. You have a deck. You also have the floor -- if you can hold it.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "pm", expression = "cheerful", text = "Good morning! Welcome to standup. Yesterday, today, blockers." },
        { speaker = "dev", expression = "neutral", text = "Yesterday I set up the repo. Today I'm picking the stack. No blockers." },
        { speaker = "arch", expression = "neutral", text = "Started the architecture doc. We need to discuss the data model." },
        { speaker = "qa", expression = "neutral", text = "Writing the test plan. Which is hard because we don't have requirements yet." },
        { speaker = "po", expression = "defensive", text = "I sent a 47-slide deck!" },
        { speaker = "qa", expression = "deadpan", text = "That's a mood board, Priya. It has stock photos of people high-fiving." },
        { speaker = "po", expression = "defensive", text = "(Riley always does this. The deck is GOOD.)" },
        { speaker = "po", expression = "defensive", text = "(But maybe... maybe she has a point. Maybe nobody is reading slides 20 through 47.)" },

        { speaker = "ux", expression = "neutral", text = "I'm thinking about the design approach. Priya, can you help me prioritize the user flows?" },
        { speaker = "po", expression = "neutral", text = "(Alex is asking for guidance. This is what I'm here for.)" },

        { speaker = "po", expression = "neutral", text = "(Three ways to answer. Each one shapes how this team sees me.)",
            choices = {
                { text = "Pause the deck. Let me listen to what the team actually needs from me.", set = {pushed_interviews = true}, rel = {ux = 2, dev = 1, qa = 1, pm = 0} },
                { text = "Walk Alex through the deck section by section. The vision is the spec.", set = {started_wireframes = true}, rel = {ux = 1, pm = 1, dev = -1} },
                { text = "Start writing real acceptance criteria. The deck was the pitch -- we need the spec now.", set = {needs_requirements = true}, rel = {dev = 2, qa = 2, arch = 1, ux = 1} },
            }
        },

        -- Pause and listen
        { speaker = "po", expression = "neutral", text = "Actually -- before I answer that, I want to hear from each of you. What do you need from me to do your job?", condition = "pushed_interviews" },
        { speaker = "dev", expression = "smiling", text = "(That's a question I have never been asked by a PO.)", condition = "pushed_interviews" },
        { speaker = "qa", expression = "neutral", text = "Acceptance criteria. Edge cases. The boring stuff.", condition = "pushed_interviews" },
        { speaker = "po", expression = "neutral", text = "(Boring stuff. Right. The deck is the fun part. The boring part is the work.)", condition = "pushed_interviews" },

        -- Walk through deck
        { speaker = "po", expression = "excited", text = "Slide 1: the problem space. Slide 2: user personas. Slide 3 -- ", condition = "started_wireframes" },
        { speaker = "dev", expression = "frustrated", text = "(I am going to die in this room.)", condition = "started_wireframes" },
        { speaker = "po", expression = "excited", text = "Start with the social feed -- that's the hero feature.", condition = "started_wireframes" },
        { speaker = "arch", expression = "neutral", text = "Please don't design a social feed without talking to me first. The real-time sync alone is--", condition = "started_wireframes" },
        { speaker = "po", expression = "defensive", text = "Casey, let Alex cook. We can figure out the tech later.", condition = "started_wireframes" },

        -- Real spec
        { speaker = "po", expression = "neutral", text = "Okay. The deck was a pitch. You need a spec. I owe you one.", condition = "needs_requirements" },
        { speaker = "dev", expression = "smiling", text = "Wait. Did Priya just commit to writing a real spec?", condition = "needs_requirements" },
        { speaker = "po", expression = "neutral", text = "Priorities locked tomorrow. Acceptance criteria for the top three. I promise.", condition = "needs_requirements" },
        { speaker = "qa", expression = "smirk", text = "Mark this date in the calendar. History was made.", condition = "needs_requirements" },

        -- Converge
        { speaker = "pm", expression = "neutral", text = "Great standup everyone. That was... 38 minutes." },
        { speaker = "dev", expression = "smiling", text = "New record. Usually it's worse." },
        { speaker = "po", expression = "neutral", text = "(Day 2. The team is already deciding what kind of PO I am. I have to keep showing up.)" },

        { text = "", goto = "day3" }
    }
}
