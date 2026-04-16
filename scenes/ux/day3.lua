return {
    title = "Day 3 -- Wednesday",
    subtitle = "The Demo Bomb",
    narration = "Your inbox pings at 8:47 AM. Subject line: 'Leadership Demo - 2 Weeks.' Your coffee is still too hot to drink.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "ux", expression = "neutral", text = "(I haven't even opened Figma yet and my stomach just dropped.)" },
        { speaker = "ux", expression = "frustrated", text = "The email is from the VP of Product. CC'd to half the org. 'Excited to see what the team has built so far.'" },
        { speaker = "ux", expression = "thinking", text = "(Built. So far. We have sticky notes and a mood board.)" },

        -- If player pushed for interviews
        { speaker = "ux", expression = "thinking", text = "I've done three user interviews so far. The findings are... illuminating.", condition = "pushed_interviews" },
        { speaker = "qa", expression = "neutral", text = "Illuminating good or illuminating bad?", condition = "pushed_interviews" },
        { speaker = "ux", expression = "neutral", text = "Turns out nobody wants a 'knowledge-sharing platform.' They want their existing tools to stop being terrible.", condition = "pushed_interviews" },
        { speaker = "po", expression = "defensive", text = "That's... not what the deck says.", condition = "pushed_interviews" },
        { speaker = "ux", expression = "frustrated", text = "(And now I have to demo something nobody asked for. Great.)", condition = "pushed_interviews" },

        -- If player started wireframing
        { speaker = "ux", expression = "neutral", text = "I finished the first round of wireframes for the social feed.", condition = "started_wireframes" },
        { speaker = "arch", expression = "concerned", text = "Alex, we need to talk about these wireframes. You've designed real-time notifications.", condition = "started_wireframes" },
        { speaker = "ux", expression = "neutral", text = "...yes?", condition = "started_wireframes" },
        { speaker = "arch", expression = "whiteboarding", text = "Do you have any idea what kind of infrastructure that requires? WebSockets, a message queue, push notification services--", condition = "started_wireframes" },
        { speaker = "dev", expression = "neutral", text = "Casey, it's a wireframe. It literally says 'notification bell' with an arrow.", condition = "started_wireframes" },
        { speaker = "ux", expression = "frustrated", text = "(Now I have to turn these half-baked wireframes into a demo. Wonderful.)", condition = "started_wireframes" },

        -- If player asked for requirements
        { speaker = "pm", expression = "neutral", text = "Alright, requirements workshop time! I've booked a 2-hour slot.", condition = "needs_requirements" },
        { speaker = "po", expression = "excited", text = "I have some new ideas actually. What if we add a marketplace?", condition = "needs_requirements" },
        { speaker = "dev", expression = "frustrated", text = "A marketplace. On top of the knowledge platform. In 6 weeks.", condition = "needs_requirements" },
        { speaker = "po", expression = "excited", text = "Think of it as a phase 1.5!", condition = "needs_requirements" },
        { speaker = "ux", expression = "frustrated", text = "(We haven't even agreed on phase 1. And now there's a demo deadline on top.)", condition = "needs_requirements" },

        -- The bomb drops hard
        { speaker = "pm", expression = "stressed", text = "Emergency standup. Now. Meeting room B." },
        { speaker = "ux", expression = "neutral", text = "(Jordan's face says everything. This is not a drill.)" },

        { bg = "meeting_room" },

        { speaker = "pm", expression = "stressed", text = "Okay. Leadership wants a demo in two weeks. It came from the VP directly. This is not optional." },
        { speaker = "dev", expression = "frustrated", text = "A demo of WHAT? We have a git repo and some wireframes." },
        { speaker = "pm", expression = "stressed", text = "They want to 'see progress.' It doesn't have to be functional." },
        { speaker = "qa", expression = "deadpan", text = "A demo of vapor in two weeks. What could go wrong." },
        { speaker = "arch", expression = "neutral", text = "So a mockup demo? That's Alex's territory." },
        { speaker = "po", expression = "excited", text = "This is actually good news! We get to show the vision!" },
        { speaker = "dev", expression = "frustrated", text = "The vision is a slide deck, Priya. We can't demo a PowerPoint." },
        { speaker = "po", expression = "defensive", text = "It's a narrative, Sam. Leadership understands narratives." },
        { speaker = "qa", expression = "deadpan", text = "Leadership understands screenshots they can paste into their own decks." },

        { speaker = "ux", expression = "neutral", text = "(Every head in the room is slowly turning toward me. The designer. The person who makes things look real.)" },
        { speaker = "pm", expression = "neutral", text = "Alex, you're the one who can make this tangible. What's the play?" },

        { speaker = "ux", expression = "thinking", text = "(Two weeks. No requirements. No design system. Just vibes and a deadline.)",
            choices = {
                { text = "I can put together a clickable prototype. Figma, InVision, whatever gets it done.", set = {made_prototype = true}, rel = {pm = 2, po = 1, dev = -1} },
                { text = "I need Sam's help to make it look real. Frontend plus design, together.", set = {collab_with_dev = true}, rel = {dev = 2, pm = 1} },
                { text = "A demo in 2 weeks with no requirements is a recipe for disaster. I'm saying it.", set = {pushed_back_demo = true}, rel = {pm = -2, qa = 2} },
            }
        },

        -- Prototype path
        { speaker = "pm", expression = "cheerful", text = "Perfect! You're a lifesaver, Alex.", condition = "made_prototype" },
        { speaker = "dev", expression = "frustrated", text = "Cool. So I'll just... keep setting up the repo I guess.", condition = "made_prototype" },
        { speaker = "ux", expression = "thinking", text = "(Great. Now I'm building a beautiful lie.)", condition = "made_prototype" },
        { speaker = "po", expression = "excited", text = "Alex, can we include the social feed? And the content library? And maybe the--", condition = "made_prototype" },
        { speaker = "ux", expression = "frustrated", text = "Priya. Two weeks. I can show three screens, maybe four. Pick your favorites.", condition = "made_prototype" },
        { speaker = "po", expression = "defensive", text = "But leadership expects the full--", condition = "made_prototype" },
        { speaker = "ux", expression = "frustrated", text = "Leadership expects to see something clickable. They don't care if it's three screens or thirty as long as it feels real.", condition = "made_prototype" },
        { speaker = "qa", expression = "neutral", text = "For the record, 'feels real' is not a testable criterion.", condition = "made_prototype" },
        { speaker = "arch", expression = "neutral", text = "Alex, one request. Whatever you show, don't imply real-time data. That creates expectations I can't meet.", condition = "made_prototype" },
        { speaker = "ux", expression = "neutral", text = "(So I'm building a lie that has to be carefully scoped to not accidentally promise the wrong things. Design is fun.)", condition = "made_prototype" },

        -- Collab path
        { speaker = "dev", expression = "neutral", text = "Actually, yeah. I can throw together a quick frontend. Give me your designs and I'll make them clickable.", condition = "collab_with_dev" },
        { speaker = "ux", expression = "excited", text = "Really? That would be amazing.", condition = "collab_with_dev" },
        { speaker = "dev", expression = "smiling", text = "Don't get used to it. I'm doing this so Casey doesn't turn the demo into an architecture lecture.", condition = "collab_with_dev" },
        { speaker = "arch", expression = "concerned", text = "I heard that. And I would not give a lecture. I would give a guided technical tour.", condition = "collab_with_dev" },
        { speaker = "pm", expression = "cheerful", text = "This is great. Alex and Sam pairing. I'll block out your calendars.", condition = "collab_with_dev" },
        { speaker = "ux", expression = "thinking", text = "(Pairing with Sam could be really good. Or really painful. Depends on how many of my designs he calls 'not implementable.')", condition = "collab_with_dev" },
        { speaker = "dev", expression = "neutral", text = "Alex, one rule. Nothing that needs a backend. Static data, hardcoded. We fake it convincingly.", condition = "collab_with_dev" },
        { speaker = "ux", expression = "neutral", text = "Deal. I'll keep the interactions simple. Click-through, not dynamic.", condition = "collab_with_dev" },
        { speaker = "qa", expression = "neutral", text = "If it's real code, I can actually write a smoke test for the demo. That's more than I expected this week.", condition = "collab_with_dev" },
        { speaker = "po", expression = "neutral", text = "As long as leadership sees the vision, I'm in.", condition = "collab_with_dev" },

        -- Push back path
        { speaker = "pm", expression = "neutral", text = "Alex, I hear you, but leadership asked. We can't say no.", condition = "pushed_back_demo" },
        { speaker = "qa", expression = "smirk", text = "We COULD say no. We just won't.", condition = "pushed_back_demo" },
        { speaker = "ux", expression = "neutral", text = "Fine. But I want it on record that this demo will set false expectations.", condition = "pushed_back_demo" },
        { speaker = "pm", expression = "neutral", text = "Noted. I'll add it to the meeting minutes that nobody reads.", condition = "pushed_back_demo" },
        { speaker = "arch", expression = "neutral", text = "Alex is right. Whatever we show becomes the promise. I've seen this before.", condition = "pushed_back_demo" },
        { speaker = "dev", expression = "neutral", text = "Casey's seen everything before. But this time I agree.", condition = "pushed_back_demo" },
        { speaker = "po", expression = "defensive", text = "You're all being so negative. This is an opportunity!", condition = "pushed_back_demo" },
        { speaker = "ux", expression = "frustrated", text = "Priya, an opportunity without a plan is just a panic attack with better branding.", condition = "pushed_back_demo" },
        { speaker = "qa", expression = "smirk", text = "I'm writing that down.", condition = "pushed_back_demo" },
        { speaker = "pm", expression = "stressed", text = "Okay. We're doing the demo. But Alex's concern is noted. I'll frame it carefully with leadership.", condition = "pushed_back_demo" },

        -- Post-meeting processing
        { bg = "office_day" },

        { speaker = "ux", expression = "frustrated", text = "(Back at my desk. The meeting room still smells like stress and dry-erase markers.)" },
        { speaker = "ux", expression = "thinking", text = "(Two weeks. I need to design screens for a product that doesn't have requirements. For an audience that doesn't know what they want. For a team that can't agree on anything.)" },
        { speaker = "ux", expression = "neutral", text = "(Deep breath. This is what designers do. We make order from chaos. We make the intangible tangible.)" },
        { speaker = "ux", expression = "frustrated", text = "(But usually we have more than two weeks and a mood board.)" },

        { speaker = "dev", expression = "neutral", text = "Hey Alex. You okay?" },
        { speaker = "ux", expression = "neutral", text = "Yeah. Just... processing." },
        { speaker = "dev", expression = "neutral", text = "For what it's worth, whatever you build will be the best thing this team produces in two weeks. By default." },
        { speaker = "ux", expression = "neutral", text = "(That's either a compliment or an insult to the rest of the team. Possibly both.)" },
        { speaker = "dev", expression = "smiling", text = "That was a compliment. Sort of." },

        { speaker = "ux", expression = "thinking", text = "(I should figure out how I'm going to approach this. Not the work. The feeling.)" },
        { speaker = "ux", expression = "neutral", text = "(The demo is happening regardless. But how I carry it matters.)" },

        -- Second choice: emotional processing
        { speaker = "ux", expression = "thinking", text = "(What's my headspace going into this?)",
            choices = {
                { text = "(I'm already behind. I need to overdeliver or this reflects badly on me.)", set = {demo_stressed = true}, rel = {dev = -1, pm = 1} },
                { text = "(This is the challenge I've been waiting for. Time to prove what design can do.)", set = {demo_determined = true}, rel = {po = 1, dev = 1} },
                { text = "(It is what it is. I'll scope it tight, deliver clean, and not lose sleep.)", set = {demo_pragmatic = true}, rel = {qa = 1, arch = 1} },
            }
        },

        -- Stressed path
        { speaker = "ux", expression = "frustrated", text = "(My heart is already racing. I'm mentally listing every screen I need to build.)", condition = "demo_stressed" },
        { speaker = "ux", expression = "stressed", text = "(If this demo flops, I'm the one holding the Figma file. It's my name on it.)", condition = "demo_stressed" },
        { speaker = "ux", expression = "neutral", text = "(I'll stay late tonight. Get a head start. Nobody needs to know how much this is getting to me.)", condition = "demo_stressed" },
        { speaker = "ux", expression = "thinking", text = "(Just... don't let them see you sweat, Alex.)", condition = "demo_stressed" },

        -- Determined path
        { speaker = "ux", expression = "excited", text = "(Actually? This is what I'm good at. Constraints breed creativity.)", condition = "demo_determined" },
        { speaker = "ux", expression = "thinking", text = "(Two weeks. Limited scope. High stakes. This is a design sprint, not a design crawl.)", condition = "demo_determined" },
        { speaker = "ux", expression = "neutral", text = "(I'm going to make three screens that tell a story. A real story. Not Priya's deck -- something a user would actually believe.)", condition = "demo_determined" },
        { speaker = "ux", expression = "excited", text = "(Let's go.)", condition = "demo_determined" },

        -- Pragmatic path
        { speaker = "ux", expression = "neutral", text = "(Scope it. Three screens max. One happy path. No edge cases. No delight -- just function.)", condition = "demo_pragmatic" },
        { speaker = "ux", expression = "thinking", text = "(I'll timebox it. Four hours a day on demo work, the rest on actual design tasks that matter long-term.)", condition = "demo_pragmatic" },
        { speaker = "ux", expression = "neutral", text = "(The demo is theatre. I'll perform. But I won't let it eat the real work.)", condition = "demo_pragmatic" },
        { speaker = "ux", expression = "neutral", text = "(Smart. Sustainable. Done by Thursday if I'm disciplined.)", condition = "demo_pragmatic" },

        -- Closing
        { speaker = "ux", expression = "neutral", text = "Day 3. We have no requirements, a demo deadline, and a mood board." },
        { speaker = "ux", expression = "thinking", text = "But hey -- at least the Jira board is empty. Because nobody's using it." },
        { speaker = "ux", expression = "neutral", text = "(Tomorrow I start building. Whatever 'building' means when you don't know what you're building.)" },

        { text = "", goto = "day4" }
    }
}
