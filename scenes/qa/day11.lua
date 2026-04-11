return {
    title = "Day 11 -- Thursday",
    subtitle = "The Breaking Point",
    narration = "One day left. You've filed 47 bugs. You've been polite for 47 of them. The 48th is going to be different.",

    bg = "office_day",
    bgm = "tension",

    dialogue = {
        { speaker = "qa", expression = "deadpan", text = "Thursday. One day before the demo. I have filed 47 bugs. Same number as the deck. The symmetry is not lost on me." },

        { speaker = "pm", expression = "neutral", text = "Morning standup. 15 minutes. I actually mean it this time." },
        { speaker = "dev", expression = "tired", text = "I fixed 9 bugs last night. Three new ones appeared. Code whack-a-mole." },
        { speaker = "qa", expression = "smirk", text = "Search now works. Returns results in random order." },
        { speaker = "dev", expression = "tired", text = "It's alphabetical. In a language I don't recognize." },

        { speaker = "arch", expression = "concerned", text = "I need to bring something up. We're building this wrong." },
        { speaker = "dev", expression = "frustrated", text = "Casey. Not now." },
        { speaker = "arch", expression = "whiteboarding", text = "If we'd used the architecture I proposed in week one--" },
        { speaker = "dev", expression = "frustrated", text = "If we'd used your architecture, we'd still be configuring Kubernetes." },
        { speaker = "qa", expression = "deadpan", text = "(The team is fighting. Two days before the demo. The team always fights two days before the demo.)" },

        { speaker = "po", expression = "neutral", text = "Can I just say something? I know I've changed requirements a lot--" },
        { speaker = "qa", expression = "deadpan", text = "A lot." },
        { speaker = "po", expression = "defensive", text = "But it's because I CARE about this product! I want it to be amazing!" },
        { speaker = "qa", expression = "deadpan", text = "Amazing would be nice. Functional would be a start." },

        { speaker = "qa", expression = "deadpan", text = "(Forty-seven bugs. Two weeks. Fourteen of them are in flagged risk areas I called out at the design review on Day 4.)" },
        { speaker = "qa", expression = "deadpan", text = "(I am about to say a thing. The thing has been in my mouth for 11 days. The thing is going to come out now.)" },

        { speaker = "qa", expression = "deadpan", text = "Actually, you know what? I'm done being polite." },
        { speaker = "qa", expression = "deadpan", text = "I've filed 47 bugs. Forty-seven. Same number as Priya's slides. Nobody listens to QA until everything's on fire." },
        { speaker = "qa", expression = "deadpan", text = "And now it's on fire and you're all surprised." },

        { speaker = "pm", expression = "neutral", text = "..." },
        { speaker = "dev", expression = "neutral", text = "..." },
        { speaker = "qa", expression = "deadpan", text = "(I just said the quiet part out loud. The room is silent. I should feel bad. I do not feel bad.)" },

        { speaker = "qa", expression = "neutral", text = "(Three ways to land this. The team is watching me decide what kind of QA I am.)",
            choices = {
                { text = "Stand my ground. 'Listen to QA earlier next sprint. Process change. Non-negotiable.'", set = {backed_riley = true}, rel = {dev = 1, ux = 1, pm = 0, po = -1} },
                { text = "Refocus. 'Feelings later. Right now, what are we shipping tomorrow?'", set = {refocused_team = true}, rel = {dev = 2, ux = 1, pm = 2} },
                { text = "Walk it back a step. 'I shouldn't have framed it that way. But the point stands.'", set = {owned_mistakes = true}, rel = {dev = 1, ux = 1, pm = 1, po = 1, arch = 1} },
            }
        },

        -- Stand ground
        { speaker = "qa", expression = "neutral", text = "Process change. Next sprint. QA in design reviews from day one. No exceptions.", condition = "backed_riley" },
        { speaker = "pm", expression = "neutral", text = "Done. Booked. Calendar.", condition = "backed_riley" },
        { speaker = "po", expression = "neutral", text = "I should have been reading your reports.", condition = "backed_riley" },
        { speaker = "qa", expression = "smirk", text = "All 47 of them. Yes.", condition = "backed_riley" },

        -- Refocused
        { speaker = "qa", expression = "neutral", text = "Look. Feelings can wait. What can we ship tomorrow? List, please. I'll re-prioritize the bug queue around it.", condition = "refocused_team" },
        { speaker = "dev", expression = "neutral", text = "Feed works. Content creation works. Search is optimistic.", condition = "refocused_team" },
        { speaker = "qa", expression = "neutral", text = "Pull profiles. Pull search. The bugs in those won't fit before tomorrow.", condition = "refocused_team" },

        -- Walked back
        { speaker = "qa", expression = "neutral", text = "I shouldn't have framed it like that. The point stands. The delivery was sharper than it needed to be.", condition = "owned_mistakes" },
        { speaker = "dev", expression = "neutral", text = "And I should have spoken up about tech debt sooner.", condition = "owned_mistakes" },
        { speaker = "arch", expression = "concerned", text = "I... may have over-complicated the architecture.", condition = "owned_mistakes" },
        { speaker = "po", expression = "neutral", text = "And I changed requirements too much. Maybe.", condition = "owned_mistakes" },

        -- End
        { speaker = "pm", expression = "neutral", text = "That standup was 28 minutes. New record. For real this time." },
        { speaker = "qa", expression = "deadpan", text = "(Tomorrow is demo day. At least we're being honest with each other now.)" },

        { text = "", goto = "day12" }
    }
}
