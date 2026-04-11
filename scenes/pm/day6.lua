return {
    title = "Day 6 -- Tuesday",
    subtitle = "The Status Report",
    narration = "One week until the demo. Status report due to leadership. The truth is uncomfortable. The lie is dangerous.",

    bg = "desk_closeup",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "pm", expression = "stressed", text = "Tuesday. One week to demo. Director wants a status update by 4 PM." },
        { speaker = "pm", expression = "stressed", text = "(Status report is the PM's confessional. Or their best lie.)" },

        -- Branch on day 2
        { speaker = "pm", expression = "neutral", text = "We have user research data from Alex. It says we're solving the wrong problem.", condition = "pushed_interviews" },
        { speaker = "pm", expression = "stressed", text = "We have wireframes. We don't have validated assumptions.", condition = "started_wireframes" },
        { speaker = "pm", expression = "neutral", text = "We have actual requirements from the workshop. Imperfect, but real.", condition = "needs_requirements" },

        -- The conversation that matters
        { speaker = "ux", expression = "neutral", text = "Jordan, can we talk?" },
        { speaker = "pm", expression = "neutral", text = "Always. What's up?" },
        { speaker = "ux", expression = "thinking", text = "I've been thinking about who we're building this for. And the answer keeps getting murkier." },
        { speaker = "dev", expression = "neutral", text = "Same. I keep building things and asking myself 'who clicks this button?'" },
        { speaker = "qa", expression = "neutral", text = "And I keep filing edge cases and asking 'who would even hit this?'" },
        { speaker = "pm", expression = "stressed", text = "(The team is asking the right question. Now I need an answer.)" },

        -- Priya enters
        { speaker = "po", expression = "excited", text = "Status report time! Let me know what you want to highlight!" },
        { speaker = "pm", expression = "stressed", text = "(Three options. Each one shapes the next two weeks.)" },

        { speaker = "pm", expression = "neutral", text = "What do I tell leadership?",
            choices = {
                { text = "Tell the truth. The team has doubts. We need a re-scope conversation.", set = {followed_data = true}, rel = {dev = 2, qa = 2, ux = 2, po = -2} },
                { text = "Stick to the deck. Vision intact. Schedule on track.", set = {followed_vision = true}, rel = {po = 2, dev = -1, qa = -2} },
                { text = "Frame it as 'evolving alignment.' Hint at scope concerns without setting alarms.", set = {found_middle = true}, rel = {po = 0, dev = 1, ux = 1, pm = 0} },
            }
        },

        -- Truth
        { speaker = "pm", expression = "stressed", text = "Director's going to hate this. But the team needs me to tell the truth.", condition = "followed_data" },
        { speaker = "po", expression = "defensive", text = "Wait, you're going to tell them we have DOUBTS?", condition = "followed_data" },
        { speaker = "pm", expression = "neutral", text = "Yes. Because if the demo lands and we still have doubts, that's worse.", condition = "followed_data" },
        { speaker = "qa", expression = "smirk", text = "That took guts.", condition = "followed_data" },

        -- Vision
        { speaker = "pm", expression = "cheerful", text = "Okay. Story is: vision intact, schedule on track, demo on rails.", condition = "followed_vision" },
        { speaker = "po", expression = "excited", text = "YES. Always sell the vision.", condition = "followed_vision" },
        { speaker = "dev", expression = "frustrated", text = "(Jordan just signed us up to keep pretending.)", condition = "followed_vision" },

        -- Middle
        { speaker = "pm", expression = "neutral", text = "Status: 'Strong direction. Iterating with team input.' Diplomatic. Honest enough.", condition = "found_middle" },
        { speaker = "ux", expression = "neutral", text = "That gives us room to course-correct without admitting we need to.", condition = "found_middle" },
        { speaker = "pm", expression = "neutral", text = "(Diplomacy. The PM's love language.)", condition = "found_middle" },

        -- End of day
        { speaker = "pm", expression = "stressed", text = "(Status report sent. The risk register has 11 entries. The Jira board has 87. Coffee count: 4.)" },

        { text = "", goto = "day7" }
    }
}
