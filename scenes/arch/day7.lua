return {
    title = "Day 7 -- Wednesday",
    subtitle = "The Handoff",
    narration = "Sam and Alex are in the handoff. Every interaction is a service boundary you have to defend.",

    bg = "desk_closeup",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "arch", expression = "neutral", text = "Wednesday. Dev handoff. The day designs become contracts." },
        { speaker = "dev", expression = "neutral", text = "Alex. We need to talk about these designs." },
        { speaker = "ux", expression = "neutral", text = "(Here we go.)" },
        { speaker = "arch", expression = "concerned", text = "(I am going to sit in this meeting. Quietly. Until the moment I cannot.)" },

        { speaker = "dev", expression = "neutral", text = "This drag-and-drop content organizer. Every drag fires an API call." },
        { speaker = "arch", expression = "whiteboarding", text = "Cursor-based. Bulk endpoint. Idempotency token on each operation. Optimistic UI on the client. I have a diagram." },
        { speaker = "dev", expression = "neutral", text = "...that actually solves it. Send me the diagram.", condition = nil },
        { speaker = "arch", expression = "concerned", text = "(They listened. THEY LISTENED. I've been waiting six days for this.)" },

        { speaker = "dev", expression = "neutral", text = "This infinite scroll feed. Offset pagination won't work for real-time content." },
        { speaker = "arch", expression = "whiteboarding", text = "Cursor-based. Stable cursor on creation timestamp plus tiebreaker on document ID. The cursor survives concurrent inserts." },
        { speaker = "dev", expression = "smiling", text = "Casey. You DO know things.", condition = nil },

        { speaker = "dev", expression = "tired", text = "Alex, here's the deal. Some of these interactions are expensive. I have to make calls about what survives." },
        { speaker = "arch", expression = "concerned", text = "(My turn to weigh in. The architect has more leverage than people think, in this exact moment.)" },

        { speaker = "arch", expression = "neutral", text = "(Three options. The architecture has to either stretch or hold.)",
            choices = {
                { text = "Cut the fancy stuff. The architecture stays simple. We ship something maintainable.", set = {simplified_ux = true}, rel = {dev = 2, qa = 1, ux = -1} },
                { text = "Build it as designed. The architecture grows to support it. We accept the complexity.", set = {kept_complex_ux = true}, rel = {ux = 2, po = 1, dev = -1} },
                { text = "Pair them. I'll sit nearby. When you hit an architectural wall, ask. We solve it live.", set = {paired_with_dev = true}, rel = {dev = 2, ux = 2, qa = 1} },
            }
        },

        -- Simplified
        { speaker = "arch", expression = "neutral", text = "Cut. The architecture stays simple. We ship something we can maintain. The fancy interactions go in v2.", condition = "simplified_ux" },
        { speaker = "dev", expression = "smiling", text = "Thank you, Casey.", condition = "simplified_ux" },

        -- Complex
        { speaker = "arch", expression = "whiteboarding", text = "Build it. The architecture grows to support it. I have a diagram for that too.", condition = "kept_complex_ux" },
        { speaker = "dev", expression = "frustrated", text = "Casey. We have eight days.", condition = "kept_complex_ux" },
        { speaker = "arch", expression = "concerned", text = "(I just signed up to defend an architecture I am not sure I can defend. I will draw harder.)", condition = "kept_complex_ux" },

        -- Pair
        { speaker = "arch", expression = "neutral", text = "Pair. Same room. When you hit an architectural wall, ask. I will draw the answer in real time.", condition = "paired_with_dev" },
        { speaker = "dev", expression = "smiling", text = "Three-way pairing. Designer, dev, architect. If this works, I want it written into the team charter.", condition = "paired_with_dev" },
        { speaker = "arch", expression = "neutral", text = "(I have spent six years drawing diagrams in rooms that nobody else was in. This is going to be uncomfortable. In the good way.)", condition = "paired_with_dev" },

        -- End
        { speaker = "arch", expression = "concerned", text = "(The gap between design and architecture isn't a gap. It's a translation problem. Today I am, finally, the translator.)" },

        { text = "", goto = "day8" }
    }
}
