return {
    bg = "office_day",
    bgm = "theme",

    dialogue = {
        { speaker = "ux", expression = "neutral", text = "Tuesday. One week until the demo. Time to confront an uncomfortable truth." },

        -- If player has research data (pushed_interviews from day 2)
        { speaker = "ux", expression = "neutral", text = "My interview findings are clear. Users don't want what we're building.", condition = "pushed_interviews" },
        { speaker = "ux", expression = "neutral", text = "They want better search in their existing tools. Not a whole new platform.", condition = "pushed_interviews" },
        { speaker = "qa", expression = "neutral", text = "So the research says the 47-slide deck is wrong?", condition = "pushed_interviews" },
        { speaker = "ux", expression = "neutral", text = "The research says the problem we're solving isn't the problem users actually have.", condition = "pushed_interviews" },

        -- If player has no research (didn't push for interviews)
        { speaker = "ux", expression = "neutral", text = "I just realized something. I've been designing for a week and I've never talked to an actual user.", condition = {pushed_interviews = nil} },
        { speaker = "ux", expression = "neutral", text = "Everything I know about our users comes from Priya's deck. Slide 7: 'Users love sharing knowledge!'", condition = {pushed_interviews = nil} },
        { speaker = "ux", expression = "neutral", text = "(Citation: none.)", condition = {pushed_interviews = nil} },

        -- The confrontation
        { speaker = "po", expression = "neutral", text = "Alex! I've been thinking about the content creation flow. Can we add templates? And AI suggestions?" },
        { speaker = "ux", expression = "neutral", text = "Priya, can I be honest with you about something?" },
        { speaker = "po", expression = "neutral", text = "Of course! I love honesty!" },

        { speaker = "ux", expression = "neutral", text = "This is the moment. Do I follow the data — or follow the vision?",
            choices = {
                { text = "The user research shows we're solving the wrong problem.", set = {followed_data = true}, rel = {po = -2, qa = 2, dev = 1, arch = 1} },
                { text = "I think the vision is strong. Let's double down on it.", set = {followed_vision = true}, rel = {po = 2, pm = 1, qa = -2, dev = -1} },
                { text = "The vision is good, but we need to narrow the scope to what users actually need.", set = {found_middle = true}, rel = {po = 0, pm = 2, qa = 1, dev = 1} },
            }
        },

        -- Data path
        { speaker = "po", expression = "neutral", text = "Wrong problem? But the deck... the vision...", condition = "followed_data" },
        { speaker = "ux", expression = "neutral", text = "The deck is a hypothesis. The data tells a different story.", condition = "followed_data" },
        { speaker = "po", expression = "neutral", text = "I... need to think about this.", condition = "followed_data" },
        { speaker = "qa", expression = "neutral", text = "That took guts, Alex.", condition = "followed_data" },

        -- Vision path
        { speaker = "po", expression = "neutral", text = "Yes! I knew you'd see it! The vision is everything!", condition = "followed_vision" },
        { speaker = "qa", expression = "neutral", text = "Are we just going to ignore what users actually want?", condition = "followed_vision" },
        { speaker = "ux", expression = "neutral", text = "(Am I? Maybe. But the demo is in a week and pivoting now would be chaos.)", condition = "followed_vision" },

        -- Middle path
        { speaker = "po", expression = "neutral", text = "Narrow the scope? But everything is essential!", condition = "found_middle" },
        { speaker = "ux", expression = "neutral", text = "What if we keep the knowledge-sharing core but build it around actual pain points? Better search, simpler sharing.", condition = "found_middle" },
        { speaker = "pm", expression = "neutral", text = "That... actually sounds like a plan. Priya?", condition = "found_middle" },
        { speaker = "po", expression = "neutral", text = "I mean... if search is what they want... I guess search can be exciting?", condition = "found_middle" },

        -- End of day
        { speaker = "dev", expression = "neutral", text = "How'd the conversation with Priya go?" },
        { speaker = "ux", expression = "neutral", text = "About as well as you'd expect when you tell someone their baby is ugly." },
        { speaker = "dev", expression = "neutral", text = "Welcome to product development." },

        { text = "", goto = "day7" }
    }
}
