return {
    title = "Day 9 -- Friday",
    subtitle = "The Pivot",
    narration = "Demo day. Four hours out. Priya called you at 7 AM. She talked to the CEO's nephew at the mixer. You can already feel the day getting longer.",

    bg = "meeting_room",
    bgm = "tension",

    dialogue = {
        { speaker = "pm", expression = "stressed", text = "Friday morning. Demo day. Priya called me at 7:14 AM. She said 'we need to talk.'" },
        { speaker = "pm", expression = "stressed", text = "(I am the messenger. I am also the buffer. I am also the punching bag. PM life.)" },
        { speaker = "pm", expression = "neutral", text = "Team -- emergency meeting. Priya has an update." },

        { speaker = "po", expression = "excited", text = "So I talked to the CEO's nephew at the mixer last night." },
        { speaker = "dev", expression = "frustrated", text = "The CEO's nephew. Of course." },
        { speaker = "po", expression = "excited", text = "He's 22 and had INCREDIBLE insights about what Gen Z wants from knowledge platforms." },
        { speaker = "qa", expression = "neutral", text = "I'm afraid to ask." },
        { speaker = "po", expression = "excited", text = "Short-form video! TikTok for internal communications!" },
        { speaker = "dev", expression = "frustrated", text = "We're pivoting to TikTok. Based on the CEO's nephew. ON DEMO DAY." },
        { speaker = "arch", expression = "concerned", text = "Video hosting. Transcoding. CDN. Do you want me to draw--" },
        { speaker = "dev", expression = "frustrated", text = "Don't. Don't draw anything." },

        -- Jordan tries
        { speaker = "pm", expression = "stressed", text = "Priya. The demo is in four hours. We can't add video." },
        { speaker = "po", expression = "neutral", text = "Not for the demo! For the roadmap! I just want to mention it." },
        { speaker = "qa", expression = "smirk", text = "Mention a feature we haven't built. What could go wrong." },
        { speaker = "pm", expression = "stressed", text = "(I have to handle this. The team is looking at me. Priya is looking at me. The clock is looking at me.)" },

        { speaker = "pm", expression = "neutral", text = "(Three plays. Each one has a price.)",
            choices = {
                { text = "Let her have it. One slide in the deck about 'future vision.'", set = {supported_pivot = true}, rel = {po = 2, dev = -2, qa = -2} },
                { text = "Hard no. We demo what's built. I'll have the conversation with Priya offline.", set = {resisted_pivot = true}, rel = {dev = 2, qa = 2, ux = 1, po = -2} },
                { text = "Compromise. One line in Q&A: 'We're exploring multimedia.' No mockups.", set = {negotiated_pivot = true}, rel = {po = 1, dev = 1, ux = 1, pm = 0} },
            }
        },

        -- Support
        { speaker = "pm", expression = "stressed", text = "Okay Priya. One slide. Future vision. Just enough to mention the direction.", condition = "supported_pivot" },
        { speaker = "po", expression = "excited", text = "Yes! I'll send inspiration screenshots right now!", condition = "supported_pivot" },
        { speaker = "dev", expression = "frustrated", text = "We're demoing a dream of a product that doesn't exist.", condition = "supported_pivot" },
        { speaker = "pm", expression = "stressed", text = "(I made the wrong call. I can feel it. Risk register: trust deficit.)", condition = "supported_pivot" },

        -- Resist
        { speaker = "pm", expression = "neutral", text = "Priya. No. Not today. We demo what we built. I'll handle the 'future vision' conversation with leadership directly. Trust me.", condition = "resisted_pivot" },
        { speaker = "po", expression = "defensive", text = "But--", condition = "resisted_pivot" },
        { speaker = "pm", expression = "neutral", text = "I will. I promise. Just not in the demo.", condition = "resisted_pivot" },
        { speaker = "dev", expression = "smiling", text = "Thank you, Jordan.", condition = "resisted_pivot" },

        -- Negotiate
        { speaker = "pm", expression = "neutral", text = "Compromise. One line in the Q&A: 'We're exploring multimedia.' No mockups, no commitments.", condition = "negotiated_pivot" },
        { speaker = "po", expression = "neutral", text = "Exploring... I can live with exploring.", condition = "negotiated_pivot" },
        { speaker = "dev", expression = "smiling", text = "Exploring. The corporate word for 'haven't started.'", condition = "negotiated_pivot" },

        -- The demo
        { speaker = "pm", expression = "neutral", text = "Alright. It's time. Everyone ready?" },
        { speaker = "dev", expression = "neutral", text = "Define 'ready.'" },
        { speaker = "qa", expression = "smirk", text = "I've memorized which buttons not to click." },
        { speaker = "pm", expression = "stressed", text = "(Let's do this.)" },

        -- End of day
        { speaker = "pm", expression = "stressed", text = "(The first demo. Not a disaster. Not a triumph. A demo. Leadership wants a 'fuller version' in two weeks. Of course they do.)" },

        { text = "", goto = "day10" }
    }
}
