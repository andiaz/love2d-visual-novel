return {
    title = "Day 9 -- Friday",
    subtitle = "The Pivot",
    narration = "Demo day. Then Priya called an emergency meeting. The CEO's nephew. Video. Transcoding. CDN. The architecture is about to be asked to do something it cannot do.",

    bg = "meeting_room",
    bgm = "tension",

    dialogue = {
        { speaker = "arch", expression = "concerned", text = "Friday morning. Demo day. The architecture is, against all odds, holding. Then Jordan called the meeting." },
        { speaker = "pm", expression = "neutral", text = "Team, emergency meeting. Priya has an update." },

        { speaker = "po", expression = "excited", text = "So I talked to the CEO's nephew at the mixer last night." },
        { speaker = "arch", expression = "concerned", text = "(The CEO's nephew. The four words I dread most in software.)" },
        { speaker = "po", expression = "excited", text = "He's 22 and had INCREDIBLE insights about what Gen Z wants from knowledge platforms." },
        { speaker = "po", expression = "excited", text = "Short-form video! TikTok for internal communications!" },
        { speaker = "dev", expression = "frustrated", text = "We're pivoting to TikTok. Based on the CEO's nephew. ON DEMO DAY." },

        { speaker = "arch", expression = "concerned", text = "Video hosting. Transcoding pipeline. Adaptive bitrate streaming. CDN with global edges. A recommendation algorithm. Object storage with tiered access." },
        { speaker = "arch", expression = "whiteboarding", text = "Do you want me to draw--" },
        { speaker = "dev", expression = "frustrated", text = "Don't. Just don't draw anything." },
        { speaker = "arch", expression = "concerned", text = "(I have to draw something. Mentally. The architecture I would actually build is... 14 boxes. None of which we have. Or could acquire by Friday. Or by next quarter.)" },

        { speaker = "pm", expression = "stressed", text = "Demo is in four hours, Priya. We can't add video." },
        { speaker = "po", expression = "neutral", text = "Not for the demo! For the roadmap! I just want to mention it." },
        { speaker = "pm", expression = "neutral", text = "Casey, you're the architect. What's the call?" },

        { speaker = "arch", expression = "neutral", text = "(I am being asked. By name. The architect at the table. Three honest answers.)",
            choices = {
                { text = "Sure. Mention it. We can architect the cost picture later. Buy Priya the moment.", set = {supported_pivot = true}, rel = {po = 2, dev = -2, qa = -2} },
                { text = "Hard no. The architecture cannot support video. Mentioning it commits us to it. I will not lie about what we can build.", set = {resisted_pivot = true}, rel = {dev = 2, qa = 2, ux = 1, po = -2} },
                { text = "Soften it. 'Exploring multimedia.' One sentence. No commitments. The architecture stays uncompromised.", set = {negotiated_pivot = true}, rel = {pm = 2, dev = 1, ux = 1} },
            }
        },

        -- Support
        { speaker = "arch", expression = "concerned", text = "Mention it. I'll write up the architectural cost picture next week. Honest scoping after the demo.", condition = "supported_pivot" },
        { speaker = "po", expression = "excited", text = "Yes! Casey gets it!", condition = "supported_pivot" },
        { speaker = "arch", expression = "concerned", text = "(I just signed up to architect a video platform on top of a knowledge base. Future Casey will hate present Casey.)", condition = "supported_pivot" },

        -- Resist
        { speaker = "arch", expression = "neutral", text = "No. The architecture cannot support video at our scale, on our budget, with our timeline. Mentioning it commits us. I will not draw a diagram for a system we cannot build.", condition = "resisted_pivot" },
        { speaker = "dev", expression = "smiling", text = "Casey holding the architectural line. I will tell my grandchildren about this day.", condition = "resisted_pivot" },
        { speaker = "po", expression = "defensive", text = "But--", condition = "resisted_pivot" },
        { speaker = "arch", expression = "concerned", text = "Priya. I am protecting you from a future where this team has to apologize to leadership for promising video.", condition = "resisted_pivot" },

        -- Negotiate
        { speaker = "arch", expression = "neutral", text = "Soften. 'Exploring multimedia.' One sentence. No commitments. The architecture stays uncompromised. I'll write the exploration doc next sprint.", condition = "negotiated_pivot" },
        { speaker = "pm", expression = "cheerful", text = "That's the right framing.", condition = "negotiated_pivot" },
        { speaker = "dev", expression = "smiling", text = "Exploring. The corporate word for 'haven't started.'", condition = "negotiated_pivot" },

        -- Demo
        { speaker = "pm", expression = "neutral", text = "Alright. It's time. Everyone ready?" },
        { speaker = "arch", expression = "concerned", text = "(The first demo. Not a disaster. Not a triumph. The architecture survives. That's the metric I care about.)" },

        { text = "", goto = "day10" }
    }
}
