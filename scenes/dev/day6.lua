return {
    title = "Day 6 -- Tuesday",
    subtitle = "Tech Debt vs. Features",
    narration = "One week until the demo. The codebase is starting to whisper. You can either listen now or scream later.",

    bg = "desk_closeup",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "dev", expression = "tired", text = "Tuesday. The codebase is talking to me. It's not saying nice things." },

        -- If player did the spike
        { speaker = "dev", expression = "neutral", text = "The spike findings paid off. I know exactly what's going to scale and what isn't.", condition = "pushed_interviews" },
        { speaker = "arch", expression = "neutral", text = "Show me the worst part.", condition = "pushed_interviews" },
        { speaker = "dev", expression = "neutral", text = "The notification fan-out. If a popular post gets 10k likes, that's 10k DB writes. We need a queue.", condition = "pushed_interviews" },

        -- If player started scaffolding
        { speaker = "dev", expression = "tired", text = "I'm three days into the scaffold. The auth flow is ducktaped. The schema needs to change. I knew it would.", condition = "started_wireframes" },
        { speaker = "arch", expression = "concerned", text = "I told you. Document the model first.", condition = "started_wireframes" },
        { speaker = "dev", expression = "neutral", text = "I know, Casey.", condition = "started_wireframes" },

        -- If player held out for requirements
        { speaker = "dev", expression = "neutral", text = "We have requirements. Sort of. Priya wrote a 'living doc' which is a Notion page that updates itself.", condition = "needs_requirements" },
        { speaker = "qa", expression = "deadpan", text = "Schrodinger's spec.", condition = "needs_requirements" },

        -- The honest moment
        { speaker = "dev", expression = "tired", text = "Look. I need to say something out loud." },
        { speaker = "dev", expression = "tired", text = "We've been making decisions based on what Priya wants this week. Not based on what we know about the actual users." },
        { speaker = "ux", expression = "neutral", text = "I've been thinking the same thing." },
        { speaker = "dev", expression = "neutral", text = "I want to know what users actually do with knowledge tools. Not what we imagine they do." },
        { speaker = "po", expression = "excited", text = "Sam! I'm so glad you're engaged with the vision!" },
        { speaker = "dev", expression = "frustrated", text = "Priya, I'm engaged with not building the wrong thing." },

        { speaker = "dev", expression = "neutral", text = "(So which is it? Trust the data, trust the deck, or split the difference?)",
            choices = {
                { text = "I'll only build what we have evidence users need.", set = {followed_data = true}, rel = {po = -2, qa = 2, ux = 2, arch = 1} },
                { text = "Forget it. Just tell me the priority list and I'll build it.", set = {followed_vision = true}, rel = {po = 2, pm = 1, qa = -2} },
                { text = "We keep the vision, but I scope the implementation to what's actually validated.", set = {found_middle = true}, rel = {pm = 2, arch = 1, ux = 1} },
            }
        },

        -- Data
        { speaker = "po", expression = "defensive", text = "But the deck--", condition = "followed_data" },
        { speaker = "dev", expression = "neutral", text = "The deck is your hypothesis. My job is to test it before betting four weeks of code on it.", condition = "followed_data" },
        { speaker = "qa", expression = "smirk", text = "That took guts.", condition = "followed_data" },

        -- Vision
        { speaker = "po", expression = "excited", text = "Yes! The vision-driven approach!", condition = "followed_vision" },
        { speaker = "dev", expression = "tired", text = "(I just gave up the steering wheel to a 47-slide deck. This will end well.)", condition = "followed_vision" },

        -- Middle
        { speaker = "pm", expression = "neutral", text = "That's actually... a plan.", condition = "found_middle" },
        { speaker = "dev", expression = "neutral", text = "Vision sets the destination. Engineering picks the route.", condition = "found_middle" },
        { speaker = "arch", expression = "neutral", text = "I can live with that.", condition = "found_middle" },

        -- End of day
        { speaker = "ux", expression = "neutral", text = "How was the conversation with Priya?" },
        { speaker = "dev", expression = "tired", text = "About as well as you'd expect when you tell someone their slides are a hypothesis." },
        { speaker = "ux", expression = "neutral", text = "Welcome to product development." },

        { text = "", goto = "day7" }
    }
}
