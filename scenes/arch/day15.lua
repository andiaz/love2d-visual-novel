return {
    title = "Day 15",
    subtitle = "The End",
    narration = "The whiteboard is blank. The architecture exists in code now, not in theory.",

    bg = "break_room",
    bgm = "late_night",

    dialogue = {
        { speaker = "arch", expression = "neutral", text = "Someone erased the whiteboard. All of it. The boxes, the arrows, the color-coded microservice boundaries." },
        { speaker = "arch", expression = "concerned", text = "I should be upset. Instead I feel something like relief." },
        { speaker = "arch", expression = "neutral", text = "The architecture isn't on the whiteboard anymore. It's in the code. For better or worse." },

        { text = "..." },

        -- Conditional memory: drew boxes early
        { speaker = "arch", expression = "neutral", text = "I think about that first day. When I started sketching before anyone had finished introducing themselves.", condition = "arch_drew_boxes" },
        { speaker = "arch", expression = "concerned", text = "I was so eager to design the system that I forgot to understand the problem.", condition = "arch_drew_boxes" },

        -- Conditional memory: asked about data
        { speaker = "arch", expression = "neutral", text = "I think about that first day. When I asked about data models before anyone mentioned features.", condition = "arch_asked_data" },
        { speaker = "arch", expression = "neutral", text = "Start with the data. The features change. The data endures. I still believe that.", condition = "arch_asked_data" },

        -- Conditional memory: fought scope
        { speaker = "arch", expression = "neutral", text = "I remember the scope conversation. Explaining that 'just add real-time' isn't a sentence that means anything in engineering.", condition = "fought_scope" },
        { speaker = "arch", expression = "concerned", text = "They heard the 'no' but not the reason. Architecture is full of 'no's with reasons nobody reads.", condition = "fought_scope" },

        -- Conditional memory: absorbed scope
        { speaker = "arch", expression = "concerned", text = "I remember saying the architecture could handle the scope expansion. It couldn't. I knew it couldn't.", condition = "absorbed_scope" },
        { speaker = "arch", expression = "neutral", text = "I designed for a system that didn't exist yet. That's optimism masquerading as engineering.", condition = "absorbed_scope" },

        -- Conditional memory: paired with dev
        { speaker = "arch", expression = "neutral", text = "I think about working with Sam. The arguments about abstraction levels. The compromises.", condition = "paired_with_dev" },
        { speaker = "arch", expression = "neutral", text = "The best architecture is the one your developers actually use. Sam taught me that.", condition = "paired_with_dev" },

        -- Conditional memory: took ownership
        { speaker = "arch", expression = "neutral", text = "I think about the bugs. The ones in the foundation, not the features.", condition = "took_ownership" },
        { speaker = "arch", expression = "concerned", text = "When the architect owns the architectural bugs, the whole team breathes easier.", condition = "took_ownership" },

        -- Conditional memory: set boundaries
        { speaker = "arch", expression = "neutral", text = "I think about going home that night. Leaving the whiteboard half-drawn.", condition = "set_boundaries" },
        { speaker = "arch", expression = "neutral", text = "A tired architect makes expensive mistakes. I made the right call.", condition = "set_boundaries" },

        -- Conditional memory: pulled allnighter
        { speaker = "arch", expression = "concerned", text = "I think about the all-nighter. Refactoring the data layer at midnight because the original design couldn't handle the pivot.", condition = "pulled_allnighter" },
        { speaker = "arch", expression = "neutral", text = "Sometimes you have to tear down the foundation while the building is still standing. It's terrifying. It works.", condition = "pulled_allnighter" },

        -- Conditional memory: backed Riley
        { speaker = "arch", expression = "neutral", text = "I think about Riley's outburst. The architectural bugs they found that I missed.", condition = "backed_riley" },
        { speaker = "arch", expression = "concerned", text = "The architect designs the system. QA tests the assumptions. Neither works without the other.", condition = "backed_riley" },

        { text = "..." },

        { speaker = "arch", expression = "neutral", text = "I pull up the final architecture diagram. The one that actually shipped. It looks nothing like my original drawing." },
        { speaker = "arch", expression = "neutral", text = "Fewer boxes. Fewer arrows. Fewer layers of abstraction." },
        { speaker = "arch", expression = "concerned", text = "It's simpler. And simplicity took more courage than complexity ever did." },

        { text = "..." },

        { speaker = "arch", expression = "neutral", text = "I cap my whiteboard marker. Put it in my pocket. Old habits." },
        { speaker = "arch", expression = "neutral", text = "The question isn't whether the architecture was elegant. It's whether it let the team build something real." },

        { text = "", goto = "$ending" }
    }
}
