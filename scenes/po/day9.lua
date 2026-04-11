return {
    title = "Day 9 -- Friday",
    subtitle = "The Pivot",
    narration = "Demo day. You went to the company mixer last night. You met the CEO's nephew. You have an idea. The team is going to hate it. You're going to pitch it anyway.",

    bg = "meeting_room",
    bgm = "tension",

    dialogue = {
        { speaker = "po", expression = "excited", text = "Friday morning. Demo day. And I had the BEST conversation last night at the company mixer." },
        { speaker = "po", expression = "excited", text = "(I'm going to bring this up in the standup. The team is going to lose their minds. But this is THE idea.)" },

        { speaker = "pm", expression = "neutral", text = "Team, emergency meeting. Priya has an update." },
        { speaker = "po", expression = "excited", text = "So I talked to the CEO's nephew at the mixer last night." },
        { speaker = "dev", expression = "neutral", text = "(Oh no.)" },
        { speaker = "po", expression = "excited", text = "He's 22 and he had INCREDIBLE insights about what Gen Z wants from knowledge platforms." },
        { speaker = "qa", expression = "neutral", text = "I'm afraid to ask." },
        { speaker = "po", expression = "excited", text = "Short-form video! Stories! TikTok for internal communications!" },
        { speaker = "dev", expression = "frustrated", text = "We're pivoting to TikTok. Based on the CEO's nephew. ON DEMO DAY." },
        { speaker = "po", expression = "excited", text = "Not pivoting! ENHANCING!" },
        { speaker = "arch", expression = "concerned", text = "Video hosting. Transcoding. CDN. Recommendation algorithm. Do you want me to draw--" },
        { speaker = "dev", expression = "frustrated", text = "Don't. Don't draw anything." },

        { speaker = "pm", expression = "stressed", text = "The demo is in four hours, Priya. We can't add video." },
        { speaker = "po", expression = "neutral", text = "Not for the demo. For the roadmap. I just want to mention it during the presentation." },
        { speaker = "qa", expression = "smirk", text = "Mention a feature we haven't built. What could go wrong." },

        { speaker = "po", expression = "neutral", text = "(The room is staring at me. The team is bracing. I have to choose what kind of PO I want to be.)",
            choices = {
                { text = "Push it. 'Future vision' slide. We mention it. We commit to nothing. But we plant the seed.", set = {supported_pivot = true}, rel = {pm = 1, dev = -2, qa = -2, ux = -1} },
                { text = "Pull it. The team is right. The mixer was a conversation, not a strategy.", set = {resisted_pivot = true}, rel = {dev = 2, qa = 2, ux = 1, pm = -1} },
                { text = "Soften it. 'We're exploring multimedia.' One sentence. No mockups, no commitments.", set = {negotiated_pivot = true}, rel = {pm = 2, dev = 1, ux = 1} },
            }
        },

        -- Push
        { speaker = "po", expression = "excited", text = "I'm doing it. One slide. Future vision. The CEO's nephew is going to love it.", condition = "supported_pivot" },
        { speaker = "dev", expression = "frustrated", text = "We're demoing a dream of a product that doesn't exist.", condition = "supported_pivot" },
        { speaker = "po", expression = "defensive", text = "(They don't see what I see. They will. After the demo. Or after the next one.)", condition = "supported_pivot" },

        -- Pull
        { speaker = "po", expression = "neutral", text = "...you're right. The mixer was a conversation. Not a strategy. I'll keep the pitch focused on what we built." },
        { speaker = "po", expression = "neutral", text = "(That hurt. But the team needed me to choose them.)", condition = "resisted_pivot" },
        { speaker = "dev", expression = "smiling", text = "Thank you. Seriously.", condition = "resisted_pivot" },
        { speaker = "qa", expression = "smirk", text = "I'm buying you coffee after this.", condition = "resisted_pivot" },

        -- Soften
        { speaker = "po", expression = "neutral", text = "Compromise. One sentence. 'We're exploring multimedia.' That's it. No mockups, no slide.", condition = "negotiated_pivot" },
        { speaker = "pm", expression = "cheerful", text = "Good. That's the right framing.", condition = "negotiated_pivot" },
        { speaker = "dev", expression = "smiling", text = "Exploring. The corporate word for 'haven't started.'", condition = "negotiated_pivot" },

        -- Demo
        { speaker = "pm", expression = "neutral", text = "Alright. It's time. Everyone ready?" },
        { speaker = "po", expression = "neutral", text = "(My deck is in the room. My team is in the room. We're about to find out which one matters more.)" },

        -- End of day
        { speaker = "po", expression = "neutral", text = "(The first demo. Not a disaster. Not a triumph. Leadership wants a 'fuller version' in two more weeks. The vision lives.)" },

        { text = "", goto = "day10" }
    }
}
