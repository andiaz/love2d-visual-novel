return {
    title = "Day 11 -- Thursday",
    subtitle = "The Breaking Point",
    narration = "One day left. The team is at a low boil. Riley is about to say something. It's about you. Sort of.",

    bg = "office_day",
    bgm = "tension",

    dialogue = {
        { speaker = "po", expression = "neutral", text = "Thursday. One day before the demo. The cracks are showing." },

        { speaker = "pm", expression = "neutral", text = "Morning standup. 15 minutes." },
        { speaker = "dev", expression = "tired", text = "Fixed 9 bugs last night. Three new ones appeared. Code whack-a-mole." },
        { speaker = "qa", expression = "smirk", text = "Search now works, but returns results in random order." },

        { speaker = "arch", expression = "concerned", text = "I need to bring something up. We're building this wrong." },
        { speaker = "dev", expression = "frustrated", text = "Casey. Not now." },
        { speaker = "arch", expression = "whiteboarding", text = "If we'd used the architecture I proposed in week one, we wouldn't have these scaling issues." },
        { speaker = "dev", expression = "frustrated", text = "If we'd used your architecture, we'd still be configuring Kubernetes." },
        { speaker = "po", expression = "neutral", text = "(Don't get involved. Don't get involved. Don't get-)" },

        { speaker = "po", expression = "neutral", text = "Can I just say something? I know I've changed requirements a lot--" },
        { speaker = "qa", expression = "deadpan", text = "A lot." },
        { speaker = "po", expression = "defensive", text = "But it's because I CARE about this product! I want it to be amazing!" },
        { speaker = "qa", expression = "deadpan", text = "Amazing would be nice. Functional would be a start." },

        { speaker = "qa", expression = "deadpan", text = "Actually, you know what? I'm done being polite." },
        { speaker = "qa", expression = "deadpan", text = "I've filed 47 bugs. Forty-seven. Same number as Priya's slides. Nobody listens to QA until everything's on fire." },
        { speaker = "qa", expression = "deadpan", text = "And now it's on fire and you're all surprised." },

        { speaker = "pm", expression = "neutral", text = "..." },
        { speaker = "po", expression = "defensive", text = "(Riley just compared 47 bugs to my 47 slides. The room got very quiet. They're all looking at me.)" },

        { speaker = "po", expression = "neutral", text = "(How I respond defines me as a PO. For everyone in this room. Forever.)",
            choices = {
                { text = "Back Riley publicly. 'You're right. I should have been reading your bug reports from day one.'", set = {backed_riley = true}, rel = {qa = 3, dev = 1, ux = 1} },
                { text = "Refocus the room. 'Feelings later. Right now, what can we ship tomorrow?'", set = {refocused_team = true}, rel = {pm = 2, dev = 1, qa = 1} },
                { text = "Own it. 'A lot of those 47 bugs trace back to my scope changes. That's on me. I'm sorry.'", set = {owned_mistakes = true}, rel = {qa = 2, dev = 2, ux = 1, pm = 1, arch = 1} },
            }
        },

        -- Backed
        { speaker = "po", expression = "neutral", text = "Riley. You're right. I should have been reading your bug reports from day one. I'm sorry.", condition = "backed_riley" },
        { speaker = "qa", expression = "smirk", text = "...thank you, Priya.", condition = "backed_riley" },
        { speaker = "po", expression = "neutral", text = "I'm going to read all 47 right now. After the standup.", condition = "backed_riley" },
        { speaker = "qa", expression = "neutral", text = "All 47?", condition = "backed_riley" },
        { speaker = "po", expression = "neutral", text = "All 47.", condition = "backed_riley" },

        -- Refocused
        { speaker = "po", expression = "neutral", text = "Riley, we'll talk after standup. Right now, what can we ship tomorrow? List, please.", condition = "refocused_team" },
        { speaker = "dev", expression = "neutral", text = "Feed works. Content creation works. Search is optimistic.", condition = "refocused_team" },

        -- Owned
        { speaker = "po", expression = "neutral", text = "A lot of those bugs trace back to my scope changes. That's on me. I'm sorry, Riley. I'm sorry, Sam. I'm sorry, all of you.", condition = "owned_mistakes" },
        { speaker = "dev", expression = "neutral", text = "And I should have spoken up about tech debt sooner.", condition = "owned_mistakes" },
        { speaker = "arch", expression = "concerned", text = "I... may have over-complicated the architecture.", condition = "owned_mistakes" },
        { speaker = "po", expression = "neutral", text = "(That was the hardest sentence I have said in this office. It also might be the most important.)", condition = "owned_mistakes" },

        -- End of day
        { speaker = "pm", expression = "neutral", text = "That standup was 28 minutes. New record. For real this time." },
        { speaker = "po", expression = "neutral", text = "(Tomorrow is demo day. At least we're being honest with each other now.)" },

        { text = "", goto = "day12" }
    }
}
