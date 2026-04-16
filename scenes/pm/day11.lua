return {
    title = "Day 11 -- Thursday",
    subtitle = "The Breaking Point",
    narration = "One day left. The team is at a low simmer. As PM, you're either the safety valve or the cause.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "pm", expression = "stressed", text = "Thursday. One day before the demo. The team is at a low simmer." },
        { speaker = "pm", expression = "stressed", text = "Leadership replied to my scope email. 'Let's discuss.' Two words. The two worst words in corporate English." },

        { speaker = "pm", expression = "neutral", text = "Morning standup. Let's keep it focused." },
        { speaker = "dev", expression = "tired", text = "I fixed 9 bugs last night. Three new ones appeared. Code whack-a-mole." },
        { speaker = "qa", expression = "smirk", text = "Search now works, but returns results in random order." },
        { speaker = "dev", expression = "tired", text = "It's alphabetical. In a language I don't recognize." },
        { speaker = "pm", expression = "stressed", text = "(The team is making jokes. That is either a good sign or the last stage before collapse.)" },

        { bgm = "tension" },

        -- The cracks
        { speaker = "arch", expression = "concerned", text = "Hold on. I have to say it -- we're going about this the wrong way." },
        { speaker = "dev", expression = "frustrated", text = "Casey. Not now." },
        { speaker = "arch", expression = "concerned", text = "If we'd followed the architecture from week one, we wouldn't be dealing with these scaling issues right now." },
        { speaker = "dev", expression = "frustrated", text = "Casey, your plan would have us deploying the infrastructure by now. Just the infrastructure." },
        { speaker = "arch", expression = "concerned", text = "That's not fair--" },
        { speaker = "dev", expression = "frustrated", text = "What's not fair is redesigning the foundation the day before the demo!" },
        { speaker = "pm", expression = "stressed", text = "(Defcon two. Intervene.)" },
        { speaker = "pm", expression = "stressed", text = "Okay, okay. Let's take a breath--" },

        { speaker = "po", expression = "neutral", text = "Before anyone says it -- yes, the requirements have moved around. But--" },
        { speaker = "qa", expression = "deadpan", text = "A lot." },
        { speaker = "po", expression = "defensive", text = "But it's because I CARE about this product! I want it to be amazing!" },
        { speaker = "qa", expression = "deadpan", text = "Sure, amazing. But right now I'd take 'barely operational.'" },

        { speaker = "qa", expression = "deadpan", text = "Okay. I'm going to stop being nice about this." },
        { speaker = "qa", expression = "deadpan", text = "I've filed more bugs than anyone has read. QA has been waving a red flag since day three and nobody looked up." },
        { speaker = "qa", expression = "deadpan", text = "Now the red flag is a red screen. And you're all shocked." },

        { speaker = "pm", expression = "stressed", text = "..." },
        { speaker = "pm", expression = "stressed", text = "(This is the moment. Five faces looking at me. The room becomes whatever I say next.)" },
        { speaker = "pm", expression = "stressed", text = "(I am watching my team fracture in real time. Sam is angry. Casey is hurt. Riley is done. Priya is defensive. Alex is watching all of us like a documentary.)" },

        -- Callback: took_ownership (day 8)
        { speaker = "pm", expression = "stressed", text = "(Day 8, when the team owned the bugs together -- that trust is still here. Buried under exhaustion, but here.)", condition = "took_ownership" },

        -- Callback: rallied_team (day 10)
        { speaker = "pm", expression = "stressed", text = "(Last night's rally held. The slices came back done. That means the team CAN work together. They're just too tired to remember.)", condition = "rallied_team" },

        { speaker = "pm", expression = "stressed", text = "(The PM's job in this exact second is to decide what this room needs.)",
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
        { speaker = "pm", expression = "neutral", text = "(I just made a process commitment in front of the whole team. Now I have to keep it. Good. Accountability works both ways.)", condition = "backed_riley" },

        -- Refocused
        { speaker = "pm", expression = "neutral", text = "We're going to feel the feelings AFTER the demo. Right now, list. What can we ship tomorrow?", condition = "refocused_team" },
        { speaker = "dev", expression = "neutral", text = "Feed works. Content creation works. Search is optimistic.", condition = "refocused_team" },
        { speaker = "ux", expression = "neutral", text = "I'll polish what works and grey out what doesn't.", condition = "refocused_team" },
        { speaker = "pm", expression = "neutral", text = "(The list is short. The list is honest. The list is what I'm bringing to leadership in two hours.)", condition = "refocused_team" },

        -- Owned
        { speaker = "pm", expression = "stressed", text = "The process broke. That's my job. I should have made space for QA earlier. I should have shielded the team from scope. That's on me.", condition = "owned_mistakes" },
        { speaker = "dev", expression = "neutral", text = "And I should have spoken up about tech debt sooner.", condition = "owned_mistakes" },
        { speaker = "arch", expression = "concerned", text = "I... may have over-complicated the architecture.", condition = "owned_mistakes" },
        { speaker = "po", expression = "neutral", text = "And I changed requirements too much. Maybe.", condition = "owned_mistakes" },
        { speaker = "pm", expression = "stressed", text = "(Everyone owning a piece. That is the sound of a team healing. Messy, but real.)", condition = "owned_mistakes" },

        -- Extended aftermath: watching the team fracture
        { speaker = "pm", expression = "stressed", text = "After standup, I watch Sam slam his laptop open. Casey retreats to the whiteboard. Riley puts headphones on. Priya stares at her phone." },
        { speaker = "pm", expression = "stressed", text = "(Four people processing anger in four different ways. My job is to hold the space for all of them.)" },
        { speaker = "pm", expression = "stressed", text = "(The leadership meeting is at 2. I have three hours to turn a fracturing team and a reduced scope into a story that sounds like progress.)" },
        { speaker = "pm", expression = "stressed", text = "I build three slides. What we're shipping. What we're not. What we learned. The third slide is the hardest." },

        -- Post-crisis quiet moment
        { bg = "break_room", bgm = "late_night" },

        { speaker = "pm", expression = "stressed", text = "After the leadership meeting. Break room. The coffee is burnt. Appropriate." },
        { speaker = "pm", expression = "neutral", text = "Leadership took it... better than I expected. They cut two features from the demo scope. Features Priya and I have been fighting to keep." },
        { speaker = "pm", expression = "stressed", text = "(The relief is enormous. The guilt is also enormous. I should have escalated sooner.)" },

        { speaker = "qa", expression = "neutral", text = "Riley sits down. 'How'd the meeting go?'", condition = "backed_riley" },
        { speaker = "pm", expression = "neutral", text = "Scope cut. Two features. They agreed to the QA process change.", condition = "backed_riley" },
        { speaker = "qa", expression = "smirk", text = "You actually told them. Jordan, I owe you a coffee.", condition = "backed_riley" },

        { speaker = "dev", expression = "tired", text = "Sam sits down. Looks at me. 'What did leadership say?'", condition = "refocused_team" },
        { speaker = "pm", expression = "neutral", text = "Scope cut. Two features. We demo what works.", condition = "refocused_team" },
        { speaker = "dev", expression = "tired", text = "Thank God.", condition = "refocused_team" },

        { speaker = "po", expression = "neutral", text = "Priya sits down. She looks tired. 'The features they cut... were mine, weren't they?'", condition = "owned_mistakes" },
        { speaker = "pm", expression = "stressed", text = "Yeah. Recommendations and social sharing.", condition = "owned_mistakes" },
        { speaker = "po", expression = "neutral", text = "Good. They weren't ready. I should have said that last week.", condition = "owned_mistakes" },

        -- Choice 2: personal/emotional
        { speaker = "pm", expression = "stressed", text = "(I sit in the break room. The team is scattered. The scope is cut. Tomorrow is the demo.)" },
        { speaker = "pm", expression = "stressed", text = "(I managed this sprint. Every decision, every tradeoff, every standup that ran over. The team is bruised. That is partly on me.)" },
        { speaker = "pm", expression = "stressed", text = "(What does the team need from me for the last 18 hours?)",
            choices = {
                { text = "Walk the floor. Check in with each person. Ask how they're doing, not what they're shipping.", set = {crisis_empathy = true}, rel = {qa = 1, dev = 1, ux = 1} },
                { text = "Build the demo run sheet. Minute by minute. Give the team a script they can follow blindfolded.", set = {crisis_pragmatism = true}, rel = {pm = 1, arch = 1} },
            }
        },

        { speaker = "pm", expression = "neutral", text = "I find Sam. 'How are you, actually?' He pauses. 'Tired. But okay.'", condition = "crisis_empathy" },
        { speaker = "pm", expression = "neutral", text = "I find Riley. 'You good?' She nods. 'Better now. Thanks for backing me.' We don't need more words.", condition = "crisis_empathy" },
        { speaker = "pm", expression = "neutral", text = "I find Casey at the whiteboard. 'Casey. The architecture held last night. That's because of you.' He blinks. Nods. Keeps drawing.", condition = "crisis_empathy" },
        { speaker = "pm", expression = "stressed", text = "(The team is still here. Bruised but here. That is the PM's real metric.)", condition = "crisis_empathy" },

        { speaker = "pm", expression = "neutral", text = "I build the demo script. Minute 0: Jordan introduces. Minute 2: Sam demos the feed. Minute 5: Alex walks through the UX. Minute 8: Q&A.", condition = "crisis_pragmatism" },
        { speaker = "pm", expression = "neutral", text = "Every transition planned. Every backup ready. If the feed crashes, Sam switches to the content creator. If search breaks, we skip it.", condition = "crisis_pragmatism" },
        { speaker = "pm", expression = "stressed", text = "(The team needs a plan they can trust. I am building the plan. That is how I care.)", condition = "crisis_pragmatism" },

        -- End of day
        { speaker = "pm", expression = "neutral", text = "(That standup was 28 minutes. New record. For real this time.)" },
        { speaker = "pm", expression = "stressed", text = "(Tomorrow is demo day. At least the team is being honest with each other now.)" },
        { speaker = "pm", expression = "stressed", text = "(The scope is smaller. The team is real. That trade was worth it.)" },

        { text = "", goto = "day12" }
    }
}
