return {
    title = "Day 3 -- Wednesday",
    subtitle = "The Demo Bomb",
    narration = "Your phone rings at 8:15 AM. It's the director. Before the team knows, before Jordan knows, you know. Leadership wants a demo.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- Unique PO scene: stakeholder call BEFORE the team finds out
        { speaker = "po", expression = "neutral", text = "(Phone ringing. Director's name. 8:15 AM. Before standup. Before coffee.)" },
        { speaker = "po", expression = "excited", text = "'Hi David. Yes, absolutely. What's up?'" },
        { speaker = "po", expression = "neutral", text = "(He's talking about the leadership offsite. Two weeks out. They want project demos. He's asking if we're ready.)" },
        { speaker = "po", expression = "thinking", text = "(Am I ready? I have a deck, a team that argues about everything, and wireframes that aren't signed off.)" },
        { speaker = "po", expression = "excited", text = "'Absolutely, David. We'd love to present. The team has been making great progress.'" },
        { speaker = "po", expression = "neutral", text = "(Did I just lie to the director? No. I told him the truth we haven't built yet. That's different.)" },
        { speaker = "po", expression = "stressed", text = "(He says the VP will reach out to Jordan directly. So Jordan will hear it from above, not from me. That's... complicated.)" },
        { speaker = "po", expression = "thinking", text = "(I have about 30 minutes before the team finds out. 30 minutes to figure out how to frame this.)" },
        { speaker = "po", expression = "neutral", text = "(This is what I've been working toward for six months. An audience. Real stakeholders. Real visibility.)" },
        { speaker = "po", expression = "stressed", text = "(So why does my stomach hurt?)" },

        -- Branch on day 2
        { speaker = "po", expression = "neutral", text = "I asked the team what they need from me yesterday. The answers were... honest.", condition = "pushed_interviews" },
        { speaker = "po", expression = "thinking", text = "(They need clarity. They need decisions. They need me to stop adding slides and start making calls.)", condition = "pushed_interviews" },

        { speaker = "po", expression = "excited", text = "Yesterday I walked Alex through slides 1-12. We're aligned!", condition = "started_wireframes" },
        { speaker = "ux", expression = "frustrated", text = "(We are not aligned. We just stopped arguing.)", condition = "started_wireframes" },

        { speaker = "po", expression = "neutral", text = "I wrote acceptance criteria last night. Three flows. Real ones.", condition = "needs_requirements" },
        { speaker = "dev", expression = "smiling", text = "I read it. It's actually... usable.", condition = "needs_requirements" },
        { speaker = "po", expression = "thinking", text = "(Usable. From Sam, that's practically a standing ovation.)", condition = "needs_requirements" },

        -- The team finds out
        { bg = "meeting_room" },

        { speaker = "pm", expression = "stressed", text = "Team. I just got off the phone with the VP. Leadership wants a demo in two weeks." },
        { speaker = "po", expression = "neutral", text = "(Here it comes. Act surprised. Or don't. Just... be useful.)" },
        { speaker = "dev", expression = "frustrated", text = "A demo of WHAT? We have a git repo and some opinions." },
        { speaker = "pm", expression = "stressed", text = "They want to 'see progress.' It doesn't have to be functional." },
        { speaker = "po", expression = "excited", text = "This is actually good news! We get to show the vision to real stakeholders!" },
        { speaker = "qa", expression = "deadpan", text = "The vision is stock photos and buzzwords, Priya." },
        { speaker = "po", expression = "defensive", text = "(Riley. Always. ALWAYS with the slides.)" },
        { speaker = "dev", expression = "frustrated", text = "We can't demo a PowerPoint." },
        { speaker = "po", expression = "neutral", text = "We're not demoing a PowerPoint. We're telling a story about what this product will be." },
        { speaker = "arch", expression = "concerned", text = "Stories set expectations. Expectations become requirements. Requirements I haven't approved." },
        { speaker = "po", expression = "defensive", text = "(Casey. The eternal brake pedal.)" },

        { speaker = "pm", expression = "neutral", text = "Priya, you know leadership best. What do they actually need to see?" },
        { speaker = "po", expression = "thinking", text = "(This is the moment. I spoke to David 30 minutes ago. I know what they want. The question is what I tell my team they want.)" },

        { speaker = "po", expression = "neutral", text = "(This is when I prove I can read the room.)",
            choices = {
                { text = "Pitch them the dream. Mockups, vision slides, bold claims. Sell it.", set = {made_prototype = true}, rel = {pm = 1, dev = -2, qa = -1} },
                { text = "Ask Sam and Alex to build a real working slice. Less wow, more substance.", set = {collab_with_dev = true}, rel = {dev = 2, ux = 2, qa = 1} },
                { text = "Push back. Two weeks is too soon to show real progress. I'll buy us four.", set = {pushed_back_demo = true}, rel = {dev = 2, qa = 2, pm = -1} },
            }
        },

        -- Sell the dream path
        { speaker = "po", expression = "excited", text = "Mockups. Vision board. The full pitch. Leadership loves a story.", condition = "made_prototype" },
        { speaker = "dev", expression = "frustrated", text = "We're building a beautiful lie.", condition = "made_prototype" },
        { speaker = "po", expression = "defensive", text = "(He doesn't get it. Storytelling IS the product at this stage.)", condition = "made_prototype" },
        { speaker = "ux", expression = "neutral", text = "I can build three screens in Figma. But Priya, you need to pick which three.", condition = "made_prototype" },
        { speaker = "po", expression = "excited", text = "Content library. Social feed. The discovery page. Those are the money shots.", condition = "made_prototype" },
        { speaker = "dev", expression = "frustrated", text = "That's the entire product, Priya. In three screens.", condition = "made_prototype" },
        { speaker = "po", expression = "neutral", text = "That's the VISION of the product. In three screens. There's a difference.", condition = "made_prototype" },
        { speaker = "arch", expression = "concerned", text = "The difference disappears the moment leadership sees it and says 'great, ship that.'", condition = "made_prototype" },
        { speaker = "po", expression = "defensive", text = "(Casey's not wrong. But I can manage that. I've managed stakeholders before. This is what I do.)", condition = "made_prototype" },
        { speaker = "qa", expression = "deadpan", text = "For the record, I can't test a story.", condition = "made_prototype" },
        { speaker = "po", expression = "neutral", text = "You won't have to. The demo is a presentation, not a release.", condition = "made_prototype" },

        -- Real slice path
        { speaker = "po", expression = "neutral", text = "Less wow, more substance. Sam, Alex, can you pair on a real slice? I'll handle leadership expectations.", condition = "collab_with_dev" },
        { speaker = "dev", expression = "smiling", text = "Wait. You're telling LEADERSHIP that we'll have less? That's new.", condition = "collab_with_dev" },
        { speaker = "po", expression = "neutral", text = "(I have spent six months pitching this vision. The hardest thing I will do this week is downscale it. But I need to.)", condition = "collab_with_dev" },
        { speaker = "ux", expression = "neutral", text = "What flow do you want us to build? One. Just one.", condition = "collab_with_dev" },
        { speaker = "po", expression = "thinking", text = "Content creation. Browse, create, save. That's the core loop.", condition = "collab_with_dev" },
        { speaker = "dev", expression = "neutral", text = "That's doable. Tight, but doable.", condition = "collab_with_dev" },
        { speaker = "arch", expression = "neutral", text = "If it's one flow, I can validate the data model against it. That's useful beyond the demo.", condition = "collab_with_dev" },
        { speaker = "po", expression = "neutral", text = "(The team is... collaborating? Because I pulled back? This feels backwards. And also correct.)", condition = "collab_with_dev" },
        { speaker = "qa", expression = "neutral", text = "One flow means I can write a real test plan. Not a guess. An actual plan.", condition = "collab_with_dev" },
        { speaker = "po", expression = "neutral", text = "(I'll call David back. Tell him the demo will be focused. 'Depth over breadth.' He'll understand. I hope.)", condition = "collab_with_dev" },

        -- Push back path
        { speaker = "po", expression = "neutral", text = "I'll talk to the director. Two weeks is too soon. I'll push for four weeks with a status check at two.", condition = "pushed_back_demo" },
        { speaker = "pm", expression = "stressed", text = "Priya. Are you sure? You spent months getting their attention.", condition = "pushed_back_demo" },
        { speaker = "po", expression = "neutral", text = "Yes. A bad demo costs more than a delayed one.", condition = "pushed_back_demo" },
        { speaker = "qa", expression = "smirk", text = "Did Priya... just protect the team?", condition = "pushed_back_demo" },
        { speaker = "po", expression = "defensive", text = "I'm protecting the PRODUCT, Riley. The team is a side benefit.", condition = "pushed_back_demo" },
        { speaker = "dev", expression = "smiling", text = "She's growing.", condition = "pushed_back_demo" },
        { speaker = "po", expression = "frustrated", text = "(I am not 'growing.' I am making a strategic decision based on risk assessment.)", condition = "pushed_back_demo" },
        { speaker = "arch", expression = "neutral", text = "For what it's worth, Priya, this is the right call. Premature demos poison architectures.", condition = "pushed_back_demo" },
        { speaker = "po", expression = "neutral", text = "(David is going to be disappointed. The VP is going to be annoyed. But the team will have time to build something real.)", condition = "pushed_back_demo" },
        { speaker = "po", expression = "thinking", text = "(I'm choosing the team over the stakeholder. That's new. I'm not sure how I feel about it.)", condition = "pushed_back_demo" },

        -- Post-meeting processing
        { bg = "break_room" },

        { speaker = "po", expression = "neutral", text = "(Break room. Bad coffee. Worse lighting. But nobody's here, and I need a minute.)" },
        { speaker = "po", expression = "thinking", text = "(I knew about the demo before Jordan did. I could have warned the team. I could have set expectations. Instead I said 'absolutely' to David and figured I'd sort it out later.)" },
        { speaker = "po", expression = "neutral", text = "(Is that good stakeholder management or just... people-pleasing?)" },
        { speaker = "po", expression = "stressed", text = "(Six months I've pitched this project. Six months of decks, roadmaps, executive summaries. And now it comes down to two weeks and a team that barely trusts me.)" },

        { speaker = "ux", expression = "neutral", text = "Hey Priya. Coffee?" },
        { speaker = "po", expression = "neutral", text = "Already on my second cup." },
        { speaker = "ux", expression = "neutral", text = "For what it's worth, I think the demo will be fine. We'll make it work." },
        { speaker = "po", expression = "neutral", text = "(Alex is being kind. That's either genuine or tactical. With designers, you never know.)" },
        { speaker = "po", expression = "neutral", text = "Thanks, Alex. I appreciate that." },
        { speaker = "ux", expression = "neutral", text = "Just... pick the screens carefully. We only get one shot at a first impression." },
        { speaker = "po", expression = "thinking", text = "(One shot. Story of this whole project.)" },

        { speaker = "po", expression = "neutral", text = "(I need to decide how I'm carrying this weight.)" },

        -- Second choice: emotional processing
        { speaker = "po", expression = "thinking", text = "(What's going on inside me right now?)",
            choices = {
                { text = "(I'm terrified. If this demo fails, six months of work dies. My credibility dies with it.)", set = {demo_stressed = true}, rel = {pm = 1, dev = -1} },
                { text = "(This is what I was built for. High stakes, tight timelines, skeptical audiences. Let's go.)", set = {demo_determined = true}, rel = {ux = 1, pm = 1} },
                { text = "(Control what I can control. The narrative, the scope, the follow-up. Everything else is noise.)", set = {demo_pragmatic = true}, rel = {dev = 1, qa = 1} },
            }
        },

        -- Stressed path
        { speaker = "po", expression = "stressed", text = "(My hands are shaking again. Not from coffee this time.)", condition = "demo_stressed" },
        { speaker = "po", expression = "frustrated", text = "(If the demo flops, the VP deprioritizes the project. Budget gets reallocated. The team gets reassigned. Everything I built, gone.)", condition = "demo_stressed" },
        { speaker = "po", expression = "stressed", text = "(I should rewrite the deck tonight. New narrative. Tighter. More defensible. I'll sleep when it's done.)", condition = "demo_stressed" },
        { speaker = "po", expression = "neutral", text = "(Just... hold it together, Priya. Two more weeks.)", condition = "demo_stressed" },

        -- Determined path
        { speaker = "po", expression = "excited", text = "(I've pitched harder rooms than this. The Q2 board review. The funding committee. That time I presented to the CEO with a migraine.)", condition = "demo_determined" },
        { speaker = "po", expression = "thinking", text = "(The team doubts me. Fine. Doubt is fuel. I'll channel it into the sharpest demo narrative they've ever seen.)", condition = "demo_determined" },
        { speaker = "po", expression = "neutral", text = "(Two weeks. I'll have the story locked by Friday, the screens reviewed by Monday, and a rehearsal by Thursday.)", condition = "demo_determined" },
        { speaker = "po", expression = "excited", text = "(This is MY product. MY vision. Time to defend it.)", condition = "demo_determined" },

        -- Pragmatic path
        { speaker = "po", expression = "neutral", text = "(I can't control how the team feels about the demo. I can control the narrative we present.)", condition = "demo_pragmatic" },
        { speaker = "po", expression = "thinking", text = "(Three things I can do: scope the demo story, align with Jordan on messaging, and pre-brief David so there are no surprises.)", condition = "demo_pragmatic" },
        { speaker = "po", expression = "neutral", text = "(Everything else -- Sam's mood, Riley's sarcasm, Casey's architectural anxiety -- that's their business.)", condition = "demo_pragmatic" },
        { speaker = "po", expression = "neutral", text = "(Focus on the levers I can pull. Let go of the ones I can't.)", condition = "demo_pragmatic" },

        -- Closing
        { speaker = "po", expression = "neutral", text = "(Day 3. I made a decision. I'm not sure it was the right one. But it was MINE.)" },
        { speaker = "po", expression = "thinking", text = "(Tomorrow I'll know if David bought it. Tomorrow the real work starts.)" },
        { speaker = "po", expression = "neutral", text = "(For now, I'm going to finish this terrible coffee and pretend I'm calm.)" },

        { text = "", goto = "day4" }
    }
}
