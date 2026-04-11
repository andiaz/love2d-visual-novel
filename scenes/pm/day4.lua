return {
    title = "Day 4 -- Thursday",
    subtitle = "The Design Review",
    narration = "Alex is presenting designs. Your job: keep the room from devolving into a brawl. Good luck.",

    bg = "meeting_room",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "pm", expression = "neutral", text = "Thursday. Design review day. The first real one." },
        { speaker = "pm", expression = "cheerful", text = "Alright everyone, Alex has designs to walk us through. Constructive feedback only. Please." },
        { speaker = "ux", expression = "neutral", text = "I've mapped out the core flows -- onboarding, content creation, the feed. First pass." },

        -- The chaos begins
        { speaker = "arch", expression = "whiteboarding", text = "Before we go further -- the data model behind this content feed. Relational or document-based?" },
        { speaker = "dev", expression = "neutral", text = "Casey, it's a design review. Not an architecture review." },
        { speaker = "pm", expression = "stressed", text = "(Tangent one. Make a note.)" },

        { speaker = "po", expression = "excited", text = "I love it! But can we also add a leaderboard? And achievements? Gamification was on slide 34." },
        { speaker = "qa", expression = "deadpan", text = "You're referencing a slide nobody has seen." },
        { speaker = "po", expression = "defensive", text = "It's a GREAT slide." },
        { speaker = "pm", expression = "stressed", text = "(Tangent two. Scope expansion. Note it.)" },

        { speaker = "dev", expression = "neutral", text = "Honest question -- did anyone think about mobile? These layouts are clearly desktop-first." },
        { speaker = "ux", expression = "frustrated", text = "(Because nobody told me the mobile requirements.)" },
        { speaker = "pm", expression = "stressed", text = "(That's on me. Mobile spec was supposed to come from Priya. I should have chased it.)" },

        { speaker = "qa", expression = "neutral", text = "What happens when a user uploads a 200MB file? Screen readers? Display name with 400 characters?" },
        { speaker = "pm", expression = "stressed", text = "(Risk register: edge cases. Add. Add. Add.)" },

        -- The choice: which feedback do you elevate?
        { speaker = "pm", expression = "neutral", text = "Alex needs a clear direction. As facilitator, I have to pick a thread.",
            choices = {
                { text = "Elevate Sam and Casey's tech feedback. Tech debt is the silent killer.", set = {prioritized_tech = true}, rel = {dev = 2, arch = 2, po = -2} },
                { text = "Elevate Priya's product asks. Stakeholder happiness keeps the project funded.", set = {prioritized_product = true}, rel = {po = 2, dev = -1, qa = -1} },
                { text = "Elevate Riley's accessibility concerns. We can't ship something that excludes users.", set = {prioritized_users = true}, rel = {qa = 2, dev = 1, po = -2} },
            }
        },

        -- Tech
        { speaker = "pm", expression = "neutral", text = "Alex, Casey, Sam -- I want a tech-design sync this afternoon. We align before more designs land.", condition = "prioritized_tech" },
        { speaker = "dev", expression = "smiling", text = "Thank you. Seriously.", condition = "prioritized_tech" },
        { speaker = "po", expression = "defensive", text = "But the gamification...", condition = "prioritized_tech" },
        { speaker = "pm", expression = "neutral", text = "Parking lot, Priya. We'll get to it.", condition = "prioritized_tech" },

        -- Product
        { speaker = "pm", expression = "cheerful", text = "Priya, send your feature list to Alex by EOD. Alex, prioritize from the top.", condition = "prioritized_product" },
        { speaker = "po", expression = "excited", text = "Yes! On it!", condition = "prioritized_product" },
        { speaker = "dev", expression = "frustrated", text = "(More features. Great.)", condition = "prioritized_product" },
        { speaker = "pm", expression = "stressed", text = "(Risk register: scope. I'm going to regret this.)", condition = "prioritized_product" },

        -- Users
        { speaker = "pm", expression = "neutral", text = "Riley, you're in the next design review. Mandatory. Alex, accessibility audit before handoff.", condition = "prioritized_users" },
        { speaker = "qa", expression = "smirk", text = "Finally, a PM with sense.", condition = "prioritized_users" },
        { speaker = "po", expression = "defensive", text = "But the demo is in less than two weeks!", condition = "prioritized_users" },
        { speaker = "pm", expression = "neutral", text = "Accessibility isn't a nice-to-have. It's the contract.", condition = "prioritized_users" },

        -- End of day
        { speaker = "pm", expression = "stressed", text = "(That meeting was 75 minutes. I scheduled 45.)" },
        { speaker = "pm", expression = "stressed", text = "(But people talked to each other. That's a win. I'll take it.)" },

        { text = "", goto = "day5" }
    }
}
