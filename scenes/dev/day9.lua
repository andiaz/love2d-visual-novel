return {
    title = "Day 9 -- Friday",
    subtitle = "The Pivot",
    narration = "Demo day. But first -- an emergency meeting. Priya met the CEO's nephew at the company mixer.",

    bg = "meeting_room",
    bgm = "tension",

    dialogue = {
        { speaker = "dev", expression = "tired", text = "Friday morning. Demo day. Four hours of sleep. Two hours of fixes left to land. Then this." },
        { speaker = "pm", expression = "neutral", text = "Team, emergency meeting. Priya has an update." },

        { speaker = "po", expression = "excited", text = "So I talked to the CEO's nephew at the mixer last night." },
        { speaker = "dev", expression = "frustrated", text = "(Oh no.)" },
        { speaker = "po", expression = "excited", text = "He's 22 and he had INCREDIBLE insights about what Gen Z wants from knowledge platforms." },
        { speaker = "qa", expression = "neutral", text = "I'm afraid to ask." },
        { speaker = "po", expression = "excited", text = "Short-form video content. Stories. Think TikTok for internal communications!" },
        { speaker = "dev", expression = "frustrated", text = "We are pivoting to TikTok. Based on the CEO's nephew. ON DEMO DAY." },
        { speaker = "po", expression = "excited", text = "Not pivoting! Enhancing! What if knowledge articles could be video stories?" },
        { speaker = "arch", expression = "concerned", text = "Video hosting. Transcoding. Recommendation algorithm. CDN costs. Do you want me to draw--" },
        { speaker = "dev", expression = "frustrated", text = "Don't. Just... don't draw anything." },

        { speaker = "pm", expression = "stressed", text = "The demo is in four hours, Priya. We can't add video." },
        { speaker = "po", expression = "neutral", text = "Not for the demo! For the roadmap! I just want to mention it during the presentation." },
        { speaker = "qa", expression = "smirk", text = "Mention a feature we haven't built, designed, or specced. What could go wrong?" },

        { speaker = "pm", expression = "neutral", text = "Sam, you're presenting the technical walkthrough. What do we do?" },

        { speaker = "dev", expression = "tired", text = "(I have four hours. I have to pick.)",
            choices = {
                { text = "Fine. I'll mention 'video roadmap' in the technical Q&A.", set = {supported_pivot = true}, rel = {po = 2, pm = 1, ux = -1, qa = -2} },
                { text = "No. I will not stand in front of leadership and pitch a feature that doesn't exist.", set = {resisted_pivot = true}, rel = {po = -2, ux = 2, qa = 2, pm = -1} },
                { text = "We mention it as 'something we're exploring.' No promises. No mockups.", set = {negotiated_pivot = true}, rel = {po = 1, pm = 2, ux = 1, qa = 0} },
            }
        },

        -- Support
        { speaker = "po", expression = "excited", text = "Yes! I'll send you talking points!", condition = "supported_pivot" },
        { speaker = "dev", expression = "tired", text = "(I am demoing a dream of a product that does not exist. The codebase is going to hate me.)", condition = "supported_pivot" },

        -- Resist
        { speaker = "po", expression = "defensive", text = "But the CEO's nephew--", condition = "resisted_pivot" },
        { speaker = "dev", expression = "frustrated", text = "Is not a stakeholder. Is not a user. Is 22 and exists.", condition = "resisted_pivot" },
        { speaker = "ux", expression = "excited", text = "Sam's right. We demo what we have.", condition = "resisted_pivot" },
        { speaker = "qa", expression = "smirk", text = "I'm buying you coffee after this.", condition = "resisted_pivot" },

        -- Negotiate
        { speaker = "pm", expression = "neutral", text = "Good. One line. 'We're exploring multimedia.' That's the deal.", condition = "negotiated_pivot" },
        { speaker = "po", expression = "neutral", text = "Exploring... I can live with exploring.", condition = "negotiated_pivot" },
        { speaker = "dev", expression = "smiling", text = "Exploring. The corporate word for 'haven't started.'", condition = "negotiated_pivot" },

        -- The demo (brief)
        { speaker = "pm", expression = "neutral", text = "It's time. Everyone ready?" },
        { speaker = "dev", expression = "tired", text = "Define 'ready.'" },
        { speaker = "qa", expression = "smirk", text = "I've memorized which buttons not to click." },
        { speaker = "dev", expression = "neutral", text = "Let's do this." },

        -- End of day
        { speaker = "dev", expression = "tired", text = "(The first demo. Not a disaster. Not a triumph. A demo.)" },
        { speaker = "dev", expression = "tired", text = "(Leadership wants a 'fuller version' in two more weeks. Of course they do.)" },

        { text = "", goto = "day10" }
    }
}
