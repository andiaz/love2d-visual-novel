return {
    title = "Day 12 -- Friday",
    subtitle = "Demo Day",
    narration = "Five hours to lock the build. Leadership at 2 PM. You have a list of buttons not to click. The list is the demo plan now.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- Pre-demo preparation
        { speaker = "qa", expression = "deadpan", text = "Friday morning. Demo day. The real one. I have a list of 23 buttons not to click. It is laminated." },
        { speaker = "qa", expression = "deadpan", text = "(I also have a backup list. The backup list has 31 buttons. The backup list is for if someone asks 'can you show us the search.')" },
        { speaker = "qa", expression = "deadpan", text = "I have prepared a demo flowchart. It says 'do not click here, here, here, here, here, here, or here.' I have starred the worst three." },
        { speaker = "pm", expression = "stressed", text = "Demo at 2 PM. Five hours to finalize." },
        { speaker = "dev", expression = "neutral", text = "Last night's build is stable. Don't touch anything." },
        { speaker = "qa", expression = "deadpan", text = "(Sam says 'stable.' I say 'hasn't crashed in 14 hours.' These are different statements.)" },
        { speaker = "arch", expression = "neutral", text = "Performance fix is in. We can handle 10 concurrent users." },
        { speaker = "dev", expression = "smiling", text = "Ten users at once. Try not to all log in at the same time." },
        { speaker = "qa", expression = "deadpan", text = "(I tested with 11 users yesterday. The eleventh user saw a blank screen and a console error that said 'undefined is not a function.' I have not told anyone this.)" },

        { speaker = "qa", expression = "deadpan", text = "(We fought the scope. The build is tighter because of it. Fewer buttons means fewer buttons to avoid clicking.)", condition = "fought_scope" },
        { speaker = "qa", expression = "deadpan", text = "(We absorbed the scope. The bug list grew by nine entries in the last three days. Seven of those are in the absorbed features. I am choosing not to think about this.)", condition = "absorbed_scope" },

        { speaker = "po", expression = "neutral", text = "Team? I want to say... I know I've been a lot." },
        { speaker = "dev", expression = "neutral", text = "Priya--" },
        { speaker = "po", expression = "neutral", text = "No, let me finish. I push hard because I believe in this. But I should have listened more." },
        { speaker = "qa", expression = "smirk", text = "(Is Priya... growing as a person? In the wild? Without a Jira ticket for it?)" },
        { speaker = "po", expression = "neutral", text = "After the demo, I want a real retrospective. The kind we don't usually do." },
        { speaker = "qa", expression = "smirk", text = "(I am cautiously optimistic. I will remain cautiously optimistic until proven otherwise. Which will probably be Tuesday.)" },

        -- Framing
        { speaker = "pm", expression = "neutral", text = "Riley, you ran the regression. You know the build better than anyone. How should we frame this?" },
        { speaker = "qa", expression = "deadpan", text = "(QA gets to frame the demo. Did somebody die?)" },

        { speaker = "qa", expression = "neutral", text = "(Three options. Each one shapes how leadership remembers ten weeks of work.)",
            choices = {
                { text = "'Polished MVP.' Demo only the green flows. Don't open the broken stuff. At all.", set = {polished_subset = true}, rel = {dev = 2, ux = 2, pm = 1} },
                { text = "'Full vision.' Show everything. Include the bugs. Let leadership see what 'unscoped' looks like.", set = {showed_everything = true}, rel = {po = 2, dev = -1, qa = -1} },
                { text = "'Honest progress.' Walk through what works, what doesn't, and what's in the bug log.", set = {honest_demo = true}, rel = {pm = 1, dev = 1, ux = 1, po = 1, arch = 1} },
            }
        },

        -- Polished
        { speaker = "qa", expression = "neutral", text = "Three flows. Green only. I'll sit at the keyboard. Anyone tries to click something else, I cough loudly.", condition = "polished_subset" },
        { speaker = "dev", expression = "smiling", text = "I love this plan.", condition = "polished_subset" },
        { speaker = "qa", expression = "deadpan", text = "(I have rehearsed the three flows nine times. The average click-through time is 4 minutes 22 seconds. I will not deviate.)", condition = "polished_subset" },

        -- Showed everything
        { speaker = "qa", expression = "smirk", text = "Show them everything. Let them see the search that sorts by zodiac sign. It's almost art at this point.", condition = "showed_everything" },
        { speaker = "po", expression = "excited", text = "YES! Show the vision!", condition = "showed_everything" },
        { speaker = "dev", expression = "neutral", text = "Korean alphabetical order. I already explained this.", condition = "showed_everything" },
        { speaker = "qa", expression = "deadpan", text = "(I am going to watch this demo like a horror movie. Through my fingers.)", condition = "showed_everything" },

        -- Honest
        { speaker = "qa", expression = "neutral", text = "Honest demo. 'Here's what works. Here's what doesn't. Here's the bug log.' I will read three bug numbers out loud. I will smile while doing it.", condition = "honest_demo" },
        { speaker = "pm", expression = "neutral", text = "Radical transparency. Leadership respects honesty.", condition = "honest_demo" },
        { speaker = "qa", expression = "deadpan", text = "(I have never smiled while reading bug numbers. This will be a first. I am practicing in the mirror.)", condition = "honest_demo" },

        -- Transition to demo
        { text = "", bg = "meeting_room", bgm = "tension" },

        -- The demo
        { speaker = "pm", expression = "neutral", text = "It's 2 PM. Leadership in the room. Here we go." },
        { speaker = "qa", expression = "deadpan", text = "(I am seated next to the demo laptop. My laminated list is on my lap. My hand is near the trackpad. I am ready.)" },
        { speaker = "po", expression = "neutral", text = "Good afternoon everyone. Let me introduce Project Chimera." },
        { speaker = "ux", expression = "neutral", text = "Let me walk you through the core experience." },

        { speaker = "qa", expression = "deadpan", text = "(Alex clicks through the first flow. Clean. I tested this flow 14 times. It works 14 out of 14 times. Those are good odds. Those are the best odds I have.)" },

        { speaker = "qa", expression = "deadpan", text = "(The pairing shows. Alex's flow and Sam's code feel seamless. I tested both sides. They actually match.)", condition = "paired_with_dev" },

        { speaker = "qa", expression = "deadpan", text = "(Second flow. Dashboard loads. Two seconds. I am counting in my head. One Mississippi. Two Mississippi. It loads. Casey's fix is holding.)" },

        -- Near-miss
        { speaker = "qa", expression = "deadpan", text = "(Then Alex hovers over the filter dropdown. The filter dropdown is on my list. It is starred. It is starred twice.)" },
        { speaker = "qa", expression = "deadpan", text = "(I cough. Loudly. Alex's hand moves away from the dropdown. Nobody in leadership notices. This is the greatest professional achievement of my career.)" },

        { speaker = "qa", expression = "deadpan", text = "(The rough edges from the absorbed scope are visible if you know where to look. The transition between features three and four stutters. Leadership doesn't notice. I notice. I always notice.)", condition = "absorbed_scope" },
        { speaker = "qa", expression = "deadpan", text = "(Clean. Tight. The scope cut means there's less surface area to go wrong. I approve of past us.)", condition = "fought_scope" },

        -- Tough question
        { speaker = "qa", expression = "deadpan", text = "(Then the Director of Engineering asks: 'What's your test coverage like?')" },
        { speaker = "qa", expression = "deadpan", text = "(This is my question. This question is mine. I open my mouth.)" },
        { speaker = "qa", expression = "neutral", text = "We have regression coverage on all critical paths. Automated tests for the three core flows. Manual testing on edge cases. The bug backlog is tracked and prioritized." },
        { speaker = "qa", expression = "deadpan", text = "(I did not say the number. The number is 47%. I said everything around the number. This is technically honesty.)" },

        { speaker = "qa", expression = "deadpan", text = "(The honest framing means I don't have to dance around the gaps. Leadership nods when I mention the bug backlog. They respect that we track it.)", condition = "honest_demo" },

        -- Q&A
        { speaker = "qa", expression = "deadpan", text = "(20 minutes of demo. 40 minutes of Q&A. It is always the Q&A. I have prepared answers to 11 questions. Two of them are about the search.)" },
        { speaker = "qa", expression = "deadpan", text = "(Nobody asks about the search. This is either a miracle or they're saving it for the follow-up email. I choose to believe miracle.)" },

        -- Post-demo transition
        { text = "", bg = "break_room" },

        -- Leadership feedback and team processing
        { speaker = "pm", expression = "cheerful", text = "We did it, team. Demo done." },
        { speaker = "pm", expression = "cheerful", text = "VP of Product said 'promising.' That's VP for 'you get another sprint.'" },
        { speaker = "dev", expression = "neutral", text = "How do we feel?" },
        { speaker = "qa", expression = "deadpan", text = "I feel like I need to file 12 bugs while the build is fresh in my head. And then I need to sit in a quiet room." },
        { speaker = "arch", expression = "neutral", text = "The architecture questions went well." },
        { speaker = "qa", expression = "deadpan", text = "(They went well because Casey prepared. And because nobody asked about the eleventh user.)" },
        { speaker = "po", expression = "neutral", text = "'Promising' means there's a next sprint. That's enough for today." },

        { speaker = "qa", expression = "deadpan", text = "(The honest demo earned us trust. I could tell. Leadership asked forward-looking questions. Not 'why is this broken' questions. That is rare.)", condition = "honest_demo" },

        -- Choice 2: Q&A reflection
        { speaker = "qa", expression = "deadpan", text = "(The Q&A is over. I answered three questions directly. I redirected two. I coughed once to prevent a catastrophic click. How do I feel about my performance?)",
            choices = {
                { text = "I handled every question with data and precision. QA represented.", set = {qa_confident = true}, rel = {pm = 1, dev = 1} },
                { text = "I survived by not saying the actual test coverage number. That counts.", set = {qa_nervous = true}, rel = {arch = 1, ux = 1} },
            }
        },

        { speaker = "qa", expression = "neutral", text = "(I knew every answer. Every edge case. Every risk. QA doesn't just find bugs. QA knows the product better than anyone in that room.)", condition = "qa_confident" },
        { speaker = "pm", expression = "cheerful", text = "Riley, your test coverage answer was perfect. Leadership loved the confidence.", condition = "qa_confident" },

        { speaker = "qa", expression = "deadpan", text = "(I technically did not lie. I described coverage qualitatively. The number lives in my head and in a spreadsheet nobody will ever open. That is enough.)", condition = "qa_nervous" },
        { speaker = "dev", expression = "neutral", text = "Riley, you sounded solid up there. Seriously.", condition = "qa_nervous" },
        { speaker = "qa", expression = "deadpan", text = "(Bless you, Sam.)", condition = "qa_nervous" },

        { speaker = "qa", expression = "deadpan", text = "Ask me on Monday. Right now I want to file 12 more bugs while the build is fresh in my head. And laminate a new list for next time." },

        { text = "", goto = "day13" }
    }
}
