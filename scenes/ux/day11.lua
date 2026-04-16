return {
    title = "Day 11 -- Thursday",
    subtitle = "The Breaking Point",
    narration = "One day left. The cracks are showing. Someone is about to say what everyone is thinking.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "ux", expression = "neutral", text = "Thursday. One day before the final demo. The cracks are showing." },
        { speaker = "ux", expression = "thinking", text = "(I notice things. That is my job. Today I am noticing things I do not want to notice. Sam's hands are shaking from caffeine. Riley hasn't made a joke in two days. Casey keeps touching the whiteboard marker like a security blanket.)" },

        -- Morning standup
        { speaker = "pm", expression = "neutral", text = "Alright, morning standup. Quick updates only, please." },
        { speaker = "dev", expression = "tired", text = "I fixed 9 bugs last night. Three new ones appeared. It's like code whack-a-mole." },
        { speaker = "qa", expression = "smirk", text = "The search feature now works, but it returns results in a random order. Is that a feature?" },
        { speaker = "dev", expression = "tired", text = "It's alphabetical. In a language I don't recognize." },
        { speaker = "ux", expression = "thinking", text = "(Sam is making jokes. When Sam makes jokes about bugs it means he is either coping or breaking. Today it is both.)" },

        { bgm = "tension" },

        -- The breaking point
        { speaker = "arch", expression = "concerned", text = "I need to bring something up. I've been thinking about this project and... we're building it wrong." },
        { speaker = "dev", expression = "frustrated", text = "Casey. Not now." },
        { speaker = "arch", expression = "concerned", text = "We wouldn't have these scaling problems if we'd stuck with the architecture I laid out in week one." },
        { speaker = "dev", expression = "frustrated", text = "Your architecture would've had us writing YAML files until next quarter." },
        { speaker = "arch", expression = "concerned", text = "That's not fair--" },
        { speaker = "dev", expression = "frustrated", text = "What's not fair is redesigning the foundation the day before the demo!" },
        { speaker = "ux", expression = "thinking", text = "(I am watching two people I respect tear each other apart over a caching layer. The room temperature just dropped three degrees.)" },
        { speaker = "pm", expression = "stressed", text = "Okay, okay. Let's take a breath--" },

        { speaker = "po", expression = "neutral", text = "Can I just say something? I know I've changed the requirements a lot--" },
        { speaker = "qa", expression = "deadpan", text = "A lot." },
        { speaker = "po", expression = "defensive", text = "But it's because I care about this product! I want it to be amazing!" },
        { speaker = "qa", expression = "deadpan", text = "I'd settle for 'doesn't catch fire.' Amazing can wait." },

        -- Someone snaps (Riley -- the quiet one finally breaks)
        { speaker = "qa", expression = "deadpan", text = "I've been professional about this for eleven days. I'm done." },
        { speaker = "qa", expression = "deadpan", text = "I've filed bugs with screenshots and repro steps. Nobody reads QA reports until something catches fire." },
        { speaker = "qa", expression = "deadpan", text = "Look around. It's burning. And you're all acting surprised." },

        -- Silence
        { speaker = "pm", expression = "neutral", text = "..." },
        { speaker = "dev", expression = "neutral", text = "..." },
        { speaker = "ux", expression = "thinking", text = "(The room is silent. Six people breathing. I can hear the HVAC. I can hear my own heartbeat.)" },
        { speaker = "ux", expression = "thinking", text = "(This is the human cost. Not the bugs. Not the architecture. The people. Riley has been carrying 47 bugs and nobody saw the weight.)" },

        -- Callback: took_ownership (day 8)
        { speaker = "ux", expression = "thinking", text = "(Day 8, we owned our mistakes together. That thread is still there. Thin, but there. I can see it in how Riley looked at Sam just now -- not with anger, but with exhaustion.)", condition = "took_ownership" },

        -- Callback: rallied_team (day 10)
        { speaker = "ux", expression = "thinking", text = "(Last night the team split the work. Everyone came back with their slice done. We can do this. We just need to remember that we can.)", condition = "rallied_team" },

        { speaker = "ux", expression = "thinking", text = "Riley has a point. A sharp, uncomfortable point.",
            choices = {
                { text = "Riley's right. We need to listen to QA more.", set = {backed_riley = true}, rel = {qa = 3, dev = 1, pm = 0, po = -1} },
                { text = "Everyone's frustrated. Let's focus on what we CAN ship.", set = {refocused_team = true}, rel = {pm = 2, dev = 1, qa = 1, arch = 1} },
                { text = "We all made mistakes. Me included. Let's own it and move forward.", set = {owned_mistakes = true}, rel = {qa = 1, dev = 1, pm = 1, po = 1, arch = 1} },
            }
        },

        -- Backed Riley
        { speaker = "qa", expression = "smirk", text = "...thank you, Alex.", condition = "backed_riley" },
        { speaker = "po", expression = "neutral", text = "I'm sorry, Riley. I should have read your bug reports.", condition = "backed_riley" },
        { speaker = "qa", expression = "neutral", text = "All 47 of them. Yes.", condition = "backed_riley" },
        { speaker = "ux", expression = "thinking", text = "(Riley's shoulders dropped two inches. That is what validation looks like in body language.)", condition = "backed_riley" },

        -- Refocused
        { speaker = "pm", expression = "neutral", text = "Right. What can we actually demo tomorrow? Let's make a list.", condition = "refocused_team" },
        { speaker = "dev", expression = "neutral", text = "Feed works. Content creation works. Search is... optimistic.", condition = "refocused_team" },
        { speaker = "ux", expression = "neutral", text = "I'll polish the flows that work and grey out everything else.", condition = "refocused_team" },
        { speaker = "ux", expression = "thinking", text = "(Greying out features I designed. Each one a small funeral. But a polished subset is better than a broken whole.)", condition = "refocused_team" },

        -- Owned mistakes
        { speaker = "ux", expression = "neutral", text = "I should have pushed harder for requirements upfront. I should have flagged edge cases earlier.", condition = "owned_mistakes" },
        { speaker = "dev", expression = "neutral", text = "And I should have spoken up about tech debt sooner.", condition = "owned_mistakes" },
        { speaker = "arch", expression = "concerned", text = "I think I made the architecture more complex than it needed to be.", condition = "owned_mistakes" },
        { speaker = "po", expression = "neutral", text = "And I maybe changed the requirements too much. Maybe.", condition = "owned_mistakes" },
        { speaker = "ux", expression = "thinking", text = "(Six people owning their piece. This is what design research calls a 'moment of truth.' The experience of the team just shifted.)", condition = "owned_mistakes" },

        -- Extended: Witnessing the human cost
        { speaker = "ux", expression = "thinking", text = "After standup I walk back to my desk. I pass each person's workspace." },
        { speaker = "ux", expression = "thinking", text = "Sam's desk: three empty coffee cups, a sticky note that says 'FIX THE BRACKET,' and a commit graph that looks like a heartbeat monitor." },
        { speaker = "ux", expression = "thinking", text = "Casey's whiteboard: version 15 of the system diagram. Each version slightly more honest than the last." },
        { speaker = "ux", expression = "thinking", text = "Riley's desk: immaculate. Organized. A Post-it that reads '201/247.' The bug tracker minimized to a thin line at the bottom of the screen." },
        { speaker = "ux", expression = "thinking", text = "Priya's desk: Notion open to a demo script that has been cut in half. Red strikethroughs on features she championed." },
        { speaker = "ux", expression = "thinking", text = "(I design user experiences. Right now the user experience of this team is exhaustion, frustration, and a thin thread of hope. That is the product I should be designing for.)" },

        -- Post-crisis quiet moment
        { bg = "break_room", bgm = "late_night" },

        { speaker = "ux", expression = "neutral", text = "Break room. 3 PM. I sit with a tea that is getting cold because I forgot to drink it." },

        { speaker = "qa", expression = "neutral", text = "Riley sits down across from me. No laptop.", condition = "backed_riley" },
        { speaker = "qa", expression = "neutral", text = "Alex. Nobody else noticed I was drowning. You noticed.", condition = "backed_riley" },
        { speaker = "ux", expression = "thinking", text = "(Noticing is the job. Noticing the people, not just the pixels.)", condition = "backed_riley" },

        { speaker = "dev", expression = "tired", text = "Sam sits down. 'The greyed-out features. That was smart.'", condition = "refocused_team" },
        { speaker = "ux", expression = "neutral", text = "It's just design. Show what works. Hide what doesn't. Honest.", condition = "refocused_team" },

        { speaker = "po", expression = "neutral", text = "Priya sits down. She's quiet. That is unusual.", condition = "owned_mistakes" },
        { speaker = "po", expression = "neutral", text = "Alex. The features I cut from the demo script. Can you make the remaining ones look... really good?", condition = "owned_mistakes" },
        { speaker = "ux", expression = "neutral", text = "Already on it. They'll look better than we planned.", condition = "owned_mistakes" },

        -- Choice 2: personal/emotional
        { speaker = "ux", expression = "thinking", text = "(I have spent two weeks designing a product. Today I realized I should have been designing a team experience.)" },
        { speaker = "ux", expression = "thinking", text = "(The pixel-perfect obsession matters. But the people-perfect obsession matters more.)" },
        { speaker = "ux", expression = "thinking", text = "(What do I do with what I've witnessed today?)",
            choices = {
                { text = "Sketch a 'team health' card for the retro. Document what I saw. The human patterns. Make it visible.", set = {crisis_empathy = true}, rel = {qa = 1, pm = 1, dev = 1} },
                { text = "Channel it into the demo. Make every remaining screen perfect. The team's pain should produce something beautiful.", set = {crisis_pragmatism = true}, rel = {ux = 1, po = 1} },
            }
        },

        { speaker = "ux", expression = "thinking", text = "I sketch the retro card. 'Team UX Audit.' Stress points. Communication gaps. Moments where someone needed help and nobody saw.", condition = "crisis_empathy" },
        { speaker = "ux", expression = "neutral", text = "It is the best design work I have done this sprint. And it has nothing to do with pixels.", condition = "crisis_empathy" },
        { speaker = "ux", expression = "thinking", text = "(A designer who only designs screens is missing half the picture.)", condition = "crisis_empathy" },

        { speaker = "ux", expression = "neutral", text = "I open Figma. Every remaining screen gets one more pass. Spacing. Color. Microinteractions. The demo will feel effortless.", condition = "crisis_pragmatism" },
        { speaker = "ux", expression = "thinking", text = "(The team bled for this product. The least I can do is make the product bleed for them. In a good way. In a beautiful, polished, pixel-perfect way.)", condition = "crisis_pragmatism" },
        { speaker = "ux", expression = "neutral", text = "(Tomorrow, leadership will see something that looks easy. They will not see the 28-minute standup behind it.)", condition = "crisis_pragmatism" },

        -- End of day
        { speaker = "pm", expression = "neutral", text = "We just hit 28 minutes on a standup. Genuinely a new record." },
        { speaker = "ux", expression = "neutral", text = "Tomorrow is demo day. Whatever happens, at least we're being honest with each other now." },
        { speaker = "ux", expression = "thinking", text = "(I design experiences. Today I witnessed one. It was messy, painful, and real. The best designs always are.)" },

        { text = "", goto = "day12" }
    }
}
