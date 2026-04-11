return {
    title = "Day 7 -- Wednesday",
    subtitle = "The Trade-Offs",
    narration = "Sam and Alex are arguing about your features. Sam has API math. Alex has design specs. You have to pick which one matters.",

    bg = "desk_closeup",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "po", expression = "neutral", text = "Wednesday. Dev handoff. The day my features turn into engineering tickets." },
        { speaker = "dev", expression = "neutral", text = "Alex. We need to talk about these designs." },
        { speaker = "ux", expression = "neutral", text = "(Here we go.)" },
        { speaker = "po", expression = "neutral", text = "(The PO's job during dev handoff: shut up unless asked. I am bad at this.)" },

        { speaker = "dev", expression = "neutral", text = "This drag-and-drop content organizer. You know how many API calls that is?" },
        { speaker = "ux", expression = "thinking", text = "I... didn't think about the API calls." },
        { speaker = "dev", expression = "neutral", text = "Every drag fires a request. With 50 items, that's 50 calls. Mobile users will time out." },
        { speaker = "po", expression = "defensive", text = "(But the drag-and-drop is the WHOLE INTERACTION.)" },
        { speaker = "po", expression = "neutral", text = "(Don't say it out loud. Listen.)" },

        { speaker = "arch", expression = "whiteboarding", text = "I've been saying this. Cursor-based pagination, not offset-based." },
        { speaker = "dev", expression = "neutral", text = "Casey, I know. I was getting there." },

        { speaker = "dev", expression = "tired", text = "Look. I respect the designs. But some of these are expensive. I have to make calls about what survives the demo." },
        { speaker = "po", expression = "neutral", text = "(Sam is asking for permission. Alex is hoping I pick her side. Three options.)" },

        { speaker = "po", expression = "neutral", text = "(Trade-offs. The actual job.)",
            choices = {
                { text = "Side with Sam. Cut the fancy interactions. Functional > beautiful.", set = {simplified_ux = true}, rel = {dev = 2, arch = 1, ux = -1} },
                { text = "Side with Alex. The interactions are the product. Sam, find a way.", set = {kept_complex_ux = true}, rel = {ux = 2, dev = -2, pm = -1} },
                { text = "Make them pair. Build live. Adjust as you hit walls.", set = {paired_with_dev = true}, rel = {dev = 2, ux = 2, arch = 1, pm = 1} },
            }
        },

        -- Simplified
        { speaker = "po", expression = "neutral", text = "Sam, you have the call. The interactions can wait for v2.", condition = "simplified_ux" },
        { speaker = "ux", expression = "frustrated", text = "Priya... that's most of the design.", condition = "simplified_ux" },
        { speaker = "po", expression = "neutral", text = "I know. I'm sorry. We ship a smaller thing that works.", condition = "simplified_ux" },

        -- Complex
        { speaker = "po", expression = "excited", text = "Sam, find a way. The interactions are what makes Chimera FEEL right.", condition = "kept_complex_ux" },
        { speaker = "dev", expression = "frustrated", text = "Then I need three more days. Demo is Friday.", condition = "kept_complex_ux" },
        { speaker = "po", expression = "defensive", text = "(I just made the team's life harder. But the vision needs the polish.)", condition = "kept_complex_ux" },

        -- Pair
        { speaker = "po", expression = "neutral", text = "Pair on it. Same desk, build live, tradeoffs in real time. I'll back whatever you decide together.", condition = "paired_with_dev" },
        { speaker = "dev", expression = "smiling", text = "Designer-developer pairing. It's like pair programming except one of us can't code.", condition = "paired_with_dev" },
        { speaker = "ux", expression = "excited", text = "Priya, that's perfect. Thank you.", condition = "paired_with_dev" },

        -- End of day
        { speaker = "po", expression = "neutral", text = "(The hardest part of being a PO isn't having ideas. It's letting the team make them real.)" },

        { text = "", goto = "day8" }
    }
}
