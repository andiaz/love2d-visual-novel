return {
    title = "Day 7 -- Wednesday",
    subtitle = "The Handoff",
    narration = "Sam and Alex are arguing about API calls. They never invite QA to the handoff. You invited yourself.",

    bg = "desk_closeup",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "qa", expression = "deadpan", text = "Wednesday. Dev handoff. The room QA is never invited to. I let myself in." },

        { speaker = "dev", expression = "neutral", text = "Alex. We need to talk about these designs." },
        { speaker = "qa", expression = "deadpan", text = "Sam. We need to talk about these designs together. With me." },
        { speaker = "dev", expression = "smiling", text = "...okay. Pull up a chair.", condition = nil },

        { speaker = "dev", expression = "neutral", text = "This drag-and-drop content organizer. Every drag fires an API call. 50 items, 50 calls." },
        { speaker = "qa", expression = "deadpan", text = "(I'm writing this down. Test case: 'drag operation does not fire 50 API calls.')" },
        { speaker = "ux", expression = "thinking", text = "What if we batch them? Save on drop, not on drag?" },
        { speaker = "qa", expression = "deadpan", text = "(Better test case: 'batched save survives a network drop mid-batch.')" },

        { speaker = "dev", expression = "neutral", text = "Infinite scroll feed. Offset pagination doesn't work for real-time content." },
        { speaker = "arch", expression = "whiteboarding", text = "Cursor-based pagination, not offset-based." },
        { speaker = "qa", expression = "deadpan", text = "(Test case: 'feed handles new items appearing while user scrolls.' I'm building the suite from scratch.)" },

        { speaker = "dev", expression = "tired", text = "Alex, here's the deal. Some interactions are expensive to build AND expensive to run. I have to make calls." },
        { speaker = "qa", expression = "neutral", text = "And I have to test whatever survives. So this conversation is mine too." },

        { speaker = "qa", expression = "neutral", text = "(Three options. As QA, I get to push for one.)",
            choices = {
                { text = "Side with Sam. Simplify. Less surface = less to break.", set = {simplified_ux = true}, rel = {dev = 2, arch = 1, ux = -1} },
                { text = "Side with Alex. The interactions matter. I'll write more tests.", set = {kept_complex_ux = true}, rel = {ux = 2, dev = -2, qa = -1} },
                { text = "Make them pair. Build live, test as we go. I'll write tests in real time.", set = {paired_with_dev = true}, rel = {dev = 2, ux = 2, arch = 1} },
            }
        },

        -- Simplified
        { speaker = "qa", expression = "neutral", text = "Less surface, less to break. I'm with Sam. Cut the fancy stuff.", condition = "simplified_ux" },
        { speaker = "dev", expression = "smiling", text = "Thank you, Riley.", condition = "simplified_ux" },
        { speaker = "ux", expression = "frustrated", text = "But the interactions...", condition = "simplified_ux" },
        { speaker = "qa", expression = "deadpan", text = "Will be untested. Untested = broken in production. Pick.", condition = "simplified_ux" },

        -- Complex
        { speaker = "qa", expression = "deadpan", text = "Fine. The interactions stay. I will write 80 test cases for them. Some of you will hate me.", condition = "kept_complex_ux" },
        { speaker = "ux", expression = "excited", text = "I love you, Riley.", condition = "kept_complex_ux" },
        { speaker = "qa", expression = "smirk", text = "(I will hold you to that on Friday at 11 PM.)", condition = "kept_complex_ux" },

        -- Pair
        { speaker = "qa", expression = "neutral", text = "Pair them. Same desk. I'll sit on the other side and write tests while they build. Real-time loop.", condition = "paired_with_dev" },
        { speaker = "dev", expression = "smiling", text = "Three-way pairing. Designer, dev, QA. Unheard of.", condition = "paired_with_dev" },
        { speaker = "qa", expression = "smirk", text = "Healing, even.", condition = "paired_with_dev" },

        -- End
        { speaker = "qa", expression = "deadpan", text = "(QA at the table. From the start. I am not used to this. I could get used to this.)" },

        { text = "", goto = "day8" }
    }
}
