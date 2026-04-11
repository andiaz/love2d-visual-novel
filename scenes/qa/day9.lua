return {
    title = "Day 9 -- Friday",
    subtitle = "The Pivot",
    narration = "Demo day. Then Priya called an emergency meeting. The CEO's nephew. You can hear the test plan crying from your laptop.",

    bg = "meeting_room",
    bgm = "tension",

    dialogue = {
        { speaker = "qa", expression = "deadpan", text = "Friday morning. Demo day. I had a feeling. I always have a feeling. The feeling is always right." },
        { speaker = "pm", expression = "neutral", text = "Team, emergency meeting. Priya has an update." },

        { speaker = "po", expression = "excited", text = "So I talked to the CEO's nephew at the mixer last night." },
        { speaker = "qa", expression = "deadpan", text = "(Of course she did.)" },
        { speaker = "po", expression = "excited", text = "He's 22 and he had INCREDIBLE insights about what Gen Z wants from knowledge platforms." },
        { speaker = "qa", expression = "deadpan", text = "I'm afraid to ask." },
        { speaker = "po", expression = "excited", text = "Short-form video! TikTok for internal communications!" },
        { speaker = "dev", expression = "frustrated", text = "We're pivoting to TikTok. Based on the CEO's nephew. ON DEMO DAY." },
        { speaker = "po", expression = "excited", text = "Not pivoting! Enhancing!" },
        { speaker = "arch", expression = "concerned", text = "Video hosting. Transcoding. CDN. Recommendation algorithm. Do you want me to draw--" },
        { speaker = "dev", expression = "frustrated", text = "Don't. Just don't draw anything." },

        { speaker = "qa", expression = "deadpan", text = "(Test cases I would need to add for video: 84. Time available: 4 hours. Math: no.)" },

        { speaker = "pm", expression = "stressed", text = "Demo is in four hours, Priya. We can't add video." },
        { speaker = "po", expression = "neutral", text = "Not for the demo! For the roadmap! I just want to mention it." },
        { speaker = "qa", expression = "smirk", text = "Mention a feature we haven't built. What could go wrong." },
        { speaker = "pm", expression = "neutral", text = "Riley, you're the one who has to test this in two weeks if Priya gets her way. What's QA's call?" },

        { speaker = "qa", expression = "neutral", text = "(QA is finally being asked. Three answers.)",
            choices = {
                { text = "Let her have it. One slide. I'll add the test cases later. (I will hate later me.)", set = {supported_pivot = true}, rel = {po = 1, dev = -2, qa = -1} },
                { text = "Hard no. We demo what's tested. Anything else is leadership lying to themselves.", set = {resisted_pivot = true}, rel = {dev = 2, qa = 2, ux = 1, pm = -1} },
                { text = "Soften it. 'Exploring multimedia.' One sentence. No mockups. No commitments. Nothing for me to test.", set = {negotiated_pivot = true}, rel = {pm = 2, dev = 1} },
            }
        },

        -- Support
        { speaker = "qa", expression = "deadpan", text = "Fine. One slide. I'll add the test cases when the time comes. Future Riley will hate present Riley.", condition = "supported_pivot" },
        { speaker = "po", expression = "excited", text = "Yes! Thank you Riley!", condition = "supported_pivot" },
        { speaker = "qa", expression = "deadpan", text = "(I just signed a check that bounces in two weeks.)", condition = "supported_pivot" },

        -- Resist
        { speaker = "qa", expression = "deadpan", text = "We demo what's tested. Anything else is leadership lying to themselves. I am not pasting fake test results into a slide.", condition = "resisted_pivot" },
        { speaker = "dev", expression = "smiling", text = "Riley wins. Riley always wins.", condition = "resisted_pivot" },
        { speaker = "po", expression = "defensive", text = "But--", condition = "resisted_pivot" },
        { speaker = "qa", expression = "deadpan", text = "Priya. No.", condition = "resisted_pivot" },

        -- Negotiate
        { speaker = "qa", expression = "neutral", text = "Soften it. 'Exploring multimedia.' One sentence in the Q&A. No mockups. No commitments. Nothing I have to test on Monday.", condition = "negotiated_pivot" },
        { speaker = "pm", expression = "neutral", text = "That's the right framing. Done.", condition = "negotiated_pivot" },
        { speaker = "dev", expression = "smiling", text = "Exploring. The corporate word for 'haven't started.'", condition = "negotiated_pivot" },

        -- Demo
        { speaker = "pm", expression = "neutral", text = "It's time. Everyone ready?" },
        { speaker = "qa", expression = "smirk", text = "I have memorized which buttons not to click. I will whisper-yell from the back row when needed." },
        { speaker = "qa", expression = "deadpan", text = "(The first demo. Not a disaster. Not a triumph. Leadership wants a 'fuller version' in two more weeks. Of course they do.)" },

        { text = "", goto = "day10" }
    }
}
