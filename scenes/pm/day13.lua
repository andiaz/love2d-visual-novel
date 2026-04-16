return {
    title = "Day 13 -- Monday",
    subtitle = "The Feedback",
    narration = "Demo done. Email from the director sitting at the top of your inbox. Subject: 'Re: Chimera Demo.' Two words that could mean anything.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- Morning at desk: reading the email privately
        { speaker = "pm", expression = "stressed", text = "Monday morning. Coffee is hot. Email is not open yet." },
        { speaker = "pm", expression = "stressed", text = "(The director's reply has been sitting in my inbox since Saturday at 11:47 PM. I know because I checked. Fourteen times.)" },
        { speaker = "pm", expression = "neutral", text = "(Managing up is its own discipline. You learn to read tone in subject lines. Exclamation marks are good. Ellipses are bad. 'Per my last email' is a death sentence.)" },
        { speaker = "pm", expression = "stressed", text = "(Okay. Opening it.)" },
        { speaker = "pm", expression = "neutral", text = "(Three paragraphs. No bullet points. That's... unusual. Directors love bullet points.)" },
        { speaker = "pm", expression = "cheerful", text = "(Oh. Oh, this is actually good. This is actually very good.)" },
        { speaker = "pm", expression = "neutral", text = "(Breathe. Don't forward it to the team yet. Frame it first. That's the job.)" },

        -- Team meeting
        { bg = "meeting_room" },
        { speaker = "pm", expression = "cheerful", text = "Alright, team. I have the leadership feedback from the demo." },
        { speaker = "dev", expression = "neutral", text = "On a scale of 'fired' to 'promoted,' where are we?" },
        { speaker = "qa", expression = "deadpan", text = "On a scale of 'your badge still works' to 'they remembered our project name.'" },
        { speaker = "pm", expression = "cheerful", text = "They remembered our name. And they liked what they saw." },

        -- Demo approach callbacks
        { speaker = "pm", expression = "neutral", text = "Direct quote: 'Clean, focused, professional.' They want to see more depth next sprint, but the framing landed.", condition = "polished_subset" },
        { speaker = "dev", expression = "smiling", text = "The less-is-more play. Works every time.", condition = "polished_subset" },

        { speaker = "pm", expression = "neutral", text = "They said, quote, 'Ambitious scope. Some rough edges, but the vision is clear.'", condition = "showed_everything" },
        { speaker = "qa", expression = "smirk", text = "They said 'rough edges.' That's generous.", condition = "showed_everything" },
        { speaker = "po", expression = "excited", text = "But they saw the VISION. That's what matters.", condition = "showed_everything" },

        { speaker = "pm", expression = "cheerful", text = "Direct quote: 'Finally, a team that tells us the truth.' They want the same format next time.", condition = "honest_demo" },
        { speaker = "dev", expression = "smiling", text = "Honesty as a strategy. Who knew.", condition = "honest_demo" },

        -- Scope callbacks
        { speaker = "pm", expression = "neutral", text = "They also noted that we kept scope tight. That was a deliberate call and it paid off.", condition = "fought_scope" },
        { speaker = "po", expression = "neutral", text = "I'm still not happy about the features we cut. But... I get it now.", condition = "fought_scope" },

        { speaker = "pm", expression = "stressed", text = "They did ask why some features felt half-baked. That's the scope expansion showing.", condition = "absorbed_scope" },
        { speaker = "dev", expression = "tired", text = "Because they were half-baked. We stretched too thin.", condition = "absorbed_scope" },
        { speaker = "pm", expression = "stressed", text = "(Note to self: next time, say no earlier. Or at all.)", condition = "absorbed_scope" },

        -- Verdict
        { speaker = "pm", expression = "cheerful", text = "Bottom line: Project Chimera is greenlit for another sprint. Two more weeks." },
        { speaker = "po", expression = "excited", text = "Two more weeks! We can finally--" },
        { speaker = "dev", expression = "neutral", text = "Priya." },
        { speaker = "po", expression = "neutral", text = "Right. Retro first. Sorry." },

        -- Retro begins
        { speaker = "pm", expression = "neutral", text = "Retro time. Standard format. What went well, what didn't, what we change. No sugarcoating." },
        { speaker = "pm", expression = "neutral", text = "(I put three columns on the whiteboard. Green, red, yellow. 'Keep doing,' 'Stop doing,' 'Start doing.' The markers are almost dry. I have been using these markers for fifteen days. They have facilitated more conversations than most of my one-on-ones.)" },
        { speaker = "pm", expression = "neutral", text = "(The room is different today. People are leaning forward. Last week they were leaning back. Leaning back means defensive. Leaning forward means invested. Body language does not lie.)" },
        { speaker = "pm", expression = "stressed", text = "(I set a five-minute timer for each person. This time I will actually enforce it. Probably.)" },

        -- Sam's retro (varies on paired_with_dev)
        { speaker = "dev", expression = "neutral", text = "What went well: pairing with Alex saved the UI. What didn't: we should have done it from day one.", condition = "paired_with_dev" },
        { speaker = "dev", expression = "neutral", text = "What went well: we shipped something. What didn't: I spent too much time working in isolation. Pairing earlier would have helped.", condition = {paired_with_dev = nil} },

        -- Riley's retro (varies on backed_riley)
        { speaker = "qa", expression = "neutral", text = "What went well: someone finally listened to QA. Jordan backed me in that meeting and it changed the dynamic.", condition = "backed_riley" },
        { speaker = "qa", expression = "deadpan", text = "What went well: we found 47 bugs before the demo. What didn't: it took a meltdown for anyone to read my reports.", condition = {backed_riley = nil} },

        -- Casey's retro
        { speaker = "arch", expression = "concerned", text = "What went well: the architecture held. Barely. What didn't: I was too rigid about the 'right' way to build things." },

        -- Priya's retro (her admission)
        { speaker = "po", expression = "neutral", text = "What went well: the product vision survived. What didn't: I rewrote the requirements four times in three weeks. The team deserves better than that." },
        { speaker = "qa", expression = "smirk", text = "(Character development.)" },
        { speaker = "po", expression = "neutral", text = "I heard that, Riley." },
        { speaker = "qa", expression = "smirk", text = "You were meant to." },

        -- Alex's retro
        { speaker = "ux", expression = "thinking", text = "What went well: the design system held together. What didn't: I should have pushed harder on usability testing. We shipped assumptions." },

        { speaker = "pm", expression = "neutral", text = "(I look at the whiteboard. The green column has eight items. The red column has twelve. The yellow column has six. The red column is always the longest. That is the nature of retrospectives. People remember what hurt.)" },
        { speaker = "pm", expression = "neutral", text = "(But the green column has something I did not expect. Three different people wrote 'the team' as what went well. Not a feature. Not a process. The people. That is not something you can put on a Gantt chart. But it might be the most important deliverable of the entire sprint.)" },

        -- Jordan's retro: the hardest one
        { speaker = "pm", expression = "stressed", text = "(My turn. Everyone else delivered something visible. A design. A feature. A bug report. I delivered... meetings. A timeline. A risk register nobody read.)" },
        { speaker = "pm", expression = "neutral", text = "(The PM retro. Where you account for the invisible work and hope someone notices.)",
            choices = {
                { text = "I should have protected scope harder. The team needed a shield, not a facilitator.", set = {retro_research = true}, rel = {dev = 2, qa = 1, ux = 1} },
                { text = "I should have broken down the walls between disciplines earlier. Same room, same problems, day one.", set = {retro_communication = true}, rel = {dev = 1, ux = 2, arch = 1} },
                { text = "Honestly? This team carried the project. I just tried to keep the path clear. Trust got us here.", set = {retro_trust = true}, rel = {dev = 1, ux = 1, qa = 1, po = 1, arch = 1} },
            }
        },

        -- Retro choice follow-ups
        { speaker = "pm", expression = "neutral", text = "Next sprint, scope locks at planning. No mid-sprint additions. No 'quick wins' that take three days.", condition = "retro_research" },
        { speaker = "dev", expression = "smiling", text = "Music to my ears.", condition = "retro_research" },

        { speaker = "pm", expression = "neutral", text = "Next sprint, cross-functional pairing from day one. Design, dev, and QA in the same room for kickoff.", condition = "retro_communication" },
        { speaker = "ux", expression = "excited", text = "Yes. Absolutely yes. I'll book the room.", condition = "retro_communication" },

        { speaker = "dev", expression = "smiling", text = "That might be the most human thing a PM has ever said in a retro.", condition = "retro_trust" },
        { speaker = "qa", expression = "neutral", text = "Seconded.", condition = "retro_trust" },

        { speaker = "pm", expression = "stressed", text = "(The retro is over. I feel like I just gave a performance review to myself. In public.)" },

        -- Post-retro 1-on-1: conditional on relationship scores
        { bg = "break_room", bgm = "late_night" },

        -- High dev relationship
        { speaker = "dev", expression = "neutral", text = "Hey. Got a minute?", condition = {rel_dev_gte = 5} },
        { speaker = "pm", expression = "neutral", text = "For the person who actually built the thing? Always.", condition = {rel_dev_gte = 5} },
        { speaker = "dev", expression = "smiling", text = "I don't say this often. You're a good PM, Jordan. You actually listen.", condition = {rel_dev_gte = 5} },
        { speaker = "pm", expression = "cheerful", text = "(That's... the best compliment a developer can give a PM. I'm going to remember that for a while.)", condition = {rel_dev_gte = 5} },

        -- High QA relationship
        { speaker = "qa", expression = "neutral", text = "Jordan. Before you head out.", condition = {rel_qa_gte = 5, rel_dev_gte = nil} },
        { speaker = "pm", expression = "neutral", text = "What's up, Riley?", condition = {rel_qa_gte = 5, rel_dev_gte = nil} },
        { speaker = "qa", expression = "neutral", text = "Most PMs treat QA like a speed bump. You treated me like a teammate. That matters.", condition = {rel_qa_gte = 5, rel_dev_gte = nil} },
        { speaker = "pm", expression = "cheerful", text = "(Riley doesn't do compliments. That one's going in the memory bank.)", condition = {rel_qa_gte = 5, rel_dev_gte = nil} },

        -- Alone (fallback)
        { speaker = "pm", expression = "stressed", text = "(Break room. Empty. Just me and a vending machine that doesn't take cards.)", condition = {rel_dev_gte = nil, rel_qa_gte = nil} },
        { speaker = "pm", expression = "neutral", text = "(Fifteen days of syncs, retros, and stand-ups. The team is solid. I think. I hope.)", condition = {rel_dev_gte = nil, rel_qa_gte = nil} },
        { speaker = "pm", expression = "stressed", text = "(The invisible work. Someone has to do it. Might as well be someone who cares.)", condition = {rel_dev_gte = nil, rel_qa_gte = nil} },

        -- Final choice: forward posture
        { speaker = "pm", expression = "neutral", text = "(Tomorrow is the last day. One more sprint after this, then the project either lives or gets archived. How do I want to go into it?)",
            choices = {
                { text = "Careful. Protect what works. Don't overreach.", set = {forward_cautious = true}, rel = {dev = 1, qa = 1} },
                { text = "Push it. The team proved they can deliver. Time to aim higher.", set = {forward_ambitious = true}, rel = {po = 1, ux = 1} },
            }
        },

        { speaker = "pm", expression = "neutral", text = "(Cautious it is. Protect the foundation. Build on solid ground.)", condition = "forward_cautious" },
        { speaker = "pm", expression = "cheerful", text = "(Ambitious it is. This team earned the right to swing big.)", condition = "forward_ambitious" },

        { speaker = "pm", expression = "neutral", text = "(One more day.)" },

        { text = "", goto = "day14" }
    }
}
