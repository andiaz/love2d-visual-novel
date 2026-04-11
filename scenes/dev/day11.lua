return {
    title = "Day 11 -- Thursday",
    subtitle = "The Breaking Point",
    narration = "One day left. The cracks are showing. Someone is about to say what everyone is thinking.",

    bg = "office_day",
    bgm = "tension",

    dialogue = {
        { speaker = "dev", expression = "tired", text = "Thursday. One day before the demo. The cracks are spreading." },

        { speaker = "pm", expression = "neutral", text = "Morning standup. 15 minutes. I actually mean it this time." },
        { speaker = "dev", expression = "tired", text = "I fixed 9 bugs last night. Three new ones appeared. It's like code whack-a-mole." },
        { speaker = "qa", expression = "smirk", text = "The search now works, but it returns results in random order." },
        { speaker = "dev", expression = "tired", text = "It's alphabetical. In a language I don't recognize." },

        -- The breaking point
        { speaker = "arch", expression = "concerned", text = "I need to bring something up. We're building this wrong." },
        { speaker = "dev", expression = "frustrated", text = "Casey. Not now." },
        { speaker = "arch", expression = "whiteboarding", text = "If we'd used the architecture I proposed in week one, we wouldn't have these scaling issues." },
        { speaker = "dev", expression = "frustrated", text = "If we'd used your architecture, we'd still be configuring Kubernetes." },
        { speaker = "arch", expression = "concerned", text = "That's not fair--" },
        { speaker = "dev", expression = "frustrated", text = "What's not fair is redesigning the foundation the day before the demo!" },
        { speaker = "pm", expression = "stressed", text = "Okay, okay. Let's take a breath--" },

        { speaker = "po", expression = "neutral", text = "Can I just say something? I know I've changed requirements a lot--" },
        { speaker = "qa", expression = "deadpan", text = "A lot." },
        { speaker = "po", expression = "defensive", text = "But it's because I CARE about this product! I want it to be amazing!" },
        { speaker = "qa", expression = "deadpan", text = "Amazing would be nice. Functional would be a start." },

        { speaker = "qa", expression = "deadpan", text = "Actually, you know what? I'm done being polite." },
        { speaker = "qa", expression = "deadpan", text = "I've filed 47 bugs. Forty-seven. Same number as Priya's slides. Nobody listens to QA until everything's on fire." },
        { speaker = "qa", expression = "deadpan", text = "And now it's on fire and you're all surprised." },

        { speaker = "pm", expression = "neutral", text = "..." },
        { speaker = "dev", expression = "tired", text = "(Riley has a point. A sharp, uncomfortable point. And I'm the one who wrote 30 of those bugs.)",
            choices = {
                { text = "Riley's right. We need to listen to QA much earlier next sprint.", set = {backed_riley = true}, rel = {qa = 3, pm = 0, po = -1} },
                { text = "Everyone's frustrated. Let's focus on what we CAN ship by tomorrow.", set = {refocused_team = true}, rel = {pm = 2, ux = 1, qa = 1, arch = 1} },
                { text = "We all dropped balls. Me first. Let's own it and move forward.", set = {owned_mistakes = true}, rel = {qa = 1, ux = 1, pm = 1, po = 1, arch = 1} },
            }
        },

        -- Backed Riley
        { speaker = "qa", expression = "smirk", text = "...thank you, Sam.", condition = "backed_riley" },
        { speaker = "po", expression = "neutral", text = "I'm sorry, Riley. I should have read your bug reports.", condition = "backed_riley" },
        { speaker = "qa", expression = "neutral", text = "All 47 of them. Yes.", condition = "backed_riley" },

        -- Refocused
        { speaker = "pm", expression = "neutral", text = "Right. What can we actually demo tomorrow? List, please.", condition = "refocused_team" },
        { speaker = "dev", expression = "neutral", text = "Feed works. Content creation works. Search is optimistic. Profiles are off the table.", condition = "refocused_team" },

        -- Owned mistakes
        { speaker = "dev", expression = "tired", text = "I should have written tests. I should have spoken up about scope earlier. I should have refactored the data layer when I had the chance.", condition = "owned_mistakes" },
        { speaker = "ux", expression = "neutral", text = "And I should have validated my designs against tech constraints earlier.", condition = "owned_mistakes" },
        { speaker = "arch", expression = "concerned", text = "I... may have over-complicated the architecture.", condition = "owned_mistakes" },
        { speaker = "po", expression = "neutral", text = "And I changed the requirements too much. Maybe.", condition = "owned_mistakes" },

        -- End of day
        { speaker = "pm", expression = "neutral", text = "That standup was 28 minutes. New record. For real this time." },
        { speaker = "dev", expression = "tired", text = "(Tomorrow is demo day. At least we're being honest with each other now.)" },

        { text = "", goto = "day12" }
    }
}
