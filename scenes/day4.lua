return {
    title = "Day 4 — Thursday",
    subtitle = "The Design Review",
    narration = "Time to present the designs. Everyone has feedback. Everyone.",

    bg = "office_day",
    bgm = "theme",

    dialogue = {
        { speaker = "ux", expression = "neutral", text = "Thursday. Design review day. Time to show the team what I've been working on." },
        { speaker = "pm", expression = "neutral", text = "Alright everyone, Alex has some designs to walk us through. Let's keep feedback constructive." },
        { speaker = "ux", expression = "neutral", text = "So I've mapped out the core user flows — onboarding, content creation, and the feed. Here's the first pass." },

        -- Casey's feedback
        { speaker = "arch", expression = "neutral", text = "Before we go further — the data model behind this content feed. Are we thinking relational or document-based?" },
        { speaker = "dev", expression = "neutral", text = "Casey, it's a design review. Not an architecture review." },
        { speaker = "arch", expression = "neutral", text = "The two are connected! If Alex designs a nested comment thread, that has database implications." },

        -- Priya's feedback
        { speaker = "po", expression = "neutral", text = "I love it! But can we also add a leaderboard? And achievements? Gamification was on slide 34." },
        { speaker = "qa", expression = "neutral", text = "You're referencing a slide nobody has seen." },
        { speaker = "po", expression = "neutral", text = "It's a GREAT slide." },

        -- Sam's feedback
        { speaker = "dev", expression = "neutral", text = "Honest question — did anyone think about mobile? These layouts are clearly desktop-first." },
        { speaker = "ux", expression = "neutral", text = "(Because nobody told me the mobile requirements.)" },

        -- Riley's feedback
        { speaker = "qa", expression = "neutral", text = "What happens when a user uploads a 200MB file? What about users with screen readers? What if someone's display name is 400 characters?" },
        { speaker = "pm", expression = "neutral", text = "Riley, maybe pick your top concern?" },
        { speaker = "qa", expression = "neutral", text = "Accessibility. It's not optional." },
        { speaker = "ux", expression = "neutral", text = "(Riley's right. I should have flagged that earlier.)" },

        -- The choice
        { speaker = "pm", expression = "neutral", text = "Okay, we have a lot of feedback. Alex, what's your priority for the next iteration?",
            choices = {
                { text = "I'll address the technical constraints first.", set = {prioritized_tech = true}, rel = {dev = 2, arch = 2, po = -1} },
                { text = "I'll add the features Priya wants.", set = {prioritized_product = true}, rel = {po = 2, pm = 1, dev = -1, qa = -1} },
                { text = "I'll focus on accessibility and core UX.", set = {prioritized_users = true}, rel = {qa = 2, dev = 1, po = -2} },
            }
        },

        -- Tech path
        { speaker = "dev", expression = "neutral", text = "Thank you. Seriously. Let's sync on what's actually buildable.", condition = "prioritized_tech" },
        { speaker = "arch", expression = "neutral", text = "I'll prepare a technical constraints doc. Let me draw something...", condition = "prioritized_tech" },
        { speaker = "po", expression = "neutral", text = "But the gamification...", condition = "prioritized_tech" },

        -- Product path
        { speaker = "po", expression = "neutral", text = "Yes! Now we're talking! I'll send you a list of features by end of day.", condition = "prioritized_product" },
        { speaker = "dev", expression = "neutral", text = "A list. More features. Great.", condition = "prioritized_product" },
        { speaker = "qa", expression = "neutral", text = "We're adding scope to a design that hasn't been tested with a single user.", condition = "prioritized_product" },

        -- Users path
        { speaker = "qa", expression = "neutral", text = "Finally, someone with sense.", condition = "prioritized_users" },
        { speaker = "po", expression = "neutral", text = "But the demo is in less than two weeks! We need features, not polish!", condition = "prioritized_users" },
        { speaker = "ux", expression = "neutral", text = "Accessible design isn't polish. It's the baseline.", condition = "prioritized_users" },

        -- End of day
        { speaker = "ux", expression = "neutral", text = "Design reviews. Where everyone's an expert and nothing gets decided." },
        { speaker = "ux", expression = "neutral", text = "At least Jordan took notes. Probably. Maybe." },

        { text = "", goto = "day5" }
    }
}
