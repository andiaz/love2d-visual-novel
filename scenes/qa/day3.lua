return {
    title = "Day 3 -- Wednesday",
    subtitle = "The Demo Bomb",
    narration = "You're updating your test matrix when the Slack notification fires. Two words in the preview: 'leadership' and 'demo.' Your spreadsheet suddenly feels very theoretical.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "qa", expression = "neutral", text = "(Slack preview. Jordan's name. 'Leadership wants--' I don't need to read the rest. I know what's coming.)" },
        { speaker = "qa", expression = "deadpan", text = "(A demo. They want a demo. Of the thing that doesn't exist. In a timeline that doesn't make sense.)" },

        -- Unique QA scene: immediately calculating scope
        { speaker = "qa", expression = "neutral", text = "(Let me do the math before the panic meeting starts.)" },
        { speaker = "qa", expression = "thinking", text = "(Two weeks. Ten business days. Subtract two days for demo prep and rehearsal. Eight days of actual work.)" },
        { speaker = "qa", expression = "neutral", text = "(Of those eight days, how many will have testable output? If Sam starts coding Monday, maybe Thursday I get a build. That's four days to test.)" },
        { speaker = "qa", expression = "deadpan", text = "(Four days to test something that has no requirements, no acceptance criteria, and no definition of done.)" },
        { speaker = "qa", expression = "neutral", text = "(What am I even testing? 'Verify the user experiences the vision?' 'Confirm the vision is visionary?')" },
        { speaker = "qa", expression = "deadpan", text = "(Two weeks to test what? That's the question nobody will ask. So I'll ask it for them.)" },

        -- Branch
        { speaker = "qa", expression = "neutral", text = "I've done two user interviews so far. People mostly want their existing tools to suck less.", condition = "pushed_interviews" },
        { speaker = "ux", expression = "excited", text = "Same finding from my interviews. Should we present this to Priya together?", condition = "pushed_interviews" },
        { speaker = "qa", expression = "neutral", text = "(Present research findings right before a demo panic? Sure. That'll land great.)", condition = "pushed_interviews" },

        { speaker = "qa", expression = "deadpan", text = "I'm writing test cases against the deck. So far they all read 'verify the user feels inspired.'", condition = "started_wireframes" },
        { speaker = "dev", expression = "smiling", text = "Add an XPath for vibes.", condition = "started_wireframes" },
        { speaker = "qa", expression = "neutral", text = "(Sam thinks he's joking. I'm genuinely trying to figure out what 'inspired' means in test terms.)", condition = "started_wireframes" },

        { speaker = "qa", expression = "neutral", text = "Workshop went better than I expected. We have three real flows with criteria.", condition = "needs_requirements" },
        { speaker = "dev", expression = "neutral", text = "Riley wrote half of those criteria. Without complaining.", condition = "needs_requirements" },
        { speaker = "qa", expression = "neutral", text = "(I complained internally. It's more efficient.)", condition = "needs_requirements" },

        -- Emergency meeting
        { bg = "meeting_room" },

        { speaker = "pm", expression = "stressed", text = "Okay team. Leadership demo. Two weeks. Not optional." },
        { speaker = "dev", expression = "frustrated", text = "A demo of WHAT? We have a git repo and some opinions." },
        { speaker = "qa", expression = "deadpan", text = "A demo of vapor. Sounds great." },
        { speaker = "pm", expression = "stressed", text = "It doesn't have to be functional. They want to see progress." },
        { speaker = "qa", expression = "deadpan", text = "(Translation: they want a screenshot they can paste into their own deck.)" },
        { speaker = "po", expression = "excited", text = "This is our chance to show the vision!" },
        { speaker = "qa", expression = "neutral", text = "Priya, what's the test plan for a vision? I'm genuinely asking." },
        { speaker = "po", expression = "defensive", text = "You don't TEST a vision, Riley. You SELL it." },
        { speaker = "qa", expression = "deadpan", text = "So my role in the demo is... what? Moral support?" },
        { speaker = "arch", expression = "neutral", text = "Quality assurance of the narrative. Make sure the demo doesn't promise things we can't build." },
        { speaker = "qa", expression = "neutral", text = "(Casey just invented a new QA discipline. Narrative testing. I hate that it makes sense.)" },

        { speaker = "ux", expression = "neutral", text = "Suddenly all eyes are on me. Or whoever can make a clickable mockup." },
        { speaker = "qa", expression = "neutral", text = "Hold on. Before we commit to anything..." },

        { speaker = "qa", expression = "neutral", text = "(I can shape the demo before it becomes a fire. Three approaches.)",
            choices = {
                { text = "Build a prototype, but I write the test script for it now. We demo what we can verify.", set = {made_prototype = true}, rel = {ux = 1, dev = 1, pm = 1} },
                { text = "Pair Sam and Alex on a real slice. Real code I can actually test before the demo.", set = {collab_with_dev = true}, rel = {dev = 2, ux = 2, arch = 1} },
                { text = "Push back hard. A demo this early trains leadership to expect features we don't have.", set = {pushed_back_demo = true}, rel = {dev = 2, arch = 1, pm = -2} },
            }
        },

        -- Prototype path
        { speaker = "qa", expression = "neutral", text = "Alex builds the prototype. I write the demo test script today. We rehearse Thursday. Nothing goes in front of leadership without passing my checklist.", condition = "made_prototype" },
        { speaker = "pm", expression = "cheerful", text = "Riley, that's actually... great.", condition = "made_prototype" },
        { speaker = "qa", expression = "smirk", text = "(QA showing up two weeks early. Mark your calendars.)", condition = "made_prototype" },
        { speaker = "ux", expression = "neutral", text = "What's on the checklist?", condition = "made_prototype" },
        { speaker = "qa", expression = "neutral", text = "Every click works. No broken links. No placeholder text visible. No 'lorem ipsum' on screen during the demo. No scrolling past unfinished sections.", condition = "made_prototype" },
        { speaker = "dev", expression = "neutral", text = "That's just... basic professionalism.", condition = "made_prototype" },
        { speaker = "qa", expression = "deadpan", text = "You'd be amazed how many demos fail on basic professionalism, Sam.", condition = "made_prototype" },
        { speaker = "arch", expression = "neutral", text = "Add one more: no screens that imply real-time data or backend infrastructure we haven't decided on.", condition = "made_prototype" },
        { speaker = "qa", expression = "neutral", text = "Added. Casey, you just became my architecture test oracle.", condition = "made_prototype" },
        { speaker = "po", expression = "neutral", text = "Can we at least show the content library screen?", condition = "made_prototype" },
        { speaker = "qa", expression = "neutral", text = "If Alex builds it and it passes my checklist, yes. If not, no. Non-negotiable.", condition = "made_prototype" },

        -- Real slice path
        { speaker = "qa", expression = "neutral", text = "Pair them. Real code. I'd rather break something true than catch nothing in a fake.", condition = "collab_with_dev" },
        { speaker = "dev", expression = "smiling", text = "Riley wants real code. I love this team.", condition = "collab_with_dev" },
        { speaker = "ux", expression = "neutral", text = "What flow are we building?", condition = "collab_with_dev" },
        { speaker = "qa", expression = "neutral", text = "The simplest one with the most coverage. Content creation: browse, create, save. Three screens, one happy path.", condition = "collab_with_dev" },
        { speaker = "pm", expression = "cheerful", text = "Riley's scoping the demo. I'm okay with this.", condition = "collab_with_dev" },
        { speaker = "qa", expression = "neutral", text = "I'll have a test plan by end of day. Sam, I need a build by Thursday at the latest. Friday is test day.", condition = "collab_with_dev" },
        { speaker = "dev", expression = "neutral", text = "Thursday. Got it.", condition = "collab_with_dev" },
        { speaker = "arch", expression = "neutral", text = "If there's real code, I want to review the data model before the demo. Non-negotiable.", condition = "collab_with_dev" },
        { speaker = "qa", expression = "neutral", text = "Add it to the checklist. Architecture review before demo day. Done.", condition = "collab_with_dev" },
        { speaker = "po", expression = "neutral", text = "(Riley just became the project manager of the demo. And nobody objected.)", condition = "collab_with_dev" },

        -- Push back path
        { speaker = "qa", expression = "deadpan", text = "Jordan, hear me out. A demo this early teaches leadership to expect features we haven't built. Once they see it, they'll ask for a release date. We'll never recover from that conversation.", condition = "pushed_back_demo" },
        { speaker = "pm", expression = "stressed", text = "Riley, leadership asked. We can't say no.", condition = "pushed_back_demo" },
        { speaker = "qa", expression = "deadpan", text = "We CAN say no. Nobody ever does.", condition = "pushed_back_demo" },
        { speaker = "dev", expression = "smiling", text = "Respect.", condition = "pushed_back_demo" },
        { speaker = "arch", expression = "neutral", text = "Riley's right. Demo expectations become implicit requirements. I've documented this pattern three times in my career.", condition = "pushed_back_demo" },
        { speaker = "po", expression = "defensive", text = "You're all being so negative. Leadership attention is a GIFT.", condition = "pushed_back_demo" },
        { speaker = "qa", expression = "deadpan", text = "Priya, I'm not being negative. I'm being accurate. There's a difference, and QA lives in that difference.", condition = "pushed_back_demo" },
        { speaker = "pm", expression = "stressed", text = "Okay. The demo is happening. But Riley's concern is logged. I'll frame expectations carefully with leadership.", condition = "pushed_back_demo" },
        { speaker = "qa", expression = "neutral", text = "Frame them in writing. Emails are artifacts. Slack messages disappear.", condition = "pushed_back_demo" },
        { speaker = "pm", expression = "neutral", text = "...noted.", condition = "pushed_back_demo" },

        -- Post-meeting processing
        { bg = "office_day" },

        { speaker = "qa", expression = "neutral", text = "(Back at my desk. Test matrix still open. It looks even more theoretical now than it did an hour ago.)" },
        { speaker = "qa", expression = "thinking", text = "(The demo changes everything. Whatever I was planning to test this sprint is now irrelevant. The demo is the only deliverable that matters.)" },
        { speaker = "qa", expression = "neutral", text = "(I should write the demo test plan now. Before scope creep turns three screens into twelve.)" },
        { speaker = "qa", expression = "deadpan", text = "(Step one: define what 'works' means when nothing is real. Step two: make everyone agree on step one. Step three: cry internally.)" },

        { speaker = "dev", expression = "neutral", text = "Hey Riley. Quick question." },
        { speaker = "qa", expression = "neutral", text = "Shoot." },
        { speaker = "dev", expression = "neutral", text = "When you said 'demo what we can verify'... did you mean that? Because I've never heard QA volunteer to scope a demo before." },
        { speaker = "qa", expression = "neutral", text = "If I don't scope it, Priya will. And then we'll be demoing a marketplace, an AI engine, and a social network. In two weeks." },
        { speaker = "dev", expression = "smiling", text = "Fair point." },
        { speaker = "qa", expression = "deadpan", text = "I'm not being heroic, Sam. I'm being defensive. There's a difference." },
        { speaker = "dev", expression = "neutral", text = "Sure." },
        { speaker = "qa", expression = "neutral", text = "(He doesn't believe me. That's fine. Results matter more than motives.)" },

        { speaker = "qa", expression = "thinking", text = "(I need to decide how I'm approaching the next two weeks. Not the test plan. Me.)" },

        -- Second choice: emotional processing
        { speaker = "qa", expression = "neutral", text = "(What's my actual headspace right now?)",
            choices = {
                { text = "(I'm already cataloguing everything that can go wrong. The list is long and growing.)", set = {demo_stressed = true}, rel = {dev = -1, pm = 1} },
                { text = "(Fine. If nobody else is going to hold the quality bar, I will. This demo passes MY standards.)", set = {demo_determined = true}, rel = {ux = 1, arch = 1} },
                { text = "(Write the checklist. Run the checklist. Don't take it personally when they ignore half of it.)", set = {demo_pragmatic = true}, rel = {pm = 1, dev = 1} },
            }
        },

        -- Stressed path
        { speaker = "qa", expression = "neutral", text = "(The demo will crash. Something will break. A link won't work. Someone will scroll past placeholder text.)", condition = "demo_stressed" },
        { speaker = "qa", expression = "deadpan", text = "(And when it does, nobody will say 'we should have listened to QA.' They'll say 'how did QA miss this?')", condition = "demo_stressed" },
        { speaker = "qa", expression = "neutral", text = "(I need to test everything. Twice. Three times. Every click path, every edge case, every possible way a live audience can break a prototype.)", condition = "demo_stressed" },
        { speaker = "qa", expression = "deadpan", text = "(I'll sleep when the demo is over. Maybe.)", condition = "demo_stressed" },

        -- Determined path
        { speaker = "qa", expression = "neutral", text = "(Nobody else is going to be the quality gate. Alex will build fast. Sam will build scrappy. Priya will want more. Jordan will say yes.)", condition = "demo_determined" },
        { speaker = "qa", expression = "thinking", text = "(I'm the only one who will say 'this isn't ready.' And I will say it, as many times as needed, until it IS ready.)", condition = "demo_determined" },
        { speaker = "qa", expression = "neutral", text = "(The demo passes my checklist or it doesn't happen. That's the deal.)", condition = "demo_determined" },
        { speaker = "qa", expression = "deadpan", text = "(They'll thank me later. Or they won't. Either way, the demo won't crash.)", condition = "demo_determined" },

        -- Pragmatic path
        { speaker = "qa", expression = "neutral", text = "(Checklist. Test plan. Run it. Report findings. That's the job.)", condition = "demo_pragmatic" },
        { speaker = "qa", expression = "thinking", text = "(I can't control whether they listen. I can control whether the findings are clear, actionable, and documented.)", condition = "demo_pragmatic" },
        { speaker = "qa", expression = "neutral", text = "(If the demo crashes after I flagged the issues, that's not a QA failure. That's a prioritization failure. And I'll have the receipts.)", condition = "demo_pragmatic" },
        { speaker = "qa", expression = "deadpan", text = "(Receipts. The only currency QA has.)", condition = "demo_pragmatic" },

        -- Closing
        { speaker = "qa", expression = "deadpan", text = "(Day 3. Standup duration tracker now has its own dashboard. The demo test plan has its own spreadsheet. I have my own existential dread.)" },
        { speaker = "qa", expression = "neutral", text = "(Tomorrow I start testing. Whatever 'testing' means when the thing being tested is a collective hallucination.)" },
        { speaker = "qa", expression = "deadpan", text = "(At least I'll have a checklist.)" },

        { text = "", goto = "day4" }
    }
}
