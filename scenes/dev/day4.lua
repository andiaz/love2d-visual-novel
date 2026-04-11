return {
    title = "Day 4 -- Thursday",
    subtitle = "The Design Review",
    narration = "Alex is presenting the designs. You're in the room because someone has to say what's actually buildable.",

    bg = "meeting_room",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "dev", expression = "neutral", text = "Thursday. Design review. The day I find out what I'm being asked to build." },
        { speaker = "pm", expression = "neutral", text = "Alright everyone, Alex has designs to walk us through. Constructive feedback only." },
        { speaker = "ux", expression = "neutral", text = "I've mapped out the core flows -- onboarding, content creation, the feed. Here's the first pass." },
        { speaker = "dev", expression = "neutral", text = "(Big screens. Many screens. So many screens.)" },

        -- Casey
        { speaker = "arch", expression = "whiteboarding", text = "Before we go further -- the data model behind this content feed. Relational or document-based?" },
        { speaker = "dev", expression = "neutral", text = "Casey, let Alex finish presenting." },
        { speaker = "arch", expression = "neutral", text = "But it matters now. If the comments are nested, the schema changes." },
        { speaker = "dev", expression = "neutral", text = "(He's right. I just don't want to admit it in front of Priya.)" },

        -- Priya
        { speaker = "po", expression = "excited", text = "I love it! But can we also add a leaderboard? And achievements? Gamification was on slide 34." },
        { speaker = "dev", expression = "frustrated", text = "Priya. Every feature is a database table, an API, a screen, and a regression risk. Pick the ones that matter." },
        { speaker = "po", expression = "defensive", text = "They ALL matter!" },

        -- The mobile question (you ask it because you have to live with it)
        { speaker = "dev", expression = "neutral", text = "Honest question -- did anyone think about mobile? These layouts are clearly desktop-first." },
        { speaker = "ux", expression = "frustrated", text = "(Because nobody told me the mobile requirements.)" },
        { speaker = "dev", expression = "neutral", text = "Right. Because nobody wrote them down. Cool cool cool." },

        -- Riley
        { speaker = "qa", expression = "neutral", text = "What happens when a user uploads a 200MB file? What about screen readers? What if someone's display name is 400 characters?" },
        { speaker = "dev", expression = "neutral", text = "(Riley is the only person in this room who's seen this movie before.)" },

        -- The choice
        { speaker = "pm", expression = "neutral", text = "Sam, what's your engineering priority for the next iteration?",
            choices = {
                { text = "Cut the scope. Pick three flows. Build them well.", set = {prioritized_tech = true}, rel = {arch = 2, qa = 1, po = -2} },
                { text = "I'll just build everything Alex designed. We'll see what breaks.", set = {prioritized_product = true}, rel = {po = 2, ux = 1, arch = -1} },
                { text = "Accessibility and mobile parity from day one. The rest comes after.", set = {prioritized_users = true}, rel = {qa = 2, ux = 1, po = -2} },
            }
        },

        -- Tech path
        { speaker = "arch", expression = "neutral", text = "Yes. Three flows, done well. Show, don't sprawl.", condition = "prioritized_tech" },
        { speaker = "dev", expression = "neutral", text = "Onboarding, content creation, feed. That's the demo. Everything else is roadmap.", condition = "prioritized_tech" },
        { speaker = "po", expression = "defensive", text = "But the gamification...", condition = "prioritized_tech" },

        -- Product path
        { speaker = "po", expression = "excited", text = "Yes! Build it all! I'll send a feature list by EOD!", condition = "prioritized_product" },
        { speaker = "dev", expression = "tired", text = "(I am going to regret this for the rest of the sprint.)", condition = "prioritized_product" },
        { speaker = "qa", expression = "deadpan", text = "I'll start expanding the regression matrix. Again.", condition = "prioritized_product" },

        -- Users path
        { speaker = "qa", expression = "smirk", text = "Finally, an engineer with priorities.", condition = "prioritized_users" },
        { speaker = "dev", expression = "neutral", text = "Accessibility isn't polish. It's the contract. We're not shipping a thing screen readers can't use.", condition = "prioritized_users" },
        { speaker = "po", expression = "defensive", text = "But the demo is in less than two weeks!", condition = "prioritized_users" },
        { speaker = "ux", expression = "excited", text = "Sam's right. I'm with him.", condition = "prioritized_users" },

        -- End of day
        { speaker = "dev", expression = "tired", text = "(Design reviews. Where five people give six opinions and one person has to ship them.)" },

        { text = "", goto = "day5" }
    }
}
