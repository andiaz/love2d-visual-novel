return {
    title = "Day 9 — Friday",
    subtitle = "The Pivot",
    narration = "Demo day. But first, an emergency meeting. Priya met the CEO's nephew.",

    bg = "office_day",
    bgm = "theme",

    dialogue = {
        { speaker = "ux", expression = "neutral", text = "Friday morning. Demo day. But first — an emergency meeting." },
        { speaker = "pm", expression = "neutral", text = "Team, I've called this meeting because... well, Priya has an update." },

        -- The pivot
        { speaker = "po", expression = "neutral", text = "So I talked to the CEO's nephew at the company mixer last night." },
        { speaker = "dev", expression = "neutral", text = "The CEO's nephew. Of course." },
        { speaker = "po", expression = "neutral", text = "He's 22 and he had some INCREDIBLE insights about what Gen Z wants from knowledge platforms." },
        { speaker = "qa", expression = "neutral", text = "I'm afraid to ask." },
        { speaker = "po", expression = "neutral", text = "Short-form video content. Stories. Think TikTok for internal communications!" },
        { speaker = "dev", expression = "neutral", text = "We're pivoting to TikTok. Based on the CEO's nephew. On demo day." },
        { speaker = "po", expression = "neutral", text = "Not pivoting! Enhancing! What if knowledge articles could be video stories?" },
        { speaker = "arch", expression = "neutral", text = "Video hosting. Transcoding. A recommendation algorithm. CDN costs. Do you want me to draw—" },
        { speaker = "dev", expression = "neutral", text = "Don't. Just... don't draw anything." },

        -- Jordan panics
        { speaker = "pm", expression = "neutral", text = "The demo is in four hours, Priya. We can't add video." },
        { speaker = "po", expression = "neutral", text = "Not for the demo! For the roadmap! I just want to mention it during the presentation." },
        { speaker = "qa", expression = "neutral", text = "Mention a feature we haven't built, designed, or specced? What could go wrong?" },

        -- The choice
        { speaker = "pm", expression = "neutral", text = "Alex, you're presenting the design story in the demo. What do we do about Priya's... enhancement?" },

        { speaker = "ux", expression = "neutral", text = "The biggest crossroads yet.",
            choices = {
                { text = "Fine, I'll add a 'future vision' slide about video.", set = {supported_pivot = true}, rel = {po = 2, pm = 1, dev = -2, qa = -2} },
                { text = "Absolutely not. We demo what we built, nothing more.", set = {resisted_pivot = true}, rel = {po = -2, dev = 2, qa = 2, pm = -1} },
                { text = "We mention it as 'exploring' — no promises, no mockups.", set = {negotiated_pivot = true}, rel = {po = 1, pm = 2, dev = 1, qa = 0} },
            }
        },

        -- Support pivot
        { speaker = "po", expression = "neutral", text = "Yes! I'll send you some inspiration screenshots right now!", condition = "supported_pivot" },
        { speaker = "dev", expression = "neutral", text = "We're building a demo of a dream of a product that doesn't exist.", condition = "supported_pivot" },
        { speaker = "ux", expression = "neutral", text = "(This is going to come back to haunt us.)", condition = "supported_pivot" },

        -- Resist pivot
        { speaker = "po", expression = "neutral", text = "But the CEO's nephew—", condition = "resisted_pivot" },
        { speaker = "ux", expression = "neutral", text = "Is not our user. We demo reality. Leadership needs to see what we actually have.", condition = "resisted_pivot" },
        { speaker = "dev", expression = "neutral", text = "Finally. Someone said it.", condition = "resisted_pivot" },
        { speaker = "qa", expression = "neutral", text = "I'm buying Alex coffee after this.", condition = "resisted_pivot" },

        -- Negotiate pivot
        { speaker = "pm", expression = "neutral", text = "Good compromise. One line in the Q&A at most. 'We're exploring multimedia.'", condition = "negotiated_pivot" },
        { speaker = "po", expression = "neutral", text = "Exploring... I can live with exploring.", condition = "negotiated_pivot" },
        { speaker = "dev", expression = "neutral", text = "Exploring. The corporate word for 'haven't started.'", condition = "negotiated_pivot" },

        -- Demo happens (brief)
        { speaker = "pm", expression = "neutral", text = "Alright. It's time. Everyone ready?" },
        { speaker = "dev", expression = "neutral", text = "Define 'ready.'" },
        { speaker = "qa", expression = "neutral", text = "I've memorized which buttons not to click." },
        { speaker = "ux", expression = "neutral", text = "Let's do this." },

        -- End of day
        { speaker = "ux", expression = "neutral", text = "The first demo. It wasn't a disaster. It wasn't a triumph. It was... a demo." },
        { speaker = "ux", expression = "neutral", text = "Leadership wants a 'fuller version' in two more weeks. Of course they do." },
        { speaker = "ux", expression = "neutral", text = "Sprint two begins." },

        { text = "", goto = "day10" }
    }
}
