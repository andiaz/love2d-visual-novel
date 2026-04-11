return {
    title = "Day 11 -- Thursday",
    subtitle = "The Breaking Point",
    narration = "One day left. The team is at a low simmer. As PM, you're either the safety valve or the cause.",

    bg = "office_day",
    bgm = "tension",

    dialogue = {
        { speaker = "pm", expression = "stressed", text = "Thursday. One day before the demo. The team is at a low simmer." },

        { speaker = "pm", expression = "neutral", text = "Morning standup. 15 minutes. I actually mean it this time." },
        { speaker = "dev", expression = "tired", text = "I fixed 9 bugs last night. Three new ones appeared. Code whack-a-mole." },
        { speaker = "qa", expression = "smirk", text = "Search now works, but returns results in random order." },
        { speaker = "dev", expression = "tired", text = "It's alphabetical. In a language I don't recognize." },

        -- The cracks
        { speaker = "arch", expression = "concerned", text = "I need to bring something up. We're building this wrong." },
        { speaker = "dev", expression = "frustrated", text = "Casey. Not now." },
        { speaker = "arch", expression = "whiteboarding", text = "If we'd used the architecture I proposed in week one, we wouldn't have these scaling issues." },
        { speaker = "dev", expression = "frustrated", text = "If we'd used your architecture, we'd still be configuring Kubernetes." },
        { speaker = "arch", expression = "concerned", text = "That's not fair--" },
        { speaker = "dev", expression = "frustrated", text = "What's not fair is redesigning the foundation the day before the demo!" },
        { speaker = "pm", expression = "stressed", text = "(Defcon two. Intervene.)" },
        { speaker = "pm", expression = "stressed", text = "Okay, okay. Let's take a breath--" },

        { speaker = "po", expression = "neutral", text = "Can I just say something? I know I've changed requirements a lot--" },
        { speaker = "qa", expression = "deadpan", text = "A lot." },
        { speaker = "po", expression = "defensive", text = "But it's because I CARE about this product! I want it to be amazing!" },
        { speaker = "qa", expression = "deadpan", text = "Amazing would be nice. Functional would be a start." },

        { speaker = "qa", expression = "deadpan", text = "Actually, you know what? I'm done being polite." },
        { speaker = "qa", expression = "deadpan", text = "I've filed 47 bugs. Forty-seven. Same number as Priya's slides. Nobody listens to QA until everything's on fire." },
        { speaker = "qa", expression = "deadpan", text = "And now it's on fire and you're all surprised." },

        { speaker = "pm", expression = "stressed", text = "..." },
        { speaker = "pm", expression = "stressed", text = "(This is the moment. Five faces looking at me. The room becomes whatever I say next.)",
            choices = {
                { text = "Back Riley publicly. Make 'listen to QA earlier' a process change.", set = {backed_riley = true}, rel = {qa = 3, dev = 1, po = -1} },
                { text = "Refocus. 'Feelings later. Right now we list what we can ship.'", set = {refocused_team = true}, rel = {dev = 1, ux = 1, qa = 1, arch = 1} },
                { text = "Take it on yourself. 'The process broke. That's on me. Let's fix it together.'", set = {owned_mistakes = true}, rel = {dev = 1, ux = 1, qa = 1, po = 1, arch = 1} },
            }
        },

        -- Backed Riley
        { speaker = "pm", expression = "neutral", text = "Riley's right. Starting next sprint, QA is in design reviews. Mandatory.", condition = "backed_riley" },
        { speaker = "qa", expression = "smirk", text = "...thank you, Jordan.", condition = "backed_riley" },
        { speaker = "po", expression = "neutral", text = "I'm sorry, Riley. I should have read your reports.", condition = "backed_riley" },

        -- Refocused
        { speaker = "pm", expression = "neutral", text = "We're going to feel the feelings AFTER the demo. Right now, list. What can we ship tomorrow?", condition = "refocused_team" },
        { speaker = "dev", expression = "neutral", text = "Feed works. Content creation works. Search is optimistic.", condition = "refocused_team" },
        { speaker = "ux", expression = "neutral", text = "I'll polish what works and grey out what doesn't.", condition = "refocused_team" },

        -- Owned
        { speaker = "pm", expression = "stressed", text = "The process broke. That's my job. I should have made space for QA earlier. I should have shielded the team from scope. That's on me.", condition = "owned_mistakes" },
        { speaker = "dev", expression = "neutral", text = "And I should have spoken up about tech debt sooner.", condition = "owned_mistakes" },
        { speaker = "arch", expression = "concerned", text = "I... may have over-complicated the architecture.", condition = "owned_mistakes" },
        { speaker = "po", expression = "neutral", text = "And I changed requirements too much. Maybe.", condition = "owned_mistakes" },

        -- End of day
        { speaker = "pm", expression = "neutral", text = "(That standup was 28 minutes. New record. For real this time.)" },
        { speaker = "pm", expression = "stressed", text = "(Tomorrow is demo day. At least the team is being honest with each other now.)" },

        { text = "", goto = "day12" }
    }
}
