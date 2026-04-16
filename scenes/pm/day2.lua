return {
    title = "Day 2 -- Tuesday",
    subtitle = "The First Standup",
    narration = "You promised 15 minutes. You have a Jira board. You have hope. The hope will not survive the next 38 minutes.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- PRE-STANDUP MORNING
        { speaker = "pm", expression = "neutral", text = "(Tuesday. 8:12 AM. Early. Good. PMs who arrive after the team lose the room before it starts.)" },
        { speaker = "pm", expression = "neutral", text = "(Calendar check. Nine meetings today. Four of them are mine. Three are 'tentative.' Two conflict.)" },
        { speaker = "pm", expression = "stressed", text = "(The standup invite. Meeting Room B. 9:00 AM. Sent it yesterday to... wait.)" },
        { speaker = "pm", expression = "stressed", text = "(The invite went to Meeting Room D. Which is the one with the broken projector and the chairs that smell like 2019.)" },
        { speaker = "pm", expression = "stressed", text = "(Quick update. Resend. Add a Slack message. 'Room B, not D. Sorry.' The first of many corrections today.)" },
        { speaker = "pm", expression = "neutral", text = "(Checks Slack. '#chimera-general' has overnight activity. Casey posted an architecture diagram at 11:43 PM.)" },
        { speaker = "pm", expression = "neutral", text = "(Seven microservices. I don't know what half of them do, but I know what seven of anything costs: more than we have.)" },
        { speaker = "pm", expression = "neutral", text = "(Priya replied with fire emojis. Sam hasn't replied. Riley hasn't replied. Alex posted a user flow. Solid.)" },
        { speaker = "pm", expression = "neutral", text = "(The Jira board has 12 tickets. Three of them are mine. The rest are placeholders I created at midnight because an empty board feels like failure.)" },
        { speaker = "pm", expression = "neutral", text = "(Let me check email. Stakeholder update request from the director. 'How's Chimera going?' It's day 2. It's going.)" },
        { speaker = "pm", expression = "stressed", text = "(I type 'On track' and stare at it for thirty seconds. Then add 'Team is aligned and energized.' That's technically not a lie. They are energized. In conflicting directions.)" },
        { speaker = "pm", expression = "neutral", text = "(8:47 AM. Prints the agenda. Three bullet points: yesterday, today, blockers. That's standup. Clean. Simple.)" },
        { speaker = "pm", expression = "neutral", text = "(I also printed a backup agenda in case it goes sideways. The backup agenda just says 'SURVIVE.')" },
        { speaker = "pm", expression = "neutral", text = "(8:56 AM. Heads to Meeting Room B. The right room. Double-checked.)" },
        { speaker = "pm", expression = "neutral", text = "(Whiteboard is clean. Markers work. Chairs don't smell. We're already winning.)" },

        -- THE STANDUP (facilitator POV)
        { bg = "meeting_room" },
        { speaker = "pm", expression = "cheerful", text = "Good morning! Welcome to our first standup. Let's keep it tight. Yesterday, today, blockers. Fifteen minutes." },
        { speaker = "pm", expression = "neutral", text = "(I said that with conviction. The conviction of someone who hasn't facilitated this team before.)" },
        { speaker = "pm", expression = "neutral", text = "I'll model it. Yesterday I set up the Jira board, Slack channels, project charter. Today: sprint ceremonies, backlog grooming prep. No blockers." },
        { speaker = "pm", expression = "neutral", text = "(Quick. Clean. See how easy that was? Everyone do that.)" },
        { speaker = "dev", expression = "neutral", text = "Got the repo going, linter and stack sorted. Today's plan hinges on what we decide here." },
        { speaker = "pm", expression = "stressed", text = "(Sam's update was eight seconds long and somehow made me more nervous than a ten-minute ramble.)" },
        { speaker = "pm", expression = "neutral", text = "(What does 'depends on what I hear in this room' mean? It means Sam doesn't trust us yet. Fair.)" },
        { speaker = "ux", expression = "neutral", text = "Yesterday I sketched user flows. Today I'm mapping the information architecture. No blockers." },
        { speaker = "pm", expression = "neutral", text = "(Alex. Concise. Professional. I want to clone Alex.)" },
        { speaker = "pm", expression = "neutral", text = "Casey, you're up." },
        { speaker = "arch", expression = "whiteboarding", text = "I started the architecture doc. Posted three options in Slack last night. We need to discuss the data model before Sam goes too far." },
        { speaker = "dev", expression = "frustrated", text = "I literally just made a git repo." },
        { speaker = "arch", expression = "whiteboarding", text = "Right, but the FOUNDATION matters. I've been thinking about a microservices approach..." },
        { speaker = "pm", expression = "stressed", text = "(Tangent number one. Casey's reaching for the whiteboard marker. This is a code red.)" },
        { speaker = "pm", expression = "neutral", text = "Let's take that offline. Casey, schedule something with Sam this week. Priya?" },
        { speaker = "po", expression = "excited", text = "I refined the deck last night. Added slides on competitive landscape. And I'm thinking a social feed is the hero feature." },
        { speaker = "pm", expression = "stressed", text = "(A social feed. That's not a status update. That's a feature pitch in the middle of standup. Tangent two.)" },
        { speaker = "pm", expression = "neutral", text = "Great energy. Let's park the feature discussion. Riley?" },
        { speaker = "qa", expression = "neutral", text = "I started the test plan, but it's mostly guesswork until we have actual requirements." },
        { speaker = "po", expression = "defensive", text = "I sent a 47-slide deck!" },
        { speaker = "qa", expression = "deadpan", text = "Priya. That deck is a Pinterest board with a corporate font. I can see the watermarks." },
        { speaker = "pm", expression = "stressed", text = "(Tangent three. Riley vs Priya. The eternal beef. I can see it forming in real time.)" },
        { speaker = "po", expression = "defensive", text = "Those photos represent the emotional journey of the user!" },
        { speaker = "qa", expression = "deadpan", text = "I can't write a test case for an emotional journey." },
        { speaker = "pm", expression = "stressed", text = "(We are now 24 minutes in. We've covered five status updates and zero decisions. This is fine.)" },
        { speaker = "pm", expression = "stressed", text = "(The energy in this room is... let's call it 'passionate.' Casey wants to architect. Priya wants to dream. Riley wants to pin things down. Sam wants to code. Everyone is right. Nobody is aligned.)" },
        { speaker = "arch", expression = "whiteboarding", text = "About the data model. If we separate the auth layer from the content layer early, we can..." },
        { speaker = "pm", expression = "stressed", text = "(Casey's going again. I have to make a call.)" },

        -- THE CHOICE
        { speaker = "pm", expression = "stressed", text = "(I'm losing the room. Make a call.)",
            choices = {
                { text = "Cut everyone off. Park the discussion. Move on.", set = {pushed_interviews = true}, rel = {dev = 1, arch = -1, po = -1} },
                { text = "Let it run. People are talking. That's healthy.", set = {started_wireframes = true}, rel = {po = 1, ux = 1, pm = 0} },
                { text = "Stop the meeting. Schedule a real planning workshop. We're not ready for standup yet.", set = {needs_requirements = true}, rel = {dev = 2, qa = 1, arch = 1, po = -2} },
            }
        },

        -- Park (= decisive)
        { speaker = "pm", expression = "neutral", text = "Okay, parking lot. Architecture, mood boards, feature pitches, ALL of it. We have one job in standup: status updates.", condition = "pushed_interviews" },
        { speaker = "dev", expression = "smiling", text = "Thank you.", condition = "pushed_interviews" },
        { speaker = "po", expression = "defensive", text = "But I had ideas about the social feed...", condition = "pushed_interviews" },
        { speaker = "pm", expression = "neutral", text = "Parking lot, Priya. Slack me. I'll add it to the board.", condition = "pushed_interviews" },
        { speaker = "arch", expression = "concerned", text = "The data model really can't wait, Jordan.", condition = "pushed_interviews" },
        { speaker = "pm", expression = "neutral", text = "It can wait until after standup. I'll schedule a session. Tomorrow. One hour. Bring diagrams.", condition = "pushed_interviews" },
        { speaker = "pm", expression = "neutral", text = "(Decisive. Clean. Two people annoyed. But the meeting is back on track. That's the trade.)", condition = "pushed_interviews" },

        -- Let it run (= peacemaking)
        { speaker = "pm", expression = "cheerful", text = "Actually, you know what, this is good energy. Casey, tell us about the microservices thinking.", condition = "started_wireframes" },
        { speaker = "dev", expression = "frustrated", text = "(We're never getting out of this room.)", condition = "started_wireframes" },
        { speaker = "arch", expression = "whiteboarding", text = "So the auth service talks to the content service which talks to the notification service...", condition = "started_wireframes" },
        { speaker = "po", expression = "excited", text = "And I'll tell you about my content layer idea! It ties into the social feed.", condition = "started_wireframes" },
        { speaker = "qa", expression = "deadpan", text = "(Jordan just opened Pandora's box. And Pandora's box has a whiteboard.)", condition = "started_wireframes" },
        { speaker = "pm", expression = "stressed", text = "(I made a mistake. The mistake is happening to me right now. In real time. With a marker.)", condition = "started_wireframes" },
        { speaker = "pm", expression = "stressed", text = "(But they're talking. Collaborating. That's... that's something. Right? Right.)", condition = "started_wireframes" },

        -- Stop everything (= replan)
        { speaker = "pm", expression = "stressed", text = "Hold up. Everyone stop.", condition = "needs_requirements" },
        { speaker = "pm", expression = "neutral", text = "We don't have requirements. We don't have a data model. We don't have a shared understanding of what we're building.", condition = "needs_requirements" },
        { speaker = "pm", expression = "neutral", text = "We're not doing standup. We're doing kickoff part two. And doing it badly.", condition = "needs_requirements" },
        { speaker = "dev", expression = "neutral", text = "Thank you, Jordan.", condition = "needs_requirements" },
        { speaker = "po", expression = "defensive", text = "But the deck covers all of this...", condition = "needs_requirements" },
        { speaker = "pm", expression = "neutral", text = "The deck is the input, Priya. Tomorrow, requirements workshop, two hours. I need outputs. User stories, acceptance criteria, priorities.", condition = "needs_requirements" },
        { speaker = "pm", expression = "neutral", text = "(That took guts. Priya's upset. But the right call is the right call, even when it's uncomfortable.)", condition = "needs_requirements" },

        -- CONVERGE
        { speaker = "pm", expression = "stressed", text = "Great standup everyone. That was... 38 minutes." },
        { speaker = "dev", expression = "smiling", text = "New record. Usually it's worse." },
        { speaker = "pm", expression = "stressed", text = "(38 minutes. I promised 15. That's a 153 percent variance. On day 2.)" },
        { speaker = "pm", expression = "stressed", text = "(Risk register entry number one: 'Standup discipline.' Severity: high.)" },

        -- POST-STANDUP: Calendar Tetris
        { bg = "office_day" },
        { speaker = "pm", expression = "neutral", text = "(Back at the desk. 9:43 AM. Now for the real work. The calendar.)" },
        { speaker = "pm", expression = "stressed", text = "(Casey wants an architecture session. One hour. This week. Only open slot: Thursday 2 PM. Conflicts with the stakeholder check-in.)" },
        { speaker = "pm", expression = "stressed", text = "(Priya wants to 'walk through the deck' with me. She put a 90-minute hold on Wednesday. Ninety minutes. For a walk-through.)" },
        { speaker = "pm", expression = "neutral", text = "(Sam didn't request any meetings. That's either independence or avoidance. I can't tell yet.)" },
        { speaker = "pm", expression = "neutral", text = "(Riley asked for 30 minutes to 'discuss test strategy.' That's code for 'I have concerns I won't say in a group.')" },
        { speaker = "pm", expression = "neutral", text = "(Alex needs a design review slot. Reasonable. 45 minutes. I can do Thursday morning.)" },
        { speaker = "pm", expression = "stressed", text = "(That's five scheduling requests from one standup. The meeting about meetings is generating meetings.)" },
        { speaker = "pm", expression = "neutral", text = "(The art of Calendar Tetris. Rotate the blocks. Find the gaps. Nothing fits cleanly but everything has to go somewhere.)" },
        { speaker = "pm", expression = "neutral", text = "(Moves the stakeholder check-in to Friday. Bumps Priya from 90 to 60. Books Riley for Thursday 10 AM.)" },
        { speaker = "pm", expression = "stressed", text = "(I now have 22 minutes of unscheduled time tomorrow. Between 11:38 and noon. That's my 'thinking time.' That's where strategy happens.)" },
        { speaker = "pm", expression = "neutral", text = "(Slack from the director. 'When can I see a demo?' Day 2. The answer is not day 2. The answer is never day 2.)" },
        { speaker = "pm", expression = "neutral", text = "(I type 'Sprint 1 demo is planned for week 3.' That buys time. Time is the only resource I actually control.)" },
        { speaker = "pm", expression = "neutral", text = "(Email from HR. 'Team building event suggestions?' I don't need a team building event. I need requirements.)" },
        { speaker = "pm", expression = "tired", text = "(10:17 AM. The calendar is a Tetris board with no long pieces. But everything fits. Barely.)" },
        { speaker = "pm", expression = "neutral", text = "(Day 2. The standup took 38 minutes. The calendar took 34. I've accomplished nothing tangible and I'm already behind.)" },
        { speaker = "pm", expression = "neutral", text = "(But the team is talking. They disagree, but they're in the same room. That's the seed. My job is to water it without drowning it.)" },
        { speaker = "pm", expression = "tired", text = "(Tomorrow: standup round two. Target: 20 minutes. I won't promise 15 again. Lesson learned.)" },

        { text = "", goto = "day3" }
    }
}
