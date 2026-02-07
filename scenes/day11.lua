return {
    title = "Day 11 — Thursday",
    subtitle = "The Breaking Point",
    narration = "One day left. The cracks are showing. Someone is about to say what everyone is thinking.",

    bg = "office_day",
    bgm = "theme",

    dialogue = {
        { speaker = "ux", expression = "neutral", text = "Thursday. One day before the final demo. The cracks are showing." },

        -- Morning standup
        { speaker = "pm", expression = "neutral", text = "Morning standup. 15 minutes. I actually mean it this time." },
        { speaker = "dev", expression = "neutral", text = "I fixed 9 bugs last night. Three new ones appeared. It's like code whack-a-mole." },
        { speaker = "qa", expression = "neutral", text = "The search feature now works, but it returns results in a random order. Is that a feature?" },
        { speaker = "dev", expression = "neutral", text = "It's alphabetical. In a language I don't recognize." },

        -- The breaking point
        { speaker = "arch", expression = "neutral", text = "I need to bring something up. I've been thinking about this project and... we're building it wrong." },
        { speaker = "dev", expression = "neutral", text = "Casey. Not now." },
        { speaker = "arch", expression = "neutral", text = "If we'd used the architecture I proposed in week one, we wouldn't have these scaling issues." },
        { speaker = "dev", expression = "neutral", text = "If we'd used your architecture, we'd still be configuring Kubernetes." },
        { speaker = "arch", expression = "neutral", text = "That's not fair—" },
        { speaker = "dev", expression = "neutral", text = "What's not fair is redesigning the foundation the day before the demo!" },
        { speaker = "pm", expression = "neutral", text = "Okay, okay. Let's take a breath—" },

        { speaker = "po", expression = "neutral", text = "Can I just say something? I know I've changed the requirements a lot—" },
        { speaker = "qa", expression = "neutral", text = "A lot." },
        { speaker = "po", expression = "neutral", text = "But it's because I care about this product! I want it to be amazing!" },
        { speaker = "qa", expression = "neutral", text = "Amazing would be nice. Functional would be a start." },

        -- Someone snaps (Riley — the quiet one finally breaks)
        { speaker = "qa", expression = "neutral", text = "Actually, you know what? I'm done being polite." },
        { speaker = "qa", expression = "neutral", text = "I've filed 47 bugs. Forty-seven. Same number as Priya's slides. Nobody listens to QA until everything's on fire." },
        { speaker = "qa", expression = "neutral", text = "And now it's on fire and you're all surprised." },

        -- Silence
        { speaker = "pm", expression = "neutral", text = "..." },
        { speaker = "dev", expression = "neutral", text = "..." },
        { speaker = "ux", expression = "neutral", text = "Riley has a point. A sharp, uncomfortable point.",
            choices = {
                { text = "Riley's right. We need to listen to QA more.", set = {backed_riley = true}, rel = {qa = 3, dev = 1, pm = 0, po = -1} },
                { text = "Everyone's frustrated. Let's focus on what we CAN ship.", set = {refocused_team = true}, rel = {pm = 2, dev = 1, qa = 1, arch = 1} },
                { text = "We all made mistakes. Me included. Let's own it and move forward.", set = {owned_mistakes = true}, rel = {qa = 1, dev = 1, pm = 1, po = 1, arch = 1} },
            }
        },

        -- Backed Riley
        { speaker = "qa", expression = "neutral", text = "...thank you, Alex.", condition = "backed_riley" },
        { speaker = "po", expression = "neutral", text = "I'm sorry, Riley. I should have read your bug reports.", condition = "backed_riley" },
        { speaker = "qa", expression = "neutral", text = "All 47 of them. Yes.", condition = "backed_riley" },

        -- Refocused
        { speaker = "pm", expression = "neutral", text = "Right. What can we actually demo tomorrow? Let's make a list.", condition = "refocused_team" },
        { speaker = "dev", expression = "neutral", text = "Feed works. Content creation works. Search is... optimistic.", condition = "refocused_team" },
        { speaker = "ux", expression = "neutral", text = "I'll polish the flows that work and grey out everything else.", condition = "refocused_team" },

        -- Owned mistakes
        { speaker = "ux", expression = "neutral", text = "I should have pushed harder for requirements upfront. I should have flagged edge cases earlier.", condition = "owned_mistakes" },
        { speaker = "dev", expression = "neutral", text = "And I should have spoken up about tech debt sooner.", condition = "owned_mistakes" },
        { speaker = "arch", expression = "neutral", text = "I... may have over-complicated the architecture.", condition = "owned_mistakes" },
        { speaker = "po", expression = "neutral", text = "And I maybe changed the requirements too much. Maybe.", condition = "owned_mistakes" },

        -- End of day
        { speaker = "pm", expression = "neutral", text = "That standup was 28 minutes. New record. For real this time." },
        { speaker = "ux", expression = "neutral", text = "Tomorrow is demo day. Whatever happens, at least we're being honest with each other now." },

        { text = "", goto = "day12" }
    }
}
