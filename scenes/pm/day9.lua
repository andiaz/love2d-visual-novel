return {
    title = "Day 9 -- Friday",
    subtitle = "The Pivot",
    narration = "Demo day. Four hours out. Priya called you at 7 AM. She talked to the CEO's nephew at the mixer. You can already feel the day getting longer.",

    bg = "office_day",
    bgm = "tension",

    dialogue = {
        { speaker = "pm", expression = "stressed", text = "Friday morning. Demo day. Priya called me at 7:14 AM. She said 'we need to talk.'" },
        { speaker = "pm", expression = "stressed", text = "('We need to talk.' The four words that end relationships and start emergency meetings. PM life means hearing both versions.)" },
        { speaker = "pm", expression = "stressed", text = "(I have a demo deck. I have a run-of-show document. I have a seating chart. I have contingency plans for contingency plans. None of them account for 'CEO's nephew had an idea.')" },

        -- Emergency meeting
        { speaker = "pm", expression = "neutral", text = "Team -- emergency meeting. Priya has an update.", bg = "meeting_room" },

        { speaker = "po", expression = "excited", text = "I ended up chatting with the CEO's nephew at last night's mixer." },
        { speaker = "dev", expression = "frustrated", text = "The CEO's nephew. Of course." },
        { speaker = "po", expression = "excited", text = "He's 22 and had INCREDIBLE insights about what Gen Z wants from knowledge platforms." },
        { speaker = "qa", expression = "neutral", text = "I'm afraid to ask." },
        { speaker = "po", expression = "excited", text = "Short-form video! TikTok for internal communications!" },
        { speaker = "dev", expression = "frustrated", text = "We're pivoting to TikTok. Based on the CEO's nephew. ON DEMO DAY." },
        { speaker = "pm", expression = "stressed", text = "(My Gantt chart just caught fire. I can see the dependencies collapsing in real time. Video transcoding is not on the sprint board. Video transcoding has never been on the sprint board.)" },

        { speaker = "arch", expression = "concerned", text = "Video hosting. Transcoding. CDN. Do you want me to draw--" },
        { speaker = "dev", expression = "frustrated", text = "Don't. Don't draw anything." },

        { speaker = "po", expression = "excited", text = "Marcus said the under-30 crowd would LOVE this. And the CEO was nodding the entire time!" },
        { speaker = "pm", expression = "stressed", text = "(The CEO nods. The CEO nods at quarterly reviews, at fire drills, at vending machine selections. The nod is not a mandate. But Priya thinks it is.)" },
        { speaker = "qa", expression = "deadpan", text = "Has anyone asked actual users if they want video?" },
        { speaker = "po", expression = "excited", text = "Marcus IS a user!" },
        { speaker = "pm", expression = "stressed", text = "(Marcus is a nephew. That is a different data point.)" },

        -- Jordan tries to manage
        { speaker = "pm", expression = "stressed", text = "Priya. The demo is in four hours. We can't add video." },
        { speaker = "po", expression = "neutral", text = "Not for the demo! For the roadmap! I just want to mention it." },
        { speaker = "qa", expression = "smirk", text = "Mention a feature we haven't built. What could go wrong." },

        { speaker = "pm", expression = "stressed", text = "(I have to handle this. The team is looking at me. Priya is looking at me. The clock is looking at me. The Gantt chart is looking at me and the Gantt chart is not happy.)" },
        { speaker = "pm", expression = "stressed", text = "(If I let Priya have the slide, the team loses trust. If I block Priya, she goes around me to the director. If I compromise, everyone gets half of what they want, which is the PM's natural habitat.)" },

        -- Replanning on the spot
        { speaker = "pm", expression = "stressed", text = "(I'm already replanning. If video enters sprint two: rewrite the sprint board, reallocate Sam's time, add QA infrastructure for media testing, extend the timeline by three weeks minimum.)" },
        { speaker = "pm", expression = "stressed", text = "(Three weeks. That's three weeks of Gantt chart I'd have to rebuild. Three weeks of status reports that say 'delayed due to strategic pivot.' Three weeks of explaining to the director why the timeline moved.)" },
        { speaker = "pm", expression = "stressed", text = "(I look around the room. Sam's jaw is tight. Casey is doing that thing where he draws invisible diagrams on the table with his finger. Riley has stopped writing in her notebook. When Riley stops writing, it means she has heard something so unreasonable that documentation feels pointless.)" },
        { speaker = "pm", expression = "stressed", text = "(Alex hasn't said a word. Alex is looking at me. Waiting. They all are. This is the moment where the PM either absorbs the chaos or redirects it. There is no third option.)" },
        { speaker = "pm", expression = "stressed", text = "(I think about every project retrospective I have ever run. The number one regret, every single time, is the same: 'We should have said no sooner.' Today is sooner. Today is four hours before the demo. If I am going to say no, the clock is ticking.)" },

        { speaker = "pm", expression = "neutral", text = "(Three plays. Each one has a price.)",
            choices = {
                { text = "Let her have it. One slide in the deck about 'future vision.'", set = {supported_pivot = true}, rel = {po = 2, dev = -2, qa = -2} },
                { text = "Hard no. We demo what's built. I'll have the conversation with Priya offline.", set = {resisted_pivot = true}, rel = {dev = 2, qa = 2, ux = 1, po = -2} },
                { text = "Compromise. One line in Q&A: 'We're exploring multimedia.' No mockups.", set = {negotiated_pivot = true}, rel = {po = 1, dev = 1, ux = 1, pm = 0} },
            }
        },

        -- Support
        { speaker = "pm", expression = "stressed", text = "Okay Priya. One slide. Future vision. Just enough to mention the direction.", condition = "supported_pivot" },
        { speaker = "po", expression = "excited", text = "Yes! I'll send inspiration screenshots right now!", condition = "supported_pivot" },
        { speaker = "dev", expression = "frustrated", text = "We're demoing a dream of a product that doesn't exist.", condition = "supported_pivot" },
        { speaker = "pm", expression = "stressed", text = "(I made the wrong call. I can feel it. The team's faces say it. Risk register: trust deficit. Severity: high. Mitigation: deliver on sprint two.)", condition = "supported_pivot" },

        -- Resist
        { speaker = "pm", expression = "neutral", text = "Priya. No. Not today. We demo what we built. I'll handle the 'future vision' conversation with leadership directly after the demo. Trust me.", condition = "resisted_pivot" },
        { speaker = "po", expression = "defensive", text = "But--", condition = "resisted_pivot" },
        { speaker = "pm", expression = "neutral", text = "I will. I promise. Just not in the demo. The demo is for showing work, not wishes.", condition = "resisted_pivot" },
        { speaker = "dev", expression = "smiling", text = "Thank you, Jordan.", condition = "resisted_pivot" },
        { speaker = "pm", expression = "stressed", text = "(The team needed me to be the wall between them and the pivot. That's the job. Buffer. Shield. Punching bag. In that order.)", condition = "resisted_pivot" },

        -- Negotiate
        { speaker = "pm", expression = "neutral", text = "Compromise. One line in the Q&A: 'We're exploring multimedia.' No mockups, no commitments, no timeline.", condition = "negotiated_pivot" },
        { speaker = "po", expression = "neutral", text = "Exploring... I can live with exploring.", condition = "negotiated_pivot" },
        { speaker = "dev", expression = "smiling", text = "'Exploring.' Translation: absolutely nothing has been built.", condition = "negotiated_pivot" },
        { speaker = "pm", expression = "stressed", text = "('Exploring' doesn't go on the Gantt chart. 'Exploring' doesn't get a sprint ticket. 'Exploring' is free. That's why I chose it.)", condition = "negotiated_pivot" },

        -- Callbacks
        { speaker = "po", expression = "defensive", text = "The scope expansion proved the market wants more--", condition = "fought_scope" },
        { speaker = "pm", expression = "stressed", text = "The scope expansion created six bugs, Priya. I have the triage report. Every feature we added was a feature that broke. Let's not add more right now.", condition = "fought_scope" },

        -- The demo
        { speaker = "pm", expression = "neutral", text = "Alright. It's time. Everyone ready?" },
        { speaker = "dev", expression = "neutral", text = "Define 'ready.'" },
        { speaker = "qa", expression = "smirk", text = "I've memorized which buttons not to click." },
        { speaker = "pm", expression = "stressed", text = "(Let's do this. The run-of-show is on my clipboard. The demo script is memorized. The contingency plan is in my back pocket. The contingency plan's contingency plan is in my head.)" },
        { speaker = "pm", expression = "stressed", text = "(I just need a clean run-through. No crashes. No pivots. No nephews.)" },

        -- Post-demo
        { speaker = "pm", expression = "stressed", text = "(The first demo. Not a disaster. Not a triumph. A demo. Leadership wants a 'fuller version' in two weeks. Of course they do.)", bg = "break_room" },
        { speaker = "pm", expression = "stressed", text = "(The director said 'good start.' 'Good start' means 'not enough.' 'Not enough' means sprint two is going to be brutal.)" },
        { speaker = "pm", expression = "neutral", text = "(But the team held together. Sam's fixes worked. Riley's demo script worked. The pivot didn't derail us. That's project management success measured in disasters that didn't happen.)" },
        { speaker = "pm", expression = "stressed", text = "(After the demo, the director pulled me aside. 'Good start, Jordan. Keep the scope tight.' Keep the scope tight. From the person whose organization chart includes the nephew who just tried to blow up the scope.)" },
        { speaker = "pm", expression = "neutral", text = "(I nod. I write it down. I will use 'keep the scope tight' in every future conversation with Priya. The director gave me ammunition and he does not even know it.)" },

        -- Choice 2
        { speaker = "pm", expression = "stressed", text = "(Demo is done. Sprint one is over. What am I feeling?)",
            choices = {
                { text = "Relief. The demo worked. The plan held. The team survived.", set = {pivot_relieved = true}, rel = {dev = 1, qa = 1} },
                { text = "Anger. The pivot blindsided us. Priya should have raised it before demo day.", set = {pivot_angry = true}, rel = {po = -1, qa = 1} },
                { text = "Pragmatic. Sprint two starts Monday. Time to replan everything with video as a maybe.", set = {pivot_pragmatic = true}, rel = {arch = 1, dev = 1} },
            }
        },

        { speaker = "pm", expression = "neutral", text = "The plan held. The demo worked. Nobody clicked the wrong button. The run-of-show survived contact with reality.", condition = "pivot_relieved" },
        { speaker = "pm", expression = "stressed", text = "(Relief. The PM emotion. We don't celebrate wins. We exhale when the losses don't happen.)", condition = "pivot_relieved" },

        { speaker = "pm", expression = "stressed", text = "Priya dropped a pivot on demo day. No warning. No stakeholder alignment. No risk assessment. That's not product vision. That's ambush.", condition = "pivot_angry" },
        { speaker = "pm", expression = "stressed", text = "(The anger is a signal. It says 'fix the communication process before sprint two.' It says 'no more emergency meetings on demo day.' It says 'the PM needs to know before the team does.')", condition = "pivot_angry" },

        { speaker = "pm", expression = "neutral", text = "Sprint two plan. Scenario A: no video. Scenario B: video exploration. Scenario C: full video pivot. Each one has a timeline, a risk register, and a resource allocation.", condition = "pivot_pragmatic" },
        { speaker = "pm", expression = "stressed", text = "(Three plans for one sprint. That's not over-planning. That's surviving in a codebase where the product owner talks to nephews at mixers.)", condition = "pivot_pragmatic" },

        { speaker = "pm", expression = "stressed", text = "(Day 9. Demo day. The plan survived. Sprint two starts Monday. Time to rebuild the Gantt chart. Again.)" },

        { text = "", goto = "day10" }
    }
}
