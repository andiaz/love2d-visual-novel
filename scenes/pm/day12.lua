return {
    title = "Day 12 -- Friday",
    subtitle = "Demo Day",
    narration = "Five hours to lock the story. Leadership in the room at 2 PM. Your only job: choose the frame, run the show, and pray nobody clicks the wrong button.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- Pre-demo preparation
        { speaker = "pm", expression = "stressed", text = "Friday morning. Demo day. The real one this time." },
        { speaker = "pm", expression = "stressed", text = "(I have three contingency plans. Plan A: the demo goes well. Plan B: the demo goes okay and I talk fast. Plan C: the projector 'breaks' and I present from slides.)" },
        { speaker = "pm", expression = "stressed", text = "Okay. Run-of-show. Alex walks through the product. Sam handles technical questions. Casey covers architecture. Priya does the vision opener. Riley... sits near the keyboard." },
        { speaker = "qa", expression = "smirk", text = "I have a laminated list of buttons not to click. I will guard the keyboard with my life." },
        { speaker = "pm", expression = "stressed", text = "(The laminated list is genuinely comforting. That's where I am right now.)" },
        { speaker = "dev", expression = "tired", text = "Last night's build is stable. Don't touch anything. Nobody pushes to main." },
        { speaker = "arch", expression = "neutral", text = "Performance fix is in. We can handle 10 concurrent users." },
        { speaker = "dev", expression = "smiling", text = "Ten concurrent users. That's enterprise-grade, right? Right?" },
        { speaker = "pm", expression = "stressed", text = "I have printed backup slides in case the build crashes. I have a second laptop in my bag. I have memorized the Wi-Fi password for three different networks." },
        { speaker = "qa", expression = "deadpan", text = "Jordan, you are one thermos of coffee away from a NASA launch director." },
        { speaker = "pm", expression = "stressed", text = "(She's not wrong.)" },

        { speaker = "pm", expression = "stressed", text = "(The fought_scope decision from last week keeps replaying. If we cut the right things, today should be clean. If we didn't...)", condition = "fought_scope" },
        { speaker = "pm", expression = "stressed", text = "(We absorbed that scope. I know it. The edges are going to show today. I just have to steer around them.)", condition = "absorbed_scope" },

        { speaker = "po", expression = "neutral", text = "Team? I want to say... I know I've been a lot." },
        { speaker = "dev", expression = "neutral", text = "Priya--" },
        { speaker = "po", expression = "neutral", text = "No, let me finish. I push hard because I believe in this. But I should have listened more." },
        { speaker = "pm", expression = "neutral", text = "(Is Priya... growing? In real time? During demo prep?)" },
        { speaker = "po", expression = "neutral", text = "After the demo, I want a real retrospective. The kind we don't usually do." },
        { speaker = "pm", expression = "cheerful", text = "That's actually very mature, Priya. I'll book the room." },
        { speaker = "pm", expression = "stressed", text = "(I'll add it to the calendar. With a real agenda this time. Not just 'what went well / what went badly / Jordan cries.')" },

        -- The framing call
        { speaker = "pm", expression = "neutral", text = "Alex is leading the walkthrough. But the framing - that's mine. How do I want leadership to see this?" },

        { speaker = "pm", expression = "stressed", text = "(Frame the story. The product is 80% the story I tell about it.)",
            choices = {
                { text = "'Focused MVP.' Show the polished core. Less is more.", set = {polished_subset = true}, rel = {qa = 2, dev = 2, ux = 1} },
                { text = "'Ambitious vision.' Show everything. Let leadership see the scope.", set = {showed_everything = true}, rel = {po = 2, qa = -2, dev = -1} },
                { text = "'Honest progress.' Walk through what works, what doesn't, and what's next.", set = {honest_demo = true}, rel = {dev = 1, ux = 1, qa = 1, po = 1, arch = 1} },
            }
        },

        -- Polished
        { speaker = "dev", expression = "smiling", text = "Smart. Show strength, not surface area.", condition = "polished_subset" },
        { speaker = "qa", expression = "neutral", text = "I approve. The parts that work actually work well.", condition = "polished_subset" },
        { speaker = "pm", expression = "neutral", text = "(Three flows. Tight transitions. I've rehearsed the handoff timing in my head four times already.)", condition = "polished_subset" },

        -- Showed everything
        { speaker = "po", expression = "excited", text = "Yes! Show them everything!", condition = "showed_everything" },
        { speaker = "qa", expression = "smirk", text = "Including the search that sorts by zodiac sign?", condition = "showed_everything" },
        { speaker = "dev", expression = "neutral", text = "It's alphabetical in Korean. I told you.", condition = "showed_everything" },
        { speaker = "pm", expression = "stressed", text = "(I'm going to need more contingency plans.)", condition = "showed_everything" },

        -- Honest
        { speaker = "pm", expression = "neutral", text = "Radical transparency. I've never tried it. Let's see how it lands.", condition = "honest_demo" },
        { speaker = "dev", expression = "neutral", text = "Refreshing. Let's do it.", condition = "honest_demo" },
        { speaker = "pm", expression = "neutral", text = "(No spin. Just the work. The scariest frame is the one with no frame at all.)", condition = "honest_demo" },

        -- Transition to demo
        { text = "", bg = "meeting_room", bgm = "tension" },

        -- The demo
        { speaker = "pm", expression = "neutral", text = "It's 2 PM. Leadership is in the room. Three VPs. One director. Here we go." },
        { speaker = "pm", expression = "stressed", text = "(Deep breath. You've run 40 demos in your career. This one matters more than most. Don't let them see the sweat.)" },
        { speaker = "po", expression = "neutral", text = "Good afternoon everyone. Project Chimera started with a question: what if we could--" },
        { speaker = "pm", expression = "stressed", text = "(Priya's opener is good. She practiced. I can tell because she's not ad-libbing. Thank god.)" },
        { speaker = "ux", expression = "neutral", text = "Let me walk you through the core experience." },
        { speaker = "pm", expression = "stressed", text = "(Alex clicks through the first flow. Clean. Smooth. The animations Sam built are actually... good? When did that happen?)" },

        { speaker = "pm", expression = "stressed", text = "(The pairing paid off. Alex's design and Sam's code move like they were built by the same person.)", condition = "paired_with_dev" },

        { speaker = "pm", expression = "stressed", text = "(Second flow. Dashboard loads in under two seconds. Casey's performance fix is holding.)" },
        { speaker = "pm", expression = "stressed", text = "(Third flow. The filter. Please work. Please work. Please--)" },
        { speaker = "pm", expression = "cheerful", text = "(It works. It actually works.)" },

        { speaker = "pm", expression = "stressed", text = "(We kept it tight. Three flows, no detours. The scope cut is paying off right now.)", condition = "fought_scope" },
        { speaker = "pm", expression = "stressed", text = "(I can see the rough edges. The transition between the third and fourth feature is janky. Leadership hasn't noticed yet. Keep moving.)", condition = "absorbed_scope" },

        -- Tough question
        { speaker = "pm", expression = "stressed", text = "Then the VP of Engineering leans forward." },
        { speaker = "pm", expression = "stressed", text = "'What's the scalability story? Can this handle production load?'" },
        { speaker = "arch", expression = "neutral", text = "We're currently optimized for 10 concurrent users. The architecture supports horizontal scaling, but we'd need to--" },
        { speaker = "pm", expression = "stressed", text = "(Casey handles it. Clean, honest, no overselling. I could hug Casey right now. I will not hug Casey.)" },

        -- Near-miss
        { speaker = "pm", expression = "stressed", text = "(Then it happens. Alex clicks one screen too deep. The loading spinner appears. Three seconds. Five seconds.)" },
        { speaker = "pm", expression = "stressed", text = "(My backup slide is ready. My finger is on the trackpad.)" },
        { speaker = "pm", expression = "cheerful", text = "(Seven seconds. It loads. Nobody in leadership blinked. They were reading the slide behind it. We got lucky.)" },
        { speaker = "qa", expression = "deadpan", text = "(Riley's face hasn't moved. But her knuckles are white.)" },

        { speaker = "pm", expression = "neutral", text = "(The honest framing is landing. Leadership is nodding. They're asking 'what's next' questions, not 'why didn't you' questions. That's the good kind.)", condition = "honest_demo" },

        -- Q&A
        { speaker = "pm", expression = "stressed", text = "(20 minutes of demo. 40 minutes of Q&A. It is always the Q&A.)" },
        { speaker = "pm", expression = "stressed", text = "(Questions come fast. Timeline. Budget. Headcount. Integration with the legacy system. I field the first three. Sam takes the technical ones. Priya handles the roadmap.)" },
        { speaker = "pm", expression = "stressed", text = "(We sound like a team. When did that happen?)" },

        -- Post-demo transition
        { text = "", bg = "break_room" },

        -- Leadership feedback and team processing
        { speaker = "pm", expression = "cheerful", text = "We did it, team. Demo is done." },
        { speaker = "pm", expression = "cheerful", text = "VP of Product pulled me aside after. She said 'promising.' That's VP for 'I'm not going to kill this project.'" },
        { speaker = "dev", expression = "neutral", text = "How do we feel?" },
        { speaker = "qa", expression = "deadpan", text = "My hands are still shaking." },
        { speaker = "arch", expression = "neutral", text = "The scalability question went better than I expected." },
        { speaker = "po", expression = "neutral", text = "'Promising' is good. 'Promising' means there's a next sprint." },
        { speaker = "pm", expression = "neutral", text = "(She's right. 'Promising' means we survived. Now we have to deliver.)" },

        { speaker = "pm", expression = "neutral", text = "(The honest approach earned us something. Leadership asked about next steps, not about what went wrong. That's rare.)", condition = "honest_demo" },

        -- Choice 2: Q&A reflection
        { speaker = "pm", expression = "neutral", text = "(The demo is one thing. But the Q&A is where careers are made or broken. How did I handle it?)",
            choices = {
                { text = "I ran that Q&A like a conductor. Every question routed to the right person.", set = {qa_confident = true}, rel = {dev = 1, po = 1} },
                { text = "I white-knuckled through every question and prayed nobody noticed.", set = {qa_nervous = true}, rel = {qa = 1, arch = 1} },
            }
        },

        { speaker = "pm", expression = "cheerful", text = "(Forty minutes of Q&A and I didn't fumble a single handoff. That's the best project management I've done all sprint.)", condition = "qa_confident" },
        { speaker = "dev", expression = "smiling", text = "Jordan, that was smooth. You had an answer queued before they finished the question.", condition = "qa_confident" },

        { speaker = "pm", expression = "stressed", text = "(I smiled through every question while my brain screamed. But nobody noticed. That counts as success, right?)", condition = "qa_nervous" },
        { speaker = "qa", expression = "neutral", text = "Jordan, you looked calm up there. Genuinely.", condition = "qa_nervous" },
        { speaker = "pm", expression = "stressed", text = "(Bless you, Riley.)", condition = "qa_nervous" },

        { speaker = "pm", expression = "stressed", text = "Ask me how I really feel on Monday. Right now I need to sit in a dark room for about four hours." },

        { text = "", goto = "day13" }
    }
}
