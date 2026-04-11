return {
    title = "Day 2 -- Tuesday",
    subtitle = "The First Standup",
    narration = "You promised 15 minutes. You have a Jira board. You have hope. The hope will not survive the next 38 minutes.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "pm", expression = "cheerful", text = "Good morning! Welcome to standup. Let's keep it tight -- yesterday, today, blockers." },
        { speaker = "pm", expression = "neutral", text = "(Three rules. Easy. Fifteen minutes.)" },
        { speaker = "dev", expression = "neutral", text = "Yesterday I set up the repo. Today I'm picking the stack. No blockers." },
        { speaker = "arch", expression = "neutral", text = "I started the architecture doc. We need to discuss the data model before Sam goes too far." },
        { speaker = "dev", expression = "frustrated", text = "I literally just made a git repo." },
        { speaker = "arch", expression = "whiteboarding", text = "Right, but the FOUNDATION matters. I've been thinking about a microservices approach..." },
        { speaker = "pm", expression = "stressed", text = "(Tangent number one. Already.)" },
        { speaker = "pm", expression = "neutral", text = "Let's take that offline. Riley?" },
        { speaker = "qa", expression = "neutral", text = "I'm writing the test plan. Which is hard because we don't have requirements." },
        { speaker = "po", expression = "defensive", text = "I sent a 47-slide deck!" },
        { speaker = "qa", expression = "deadpan", text = "That's a mood board, Priya. It has stock photos of people high-fiving." },
        { speaker = "pm", expression = "stressed", text = "(Tangent two. Riley vs Priya. The eternal beef.)" },
        { speaker = "ux", expression = "neutral", text = "I'm thinking about the design approach. I have some questions." },
        { speaker = "pm", expression = "neutral", text = "Hold those, Alex. Sam, anything else?" },

        { speaker = "pm", expression = "stressed", text = "(I'm losing the room. Make a call.)",
            choices = {
                { text = "Cut everyone off. Park the discussion. Move on.", set = {pushed_interviews = true}, rel = {dev = 1, arch = -1, po = -1} },
                { text = "Let it run. People are talking. That's healthy.", set = {started_wireframes = true}, rel = {po = 1, ux = 1, pm = 0} },
                { text = "Stop the meeting. Schedule a real planning workshop. We're not ready for standup yet.", set = {needs_requirements = true}, rel = {dev = 2, qa = 1, arch = 1, po = -2} },
            }
        },

        -- Park (= research-leaning, decisive)
        { speaker = "pm", expression = "neutral", text = "Okay, parking lot. Architecture, mood boards, ALL of it. We have one job today: status updates.", condition = "pushed_interviews" },
        { speaker = "dev", expression = "smiling", text = "Thank you.", condition = "pushed_interviews" },
        { speaker = "po", expression = "defensive", text = "But I had ideas--", condition = "pushed_interviews" },
        { speaker = "pm", expression = "neutral", text = "Parking lot, Priya. Slack me. I'll add it to the board.", condition = "pushed_interviews" },

        -- Let it run (= compliance, peacemaking)
        { speaker = "pm", expression = "cheerful", text = "Actually, this is good energy. Casey, tell us about microservices.", condition = "started_wireframes" },
        { speaker = "dev", expression = "frustrated", text = "(We're never getting out of this room.)", condition = "started_wireframes" },
        { speaker = "po", expression = "excited", text = "And I'll tell you about my new content layer idea!", condition = "started_wireframes" },
        { speaker = "pm", expression = "stressed", text = "(I made a mistake. The mistake is happening to me right now.)", condition = "started_wireframes" },

        -- Stop everything (= pushback, replan)
        { speaker = "pm", expression = "stressed", text = "Hold up. We don't have requirements. We don't have a data model. We're not doing standup -- we're doing kickoff part two.", condition = "needs_requirements" },
        { speaker = "dev", expression = "neutral", text = "Thank you, Jordan.", condition = "needs_requirements" },
        { speaker = "po", expression = "defensive", text = "But I sent the deck--", condition = "needs_requirements" },
        { speaker = "pm", expression = "neutral", text = "Tomorrow, requirements workshop, two hours. The deck is the input. I need outputs.", condition = "needs_requirements" },

        -- Converge
        { speaker = "pm", expression = "stressed", text = "Great standup everyone. That was... 38 minutes." },
        { speaker = "dev", expression = "smiling", text = "New record. Usually it's worse." },
        { speaker = "pm", expression = "stressed", text = "(Risk register entry: 'Standup discipline.' Severity: high.)" },

        { text = "", goto = "day3" }
    }
}
