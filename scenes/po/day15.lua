return {
    title = "Day 15",
    subtitle = "The End",
    narration = "The deck is closed. The product exists. Was it the vision?",

    bg = "break_room",
    bgm = "late_night",

    dialogue = {
        { speaker = "po", expression = "neutral", text = "I open the deck one last time. Slide 1: 'Project Chimera: Knowledge Sharing for the Modern Enterprise.'" },
        { speaker = "po", expression = "neutral", text = "Slide 47: 'Thank You.' With a stock photo of people high-fiving at sunset." },
        { speaker = "po", expression = "neutral", text = "I close it. Delete the shortcut from my desktop. Keep the file." },

        { text = "..." },

        -- Conditional memory: pitched full vision
        { speaker = "po", expression = "neutral", text = "I think about that first day. The full deck. I rehearsed it in the shower.", condition = "po_pitched_full" },
        { speaker = "po", expression = "neutral", text = "The team's eyes glazed over by slide eight. I kept going anyway.", condition = "po_pitched_full" },

        -- Conditional memory: told story
        { speaker = "po", expression = "neutral", text = "I think about that first day. When I told the story instead of reading the deck.", condition = "po_told_story" },
        { speaker = "po", expression = "neutral", text = "Stories are better than slides. I keep forgetting that.", condition = "po_told_story" },

        -- Conditional memory: fought scope
        { speaker = "po", expression = "defensive", text = "I remember when they said no to the collaboration feature. I felt like they were saying no to me.", condition = "fought_scope" },
        { speaker = "po", expression = "neutral", text = "But a smaller product that works is better than a big product that doesn't. I know that now.", condition = "fought_scope" },

        -- Conditional memory: absorbed scope
        { speaker = "po", expression = "neutral", text = "I remember when they said yes to the collaboration feature. The relief. The excitement.", condition = "absorbed_scope" },
        { speaker = "po", expression = "neutral", text = "And then the look on Sam's face three days later. That wasn't excitement.", condition = "absorbed_scope" },

        -- Conditional memory: followed data
        { speaker = "po", expression = "neutral", text = "I think about the research. The data that said we were solving the wrong problem.", condition = "followed_data" },
        { speaker = "po", expression = "neutral", text = "Listening to users instead of my own conviction. That was harder than any stakeholder meeting.", condition = "followed_data" },

        -- Conditional memory: followed vision
        { speaker = "po", expression = "excited", text = "I think about doubling down on the vision. Trusting my gut over the data.", condition = "followed_vision" },
        { speaker = "po", expression = "neutral", text = "Sometimes your gut is right. Sometimes it's just loud.", condition = "followed_vision" },

        -- Conditional memory: supported pivot
        { speaker = "po", expression = "neutral", text = "I think about the pivot. The CEO's nephew. The emergency meeting.", condition = "supported_pivot" },
        { speaker = "po", expression = "neutral", text = "I said yes because saying no felt impossible. That's not product strategy. That's politics.", condition = "supported_pivot" },

        -- Conditional memory: resisted pivot
        { speaker = "po", expression = "defensive", text = "I think about the pivot. When I pushed back on the CEO's nephew's idea.", condition = "resisted_pivot" },
        { speaker = "po", expression = "neutral", text = "Standing between your team and a bad idea. That's the job. Even when the bad idea comes from above.", condition = "resisted_pivot" },

        -- Conditional memory: backed Riley
        { speaker = "po", expression = "neutral", text = "I think about Riley. The bugs I should have prioritized sooner.", condition = "backed_riley" },
        { speaker = "po", expression = "neutral", text = "A PO who ignores quality isn't a product owner. They're a feature factory manager.", condition = "backed_riley" },

        { text = "..." },

        { speaker = "po", expression = "neutral", text = "The product is out there now. People are using it. Not the way I imagined, but they're using it." },
        { speaker = "po", expression = "neutral", text = "Confluence meets TikTok meets LinkedIn. That's what I said it would be." },
        { speaker = "po", expression = "neutral", text = "It's none of those things. It might be something better. Or it might just be different." },

        { text = "..." },

        { speaker = "po", expression = "neutral", text = "I grab my bag. Leave the sticky notes on the wall. Someone else's vision now." },
        { speaker = "po", expression = "neutral", text = "The question isn't whether we built what I envisioned. It's whether I learned to let the vision evolve." },

        { text = "", goto = "$ending" }
    }
}
