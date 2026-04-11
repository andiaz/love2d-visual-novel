return {
    title = "Day 6 -- Tuesday",
    subtitle = "The Vision Question",
    narration = "One week to demo. Alex pulls you aside. They have research. The research disagrees with your deck.",

    bg = "desk_closeup",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "po", expression = "excited", text = "Tuesday. One week to demo. The vision is alive." },

        -- Branch
        { speaker = "ux", expression = "thinking", text = "Priya, can we talk? I have research findings.", condition = "pushed_interviews" },
        { speaker = "dev", expression = "neutral", text = "Priya, I want to show you something. The team has been talking.", condition = "started_wireframes" },
        { speaker = "ux", expression = "neutral", text = "Priya, remember the acceptance criteria you wrote? They held up. We need more.", condition = "needs_requirements" },

        -- The hard conversation
        { speaker = "ux", expression = "neutral", text = "Priya, can I be honest with you about something?" },
        { speaker = "po", expression = "neutral", text = "Of course! I love honesty!" },
        { speaker = "po", expression = "defensive", text = "(Famous last words.)" },
        { speaker = "ux", expression = "neutral", text = "I've been talking to people. To users. The thing we're building -- they don't want it." },
        { speaker = "ux", expression = "neutral", text = "They want better search in their existing tools. Not a whole new platform." },
        { speaker = "po", expression = "defensive", text = "(I just felt the floor move. The deck. Six months. The pitch.)" },
        { speaker = "po", expression = "defensive", text = "But the deck... the vision..." },
        { speaker = "po", expression = "defensive", text = "(Don't react. Listen. Think.)" },

        { speaker = "po", expression = "neutral", text = "(Three answers. I've never had to give one of these. They're all uncomfortable.)",
            choices = {
                { text = "Trust the data. Pivot the scope. The deck was a hypothesis.", set = {followed_data = true}, rel = {ux = 2, dev = 2, qa = 2, arch = 1} },
                { text = "Trust the vision. The deck is the deck. Push through.", set = {followed_vision = true}, rel = {ux = -2, dev = -1, qa = -2} },
                { text = "Find the middle. Keep the vision shape, narrow the scope to validated needs.", set = {found_middle = true}, rel = {pm = 2, ux = 1, dev = 1, qa = 1} },
            }
        },

        -- Data
        { speaker = "po", expression = "neutral", text = "You're right. The deck was my pitch. Your data is reality. Reality wins.", condition = "followed_data" },
        { speaker = "po", expression = "neutral", text = "(That hurt. I built that deck. But she is right.)", condition = "followed_data" },
        { speaker = "ux", expression = "excited", text = "Priya. Thank you.", condition = "followed_data" },
        { speaker = "qa", expression = "smirk", text = "Did Priya just admit her deck was wrong?", condition = "followed_data" },

        -- Vision
        { speaker = "po", expression = "excited", text = "The vision is everything! We can't pivot now!", condition = "followed_vision" },
        { speaker = "qa", expression = "deadpan", text = "Are we just going to ignore what users actually want?", condition = "followed_vision" },
        { speaker = "po", expression = "defensive", text = "(It's MY vision. I'm not letting it go.)", condition = "followed_vision" },

        -- Middle
        { speaker = "po", expression = "neutral", text = "What if we keep the shape -- knowledge sharing -- but narrow the scope to the validated pain points? Better search, simpler sharing.", condition = "found_middle" },
        { speaker = "ux", expression = "neutral", text = "That... that actually works.", condition = "found_middle" },
        { speaker = "pm", expression = "neutral", text = "And it sounds like the same product. Just smaller. Leadership won't notice the cuts.", condition = "found_middle" },
        { speaker = "po", expression = "neutral", text = "(Diplomatic Priya. Who knew she existed.)", condition = "found_middle" },

        -- End of day
        { speaker = "po", expression = "neutral", text = "(Six months of pitching. One conversation that almost broke the project. Or saved it. I won't know which until Friday.)" },

        { text = "", goto = "day7" }
    }
}
