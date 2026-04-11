return {
    title = "Day 2 -- Tuesday",
    subtitle = "The First Standup",
    narration = "Standup. Jordan promised 15 minutes. The dev has a git repo. The PO has stock photos. You have a blank test plan and a question.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "pm", expression = "cheerful", text = "Good morning! Welcome to standup. Yesterday, today, blockers." },
        { speaker = "qa", expression = "deadpan", text = "(I am professionally curious about the word 'blockers' in this room.)" },
        { speaker = "dev", expression = "neutral", text = "Yesterday I set up the repo. Today I'm picking the stack. No blockers." },
        { speaker = "arch", expression = "neutral", text = "I started the architecture doc. We need to discuss the data model." },
        { speaker = "dev", expression = "frustrated", text = "I literally just made a git repo." },
        { speaker = "arch", expression = "whiteboarding", text = "Right, but the FOUNDATION matters. Microservices..." },
        { speaker = "qa", expression = "deadpan", text = "(Tangent one. The whiteboard is going to be involved.)" },
        { speaker = "pm", expression = "neutral", text = "Let's take that offline. Riley?" },

        { speaker = "qa", expression = "neutral", text = "I'm writing the test plan. Which is hard because we don't have requirements yet." },
        { speaker = "po", expression = "defensive", text = "I sent a 47-slide deck!" },
        { speaker = "qa", expression = "deadpan", text = "That's a mood board, Priya. It has stock photos of people high-fiving." },
        { speaker = "po", expression = "defensive", text = "It's a GREAT mood board." },
        { speaker = "qa", expression = "deadpan", text = "(Quiet part out loud. Again. They're going to fire me one day. Today is not that day.)" },

        { speaker = "pm", expression = "neutral", text = "Riley, what do you actually need to start writing tests?" },
        { speaker = "qa", expression = "neutral", text = "(Three honest answers.)",
            choices = {
                { text = "I want to interview the actual users. Find out what 'works' even means for them.", set = {pushed_interviews = true}, rel = {ux = 2, dev = 1, po = -1, pm = -1} },
                { text = "Give me the deck. I'll start writing test cases against the screenshots.", set = {started_wireframes = true}, rel = {po = 1, pm = 1, dev = -1} },
                { text = "I need acceptance criteria. Real ones. Until then I can't test anything.", set = {needs_requirements = true}, rel = {dev = 2, arch = 1, po = -1, pm = -1} },
            }
        },

        -- Interviews path (= research)
        { speaker = "qa", expression = "neutral", text = "I want to talk to five users this week. Find out what they actually use today and what breaks.", condition = "pushed_interviews" },
        { speaker = "pm", expression = "stressed", text = "Riley, that's not really QA's job--", condition = "pushed_interviews" },
        { speaker = "qa", expression = "deadpan", text = "If nobody else is doing it, it becomes my job. Five interviews. Three days. The test plan will write itself after.", condition = "pushed_interviews" },
        { speaker = "ux", expression = "excited", text = "I'll join you.", condition = "pushed_interviews" },

        -- Test against screenshots
        { speaker = "po", expression = "excited", text = "Yes! The deck has all the screens! Test against those!", condition = "started_wireframes" },
        { speaker = "qa", expression = "deadpan", text = "(I just signed up to write test cases against stock photos. This is fine.)", condition = "started_wireframes" },

        -- Acceptance criteria path
        { speaker = "qa", expression = "neutral", text = "I need acceptance criteria. 'It works' is not a test case.", condition = "needs_requirements" },
        { speaker = "po", expression = "defensive", text = "The vision IS the requirement!", condition = "needs_requirements" },
        { speaker = "dev", expression = "smiling", text = "Slide 23 just says 'delight' in 72-point font.", condition = "needs_requirements" },
        { speaker = "qa", expression = "deadpan", text = "Riley.test.delight is going to fail every time.", condition = "needs_requirements" },
        { speaker = "pm", expression = "neutral", text = "Okay, requirements workshop. Tomorrow.", condition = "needs_requirements" },

        -- Converge
        { speaker = "pm", expression = "neutral", text = "Great standup everyone. That was... 38 minutes." },
        { speaker = "dev", expression = "smiling", text = "New record. Usually it's worse." },
        { speaker = "qa", expression = "deadpan", text = "(I'm starting a tracking spreadsheet for standup duration. Day 2: 38 minutes. Promise: 15. Variance: 153 percent.)" },

        { text = "", goto = "day3" }
    }
}
