return {
    title = "Day 3 -- Wednesday",
    subtitle = "The Demo Bomb",
    narration = "You're updating the sprint board when your phone buzzes. It's the VP. 'Got a minute?' You never have a minute. But VPs don't ask.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "pm", expression = "stressed", text = "(Phone buzzing. VP's name. 8:42 AM. This is never, ever good.)" },
        { speaker = "pm", expression = "neutral", text = "(I pick up. 'Hey Jordan, got a minute?' No. But yes.)" },

        -- VP ambush scene - unique to PM
        { speaker = "pm", expression = "stressed", text = "(The VP wants a demo. Two weeks. For the leadership offsite. He says it casually, like he's asking me to book a conference room.)" },
        { speaker = "pm", expression = "stressed", text = "'We just want to see where things stand. Nothing fancy.' (Nothing fancy. The two most dangerous words in project management.)" },
        { speaker = "pm", expression = "neutral", text = "'Absolutely. I'll align with the team and get back to you on scope.' (Translation: I will now panic privately.)" },
        { speaker = "pm", expression = "stressed", text = "(He hangs up. My hands are shaking slightly. Not from fear. From the sheer volume of calendar reshuffling I'm about to do.)" },

        -- Branch on yesterday's choice
        { speaker = "pm", expression = "cheerful", text = "(Standup yesterday went... well, the parking lot is full now. But we hit 38 minutes. Progress.)", condition = "pushed_interviews" },
        { speaker = "pm", expression = "stressed", text = "(Yesterday's standup was 52 minutes. Casey drew on the whiteboard. Twice. And now I have to tell them about the demo.)", condition = "started_wireframes" },
        { speaker = "pm", expression = "neutral", text = "(Yesterday's planning workshop actually generated three pages of requirements. Almost like real ones. Now they're all irrelevant.)", condition = "needs_requirements" },

        -- Jordan processing alone
        { speaker = "pm", expression = "stressed", text = "(Before I tell the team, I need to think. What do we actually have?)" },
        { speaker = "pm", expression = "thinking", text = "(Alex has wireframes. Sam has a repo. Casey has diagrams. Priya has slides. Riley has... opinions.)" },
        { speaker = "pm", expression = "stressed", text = "(That's not a demo. That's a collage.)" },
        { speaker = "pm", expression = "neutral", text = "(I need to frame this carefully. If I walk in panicking, the team panics. If I walk in calm, they'll smell the lie.)" },
        { speaker = "pm", expression = "thinking", text = "(Honest but controlled. That's the play.)" },

        -- Emergency meeting
        { bg = "meeting_room" },

        { speaker = "pm", expression = "stressed", text = "Team. I just got off the phone with the VP. Leadership wants a demo in two weeks for the offsite." },
        { speaker = "dev", expression = "frustrated", text = "A demo of WHAT? We have a git repo and some opinions." },
        { speaker = "pm", expression = "stressed", text = "They want to 'see progress.' It doesn't have to be functional." },
        { speaker = "arch", expression = "neutral", text = "So a mockup demo. That's Alex's territory." },
        { speaker = "ux", expression = "neutral", text = "(Suddenly all eyes are on me.)" },
        { speaker = "qa", expression = "deadpan", text = "A demo of vapor in two weeks. What could go wrong." },
        { speaker = "po", expression = "excited", text = "This is actually a great opportunity! We get to show the vision!" },
        { speaker = "dev", expression = "frustrated", text = "The vision is 47 slides, Priya." },
        { speaker = "po", expression = "defensive", text = "It's a NARRATIVE, Sam." },
        { speaker = "qa", expression = "deadpan", text = "It's a PDF." },
        { speaker = "pm", expression = "stressed", text = "(The room is fracturing. I need to steer this. Now.)" },

        { speaker = "pm", expression = "neutral", text = "(My move. I shape this conversation or it shapes me.)",
            choices = {
                { text = "Lock the demo to a clickable prototype. Ship the lie professionally.", set = {made_prototype = true}, rel = {po = 2, ux = 1, dev = -1} },
                { text = "Ask Sam and Alex to pair on a real working slice. No mockups.", set = {collab_with_dev = true}, rel = {dev = 2, ux = 2, arch = 1} },
                { text = "Push back to leadership. 'Two weeks is too soon, here's what we CAN show.'", set = {pushed_back_demo = true}, rel = {dev = 2, qa = 2, arch = 1, po = -1} },
            }
        },

        -- Prototype path
        { speaker = "pm", expression = "cheerful", text = "Alex, can you put together a clickable prototype? Figma, InVision, whatever works.", condition = "made_prototype" },
        { speaker = "ux", expression = "thinking", text = "(Great. Now I'm building a beautiful lie.)", condition = "made_prototype" },
        { speaker = "dev", expression = "frustrated", text = "Cool. So I'll keep setting up the repo I guess.", condition = "made_prototype" },
        { speaker = "pm", expression = "stressed", text = "(Sam's not happy. Risk register: dev morale. Flagging it.)", condition = "made_prototype" },
        { speaker = "po", expression = "excited", text = "Alex, make sure the content library is front and center. That's the money screen.", condition = "made_prototype" },
        { speaker = "ux", expression = "frustrated", text = "Priya, I can do three screens. Pick wisely.", condition = "made_prototype" },
        { speaker = "pm", expression = "neutral", text = "I'll manage the narrative with leadership. Alex builds. Priya prioritizes screens. Sam, keep the real work moving.", condition = "made_prototype" },
        { speaker = "arch", expression = "neutral", text = "And I'll make sure whatever Alex shows doesn't imply architecture we haven't agreed on.", condition = "made_prototype" },
        { speaker = "pm", expression = "neutral", text = "(That's... actually a good team response. Maybe this won't be a disaster.)", condition = "made_prototype" },
        { speaker = "pm", expression = "stressed", text = "(Who am I kidding. It'll be a disaster. But a managed one.)", condition = "made_prototype" },

        -- Collab path
        { speaker = "pm", expression = "neutral", text = "Sam, Alex, can you two pair on a real slice? Front and back together?", condition = "collab_with_dev" },
        { speaker = "dev", expression = "smiling", text = "Yeah, I can throw together a quick frontend over Alex's designs.", condition = "collab_with_dev" },
        { speaker = "ux", expression = "excited", text = "Really? That would be amazing.", condition = "collab_with_dev" },
        { speaker = "pm", expression = "cheerful", text = "(That's the play. Two birds, one demo.)", condition = "collab_with_dev" },
        { speaker = "arch", expression = "neutral", text = "What stack? I need to know if this becomes foundational or throwaway.", condition = "collab_with_dev" },
        { speaker = "dev", expression = "neutral", text = "Throwaway. Separate branch. Static data. Dies after the demo.", condition = "collab_with_dev" },
        { speaker = "pm", expression = "neutral", text = "Perfect. I'm blocking your calendars for pairing time. Riley, can you write a demo test script?", condition = "collab_with_dev" },
        { speaker = "qa", expression = "neutral", text = "Already on it. Send me the repo when there's something to break.", condition = "collab_with_dev" },
        { speaker = "pm", expression = "cheerful", text = "(This is the best meeting we've had all week. Low bar, but still.)", condition = "collab_with_dev" },
        { speaker = "po", expression = "neutral", text = "As long as leadership sees the content flow, I'm supportive.", condition = "collab_with_dev" },

        -- Pushback path
        { speaker = "pm", expression = "stressed", text = "(I'm going to call the VP back. This is a hard conversation. Possibly a career-limiting one.)", condition = "pushed_back_demo" },
        { speaker = "pm", expression = "neutral", text = "Two weeks is too soon for a meaningful demo. I'm proposing four weeks, with a status update at week two instead.", condition = "pushed_back_demo" },
        { speaker = "dev", expression = "smiling", text = "Respect.", condition = "pushed_back_demo" },
        { speaker = "qa", expression = "smirk", text = "I'll buy you coffee if leadership says yes.", condition = "pushed_back_demo" },
        { speaker = "po", expression = "defensive", text = "Jordan, we've been waiting months for leadership attention. You're going to push them away?", condition = "pushed_back_demo" },
        { speaker = "pm", expression = "neutral", text = "I'm going to give them something worth their attention. A bad demo is worse than no demo, Priya.", condition = "pushed_back_demo" },
        { speaker = "arch", expression = "neutral", text = "Jordan's right. A premature demo sets the architectural direction by accident. I've seen it happen.", condition = "pushed_back_demo" },
        { speaker = "pm", expression = "stressed", text = "(The team is behind me. That helps. The VP might not be. That's the risk.)", condition = "pushed_back_demo" },
        { speaker = "pm", expression = "neutral", text = "I'll draft the counter-proposal tonight. Status update at two weeks. Real demo at four. Scope defined by week three.", condition = "pushed_back_demo" },
        { speaker = "qa", expression = "neutral", text = "Include testing time in the scope. Please. For once.", condition = "pushed_back_demo" },
        { speaker = "pm", expression = "neutral", text = "Already in the draft, Riley.", condition = "pushed_back_demo" },

        -- Post-meeting processing
        { bg = "office_day" },

        { speaker = "pm", expression = "stressed", text = "(Back at my desk. Calendar open. The next two weeks look like a game of Tetris played by someone having a seizure.)" },
        { speaker = "pm", expression = "thinking", text = "(Status report due Friday. Risk register growing. The VP expects a follow-up by end of day.)" },
        { speaker = "pm", expression = "neutral", text = "(This is the part of project management they don't teach you. Not the Gantt charts. Not the sprint planning. The emotional labor of keeping six people pointed in the same direction when the direction keeps changing.)" },

        { speaker = "po", expression = "neutral", text = "Jordan? Quick word." },
        { speaker = "pm", expression = "neutral", text = "Sure, Priya." },
        { speaker = "po", expression = "neutral", text = "I know the demo is stressful. But it's also our shot. Don't lose sight of that." },
        { speaker = "pm", expression = "neutral", text = "(She's not wrong. The demo is pressure, but it's also visibility. The team needs both.)" },
        { speaker = "pm", expression = "neutral", text = "I know. I'll make sure we thread the needle." },
        { speaker = "po", expression = "neutral", text = "Good. Because I've spent six months building the case for this project. Two bad weeks could undo all of it." },
        { speaker = "pm", expression = "stressed", text = "(No pressure, then.)" },

        { speaker = "pm", expression = "thinking", text = "(I need to decide how I'm carrying this. Not the project. Me.)" },

        -- Second choice: emotional processing
        { speaker = "pm", expression = "neutral", text = "(What's my approach for the next two weeks?)",
            choices = {
                { text = "(I'll micromanage every detail. If something goes wrong, it's on me. I need control.)", set = {demo_stressed = true}, rel = {dev = -1, ux = -1, po = 1} },
                { text = "(This is my moment. The team is counting on me to steer this. I'll rise to it.)", set = {demo_determined = true}, rel = {dev = 1, ux = 1, qa = 1} },
                { text = "(Set the guardrails, then step back. The team knows what to do. I just need to clear the path.)", set = {demo_pragmatic = true}, rel = {dev = 1, arch = 1} },
            }
        },

        -- Stressed path
        { speaker = "pm", expression = "stressed", text = "(I'm already drafting the daily check-in schedule. Morning sync, afternoon pulse check, end-of-day status.)", condition = "demo_stressed" },
        { speaker = "pm", expression = "stressed", text = "(If Sam slips by a day, the whole timeline craters. If Alex's designs aren't ready, Sam has nothing to build. If Priya changes scope--)", condition = "demo_stressed" },
        { speaker = "pm", expression = "frustrated", text = "(Stop. Breathe. You can't control everything. But you can try.)", condition = "demo_stressed" },
        { speaker = "pm", expression = "stressed", text = "(I'll sleep when the demo ships.)", condition = "demo_stressed" },

        -- Determined path
        { speaker = "pm", expression = "neutral", text = "(I've managed worse. The Q3 launch last year. The reorg. That time the CEO wanted a pivot in a week.)", condition = "demo_determined" },
        { speaker = "pm", expression = "thinking", text = "(This team is good. Prickly, disagreeable, and slightly dysfunctional, but good. They just need someone holding the map.)", condition = "demo_determined" },
        { speaker = "pm", expression = "cheerful", text = "(That's me. I hold the map. Even when the territory keeps changing.)", condition = "demo_determined" },
        { speaker = "pm", expression = "neutral", text = "(Let's do this.)", condition = "demo_determined" },

        -- Pragmatic path
        { speaker = "pm", expression = "neutral", text = "(Guardrails, not handcuffs. Define the scope. Set the milestones. Then get out of the way.)", condition = "demo_pragmatic" },
        { speaker = "pm", expression = "thinking", text = "(Sam and Alex will do better work if I'm not hovering. Riley will find the bugs whether I check in or not. Casey will architect regardless.)", condition = "demo_pragmatic" },
        { speaker = "pm", expression = "neutral", text = "(My job for the next two weeks: protect the team from scope creep, manage leadership expectations, and make sure nobody burns out.)", condition = "demo_pragmatic" },
        { speaker = "pm", expression = "neutral", text = "(Including me.)", condition = "demo_pragmatic" },

        -- Closing
        { speaker = "pm", expression = "stressed", text = "(Day 3. Status report due. Risk register growing. Calendar already a wall of orange.)" },
        { speaker = "pm", expression = "neutral", text = "(But the team didn't implode in the meeting. That's something.)" },
        { speaker = "pm", expression = "thinking", text = "(Tomorrow I'll have the VP's response. Whatever it is, we keep moving.)" },

        { text = "", goto = "day4" }
    }
}
