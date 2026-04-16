return {
    title = "Day 3 -- Wednesday",
    subtitle = "The Demo Bomb",
    narration = "You're mid-diagram when Slack fires. Leadership wants a demo. In two weeks. The architecture you haven't finished designing is about to be frozen by a presentation.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "arch", expression = "whiteboarding", text = "(I'm three layers deep in a component diagram when the notification hits. Jordan's name. The word 'demo.' My pen stops mid-line.)" },
        { speaker = "arch", expression = "concerned", text = "(A demo. In two weeks. Of an architecture that exists only on this whiteboard. And half of it is question marks.)" },

        -- Unique Architect scene: architecture stress assessment
        { speaker = "arch", expression = "thinking", text = "(Before the meeting, I need to assess the damage. What does a demo mean for the foundation?)" },
        { speaker = "arch", expression = "whiteboarding", text = "(The data model is undecided. Document store vs. relational. I have arguments for both. Neither is implemented.)" },
        { speaker = "arch", expression = "concerned", text = "(The API layer is scaffolded but uncommitted. Sam's routes assume a flat model. The deck implies hierarchy. Those are incompatible.)" },
        { speaker = "arch", expression = "neutral", text = "(Authentication: nonexistent. Authorization: nonexistent. Infrastructure: a local dev server.)" },
        { speaker = "arch", expression = "concerned", text = "(If the demo shows a working slice, that slice becomes the de facto architecture. Whatever shortcuts Sam takes become permanent load-bearing walls.)" },
        { speaker = "arch", expression = "whiteboarding", text = "(This is how technical debt is born. Not from bad decisions, but from demo decisions that nobody revisits.)" },
        { speaker = "arch", expression = "concerned", text = "(I've watched this happen three times in my career. The demo becomes the prototype becomes the product becomes the legacy system everyone hates.)" },

        -- Branch
        { speaker = "arch", expression = "neutral", text = "The spike is going well. Document store is winning. Relational is too rigid for what Priya wants. I have evidence.", condition = "pushed_interviews" },
        { speaker = "arch", expression = "concerned", text = "(But evidence doesn't matter if the demo forces a decision before the spike is done.)", condition = "pushed_interviews" },

        { speaker = "arch", expression = "whiteboarding", text = "Yesterday's whiteboard session ran 90 minutes. We have a draft architecture. Sam hated 60 percent of it.", condition = "started_wireframes" },
        { speaker = "arch", expression = "neutral", text = "(He hates 60 percent of everything. But the 40 percent he liked is solid.)", condition = "started_wireframes" },
        { speaker = "arch", expression = "concerned", text = "(Now the demo might override all of it.)", condition = "started_wireframes" },

        { speaker = "arch", expression = "neutral", text = "Acceptance criteria are landing. Priya is rewriting them in real time. The architecture is starting to shape itself around actual requirements.", condition = "needs_requirements" },
        { speaker = "arch", expression = "concerned", text = "(And now a demo deadline threatens to freeze the architecture before those requirements are stable.)", condition = "needs_requirements" },

        -- Emergency meeting
        { bg = "meeting_room" },

        { speaker = "pm", expression = "stressed", text = "Okay team. Leadership demo. Two weeks. Not optional." },
        { speaker = "dev", expression = "frustrated", text = "A demo of WHAT? We have a git repo and some opinions." },
        { speaker = "pm", expression = "stressed", text = "It doesn't have to be functional. They want to see progress." },
        { speaker = "arch", expression = "concerned", text = "(Progress as theatre. The demo will set expectations. The expectations will set the architecture. The architecture will haunt us for years.)" },
        { speaker = "qa", expression = "deadpan", text = "A demo of vapor. What could go wrong." },
        { speaker = "po", expression = "excited", text = "This is our chance to show the vision!" },
        { speaker = "arch", expression = "neutral", text = "The vision is currently a whiteboard with question marks, Priya." },
        { speaker = "po", expression = "defensive", text = "It's a NARRATIVE, Casey." },
        { speaker = "arch", expression = "concerned", text = "(Narratives don't have to be consistent. Architectures do.)" },

        { speaker = "ux", expression = "neutral", text = "Suddenly all eyes are on me. A clickable mockup, then?" },
        { speaker = "arch", expression = "concerned", text = "Wait. Before we commit to anything..." },

        { speaker = "arch", expression = "neutral", text = "(I get one shot to shape the demo's blast radius on the architecture.)",
            choices = {
                { text = "Build a clickable prototype. The architecture stays untouched. The demo lies cleanly.", set = {made_prototype = true}, rel = {pm = 2, ux = 1, dev = -1} },
                { text = "Pair Sam and Alex on a real working slice. I want to see what bends under pressure.", set = {collab_with_dev = true}, rel = {dev = 2, ux = 2, qa = 1} },
                { text = "Push back. A demo before the architecture is decided will set expectations we can't meet.", set = {pushed_back_demo = true}, rel = {dev = 2, qa = 2, pm = -2} },
            }
        },

        -- Prototype path
        { speaker = "arch", expression = "neutral", text = "Clickable prototype. Alex builds it in Figma. The data layer doesn't get touched. The architecture stays clean.", condition = "made_prototype" },
        { speaker = "ux", expression = "thinking", text = "(Casey just called my entire job 'lying cleanly.' Accurate, actually.)", condition = "made_prototype" },
        { speaker = "dev", expression = "frustrated", text = "So I do nothing for two weeks?", condition = "made_prototype" },
        { speaker = "arch", expression = "neutral", text = "No. You and I spend two weeks making real architectural decisions. While the demo happens in a separate universe.", condition = "made_prototype" },
        { speaker = "dev", expression = "neutral", text = "(Casey wants to use the demo as cover to do the real work. That's... actually smart.)", condition = "made_prototype" },
        { speaker = "pm", expression = "cheerful", text = "I like this. Demo track and architecture track. Parallel work.", condition = "made_prototype" },
        { speaker = "qa", expression = "neutral", text = "I'll write the demo test script. Make sure Alex's prototype doesn't accidentally show anything Sam can't build.", condition = "made_prototype" },
        { speaker = "arch", expression = "neutral", text = "Exactly. The demo is a controlled fiction. The architecture is the truth. They must not contaminate each other.", condition = "made_prototype" },
        { speaker = "po", expression = "neutral", text = "As long as leadership sees something impressive, I don't care which track produces it.", condition = "made_prototype" },
        { speaker = "arch", expression = "concerned", text = "(The moment 'impressive' and 'architecture' collide is the moment I lose sleep.)", condition = "made_prototype" },

        -- Real slice path
        { speaker = "arch", expression = "neutral", text = "Real slice. Sam and Alex pair. The data layer gets exercised. I want to see which assumptions break first.", condition = "collab_with_dev" },
        { speaker = "dev", expression = "smiling", text = "Casey wants to learn from a fire. I respect this.", condition = "collab_with_dev" },
        { speaker = "arch", expression = "concerned", text = "(The first data model we ship is the one we'll live with. I want it to be exercised before the demo, not after.)", condition = "collab_with_dev" },
        { speaker = "ux", expression = "neutral", text = "What flow? I need to know what to design.", condition = "collab_with_dev" },
        { speaker = "arch", expression = "whiteboarding", text = "Content creation. Browse, create, save. It touches the data model, the API layer, and the frontend. Maximum learning, minimum scope.", condition = "collab_with_dev" },
        { speaker = "dev", expression = "neutral", text = "That's also the flow with the most architectural risk. You're using the demo as a stress test.", condition = "collab_with_dev" },
        { speaker = "arch", expression = "neutral", text = "Yes. Better to find the cracks now than in month three.", condition = "collab_with_dev" },
        { speaker = "qa", expression = "neutral", text = "If it's real code with real data flow, I can write real tests. This is the best option for QA.", condition = "collab_with_dev" },
        { speaker = "pm", expression = "neutral", text = "It's riskier for the demo. But if it works, we have a real foundation.", condition = "collab_with_dev" },
        { speaker = "arch", expression = "neutral", text = "(Risk now or regret later. I've always chosen risk.)", condition = "collab_with_dev" },

        -- Push back path
        { speaker = "arch", expression = "concerned", text = "Jordan, this is the wrong time for a demo. The architecture isn't decided. Whatever we show, we will be expected to ship.", condition = "pushed_back_demo" },
        { speaker = "pm", expression = "stressed", text = "Casey, leadership asked.", condition = "pushed_back_demo" },
        { speaker = "arch", expression = "neutral", text = "Then leadership needs to be told the truth. I'll write a one-pager on what 'progress' means at this stage. You send it.", condition = "pushed_back_demo" },
        { speaker = "dev", expression = "smiling", text = "Casey, I have never agreed with you faster.", condition = "pushed_back_demo" },
        { speaker = "qa", expression = "neutral", text = "Include testing timelines. Make it clear that a demo without QA is a gamble.", condition = "pushed_back_demo" },
        { speaker = "arch", expression = "neutral", text = "Already planned. The one-pager will show: here's what we've decided, here's what we haven't, here's what a premature demo costs us.", condition = "pushed_back_demo" },
        { speaker = "po", expression = "defensive", text = "Casey, you're going to kill the momentum. Leadership will lose interest.", condition = "pushed_back_demo" },
        { speaker = "arch", expression = "neutral", text = "Priya, if leadership loses interest because we told them the truth, the project was never real.", condition = "pushed_back_demo" },
        { speaker = "po", expression = "frustrated", text = "(I hate that Casey might be right.)", condition = "pushed_back_demo" },
        { speaker = "pm", expression = "neutral", text = "Write the one-pager. I'll send it tonight. But Casey -- if leadership says 'do it anyway,' we do it.", condition = "pushed_back_demo" },
        { speaker = "arch", expression = "neutral", text = "Understood. But they'll have the information to make that call honestly.", condition = "pushed_back_demo" },

        -- Post-meeting processing
        { bg = "office_day" },

        { speaker = "arch", expression = "whiteboarding", text = "(Back at my desk. The component diagram is still on the whiteboard. Half-finished. Question marks staring back at me.)" },
        { speaker = "arch", expression = "concerned", text = "(The demo changes the calculus. Every architectural decision I defer now becomes a decision the demo makes for me. By default. By accident.)" },
        { speaker = "arch", expression = "thinking", text = "(I've seen this pattern before. Three times. The demo becomes the prototype. The prototype becomes the MVP. The MVP becomes the system everyone maintains for five years and nobody designed.)" },
        { speaker = "arch", expression = "neutral", text = "(Not this time. Not if I can help it.)" },

        { speaker = "dev", expression = "neutral", text = "Casey. Got a second?" },
        { speaker = "arch", expression = "neutral", text = "Always." },
        { speaker = "dev", expression = "neutral", text = "Whatever happens with the demo, I want your opinion on the data model. Before I write any more code." },
        { speaker = "arch", expression = "neutral", text = "Thursday. Whiteboard session. Bring your objections." },
        { speaker = "dev", expression = "smiling", text = "I always do." },
        { speaker = "arch", expression = "neutral", text = "(Sam fights me on everything. But he fights honestly. That's rare and valuable.)" },

        { speaker = "arch", expression = "thinking", text = "(I need to figure out how I'm carrying this. Not the architecture. The weight.)" },

        -- Second choice: emotional processing
        { speaker = "arch", expression = "concerned", text = "(What's really going on inside me right now?)",
            choices = {
                { text = "(I'm terrified the demo will lock us into an architecture I haven't validated. Every shortcut becomes permanent.)", set = {demo_stressed = true}, rel = {dev = -1, po = -1} },
                { text = "(This is a forcing function. The demo compresses my timeline, but it also compresses the team's decisions. Use it.)", set = {demo_determined = true}, rel = {dev = 1, pm = 1} },
                { text = "(Separate the demo from the architecture. Protect the foundation. Let the theatre happen around it.)", set = {demo_pragmatic = true}, rel = {qa = 1, ux = 1} },
            }
        },

        -- Stressed path
        { speaker = "arch", expression = "concerned", text = "(I've seen systems die from demo-driven development. The shortcut becomes the foundation. The foundation becomes the constraint. The constraint becomes the reason the rewrite starts in year two.)", condition = "demo_stressed" },
        { speaker = "arch", expression = "whiteboarding", text = "(I need to document everything. Every decision, every compromise, every 'temporary' choice. So when they ask why the system is broken in six months, the paper trail is there.)", condition = "demo_stressed" },
        { speaker = "arch", expression = "concerned", text = "(I'm drawing diagrams faster now. Not because I have clarity, but because I'm afraid clarity will be taken from me by a demo that makes the wrong things look right.)", condition = "demo_stressed" },
        { speaker = "arch", expression = "neutral", text = "(Stay vigilant, Casey. The architecture is your responsibility. Don't let a two-week deadline erase two years of consequences.)", condition = "demo_stressed" },

        -- Determined path
        { speaker = "arch", expression = "thinking", text = "(A forcing function. That's what this is. The demo compresses decisions. Decisions I was going to defer for two more weeks anyway.)", condition = "demo_determined" },
        { speaker = "arch", expression = "whiteboarding", text = "(I'll use the demo timeline to force the data model decision. Document store. I'll commit to it by Friday. The spike supports it. The demo will validate it.)", condition = "demo_determined" },
        { speaker = "arch", expression = "neutral", text = "(Every constraint is an opportunity to simplify. Two weeks means fewer features. Fewer features means a simpler architecture. Simpler architecture means fewer things to get wrong.)", condition = "demo_determined" },
        { speaker = "arch", expression = "neutral", text = "(Let the deadline work for me, not against me.)", condition = "demo_determined" },

        -- Pragmatic path
        { speaker = "arch", expression = "neutral", text = "(Two tracks. The demo track is theatre. The architecture track is real. They run in parallel. They don't touch.)", condition = "demo_pragmatic" },
        { speaker = "arch", expression = "thinking", text = "(If the demo is a prototype, I review it for accidental architectural implications. If it's a real slice, I control the data model. Either way, I stay in the loop.)", condition = "demo_pragmatic" },
        { speaker = "arch", expression = "neutral", text = "(I won't fight the demo. I'll insulate the architecture from it. Containment, not resistance.)", condition = "demo_pragmatic" },
        { speaker = "arch", expression = "whiteboarding", text = "(The whiteboard stays. The question marks get answered on my timeline, not the demo's.)", condition = "demo_pragmatic" },

        -- Closing
        { speaker = "arch", expression = "concerned", text = "(Day 3. The demo is going to shape the next two months. The architecture is going to shape the next two years.)" },
        { speaker = "arch", expression = "neutral", text = "(I have to keep them from shaping each other badly. That's always been the job.)" },
        { speaker = "arch", expression = "whiteboarding", text = "(Tomorrow I finish the component diagram. Question marks or not, the whiteboard needs answers.)" },

        { text = "", goto = "day4" }
    }
}
