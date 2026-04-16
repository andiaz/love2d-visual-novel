return {
    title = "Day 2 -- Tuesday",
    subtitle = "The First Standup",
    narration = "Jordan promised 15 minutes. The repo exists. The requirements do not.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- PRE-STANDUP MORNING
        { speaker = "dev", expression = "neutral", text = "(Tuesday. 8:31 AM. Coffee number one. Let's see what happened overnight.)" },
        { speaker = "dev", expression = "neutral", text = "(Opens the repo. One commit. Mine. 'Initial commit: linter, .gitignore, README placeholder.')" },
        { speaker = "dev", expression = "neutral", text = "(Nobody else has pushed. Nobody else has cloned. The repo has one star and it's from me.)" },
        { speaker = "dev", expression = "neutral", text = "(No CI pipeline. I set up the linter but there's no automated check. Just vibes and trust.)" },
        { speaker = "dev", expression = "frustrated", text = "(The dev environment setup doc I wrote yesterday? Two views. Both me. One was a typo.)" },
        { speaker = "dev", expression = "neutral", text = "(Checks Slack. Three channels already. '#chimera-general' has 47 messages. Most are Jordan's.)" },
        { speaker = "dev", expression = "neutral", text = "(Casey posted an architecture diagram at 11:43 PM. It has seven microservices. For an MVP.)" },
        { speaker = "dev", expression = "frustrated", text = "(Seven. I counted. One of them has no clear purpose. I'm choosing to believe that's a joke.)" },
        { speaker = "dev", expression = "neutral", text = "(Priya replied with three fire emojis and the words 'YES THIS.' That is not a code review.)" },
        { speaker = "dev", expression = "neutral", text = "(Riley hasn't said anything in any channel. Smart.)" },
        { speaker = "dev", expression = "neutral", text = "(Alex posted a user flow sketch. Actually decent. Clean lines, clear states. I can work with this.)" },
        { speaker = "dev", expression = "neutral", text = "(Calendar ping. Standup soon. Meeting room B.)" },
        { speaker = "dev", expression = "neutral", text = "(Let me check one more thing. The package.json... yeah, no test runner configured. No build script. We're raw.)" },
        { speaker = "dev", expression = "tired", text = "(I should eat something. But honestly, the state of this repo is killing my appetite.)" },
        { speaker = "dev", expression = "neutral", text = "(Grabs the laptop. Heads to Meeting Room B. Time to hear the word 'synergy' at least twice.)" },

        -- THE STANDUP
        { bg = "meeting_room" },
        { speaker = "pm", expression = "cheerful", text = "Good morning! Welcome to our first standup. Let's keep it tight. Yesterday, today, blockers. Fifteen minutes." },
        { speaker = "dev", expression = "neutral", text = "(Write that down. We'll need it for the postmortem.)" },
        { speaker = "pm", expression = "cheerful", text = "I'll go first. Yesterday I set up the Jira board, created the Slack channels, and sent out the project charter." },
        { speaker = "pm", expression = "cheerful", text = "Today I'm mapping out the sprint ceremonies and setting up the first backlog grooming. No blockers." },
        { speaker = "dev", expression = "neutral", text = "(That was organized. Efficient. I'm suspicious.)" },
        { speaker = "ux", expression = "neutral", text = "Yesterday I sketched some user flows. Today I'm going to map out the information architecture. No blockers yet." },
        { speaker = "dev", expression = "neutral", text = "(Alex is concise. I appreciate Alex.)" },
        { speaker = "arch", expression = "whiteboarding", text = "I started the architecture doc. I posted three options in Slack last night. We need to discuss the data model before Sam goes too far." },
        { speaker = "dev", expression = "frustrated", text = "(Goes too far. I have one commit. It's a .gitignore file.)" },
        { speaker = "dev", expression = "neutral", text = "(But I'm not going to say that out loud. Pick your battles. Day 2.)" },
        { speaker = "pm", expression = "neutral", text = "Great. Priya?" },
        { speaker = "po", expression = "excited", text = "I refined the deck last night. Added three new slides on the competitive landscape. And I've been thinking about a social feed as the hero feature." },
        { speaker = "dev", expression = "neutral", text = "(A social feed. Real-time. With no data model. And no backend. And no spec. Sure.)" },
        { speaker = "pm", expression = "neutral", text = "Riley?" },
        { speaker = "qa", expression = "neutral", text = "Test plan's in progress. Hard to test what hasn't been defined yet, though." },
        { speaker = "po", expression = "defensive", text = "I sent a 47-slide deck!" },
        { speaker = "qa", expression = "deadpan", text = "That's a mood board, Priya. It has stock photos of people high-fiving." },
        { speaker = "dev", expression = "neutral", text = "(Riley just said what everyone was thinking. Respect.)" },
        { speaker = "po", expression = "defensive", text = "Those photos represent the emotional journey of the user." },
        { speaker = "dev", expression = "neutral", text = "(The emotional journey of THIS user is frustration.)" },
        { speaker = "arch", expression = "whiteboarding", text = "About the data model. I've been thinking about a microservices approach. If we separate the auth layer from the content layer early..." },
        { speaker = "dev", expression = "frustrated", text = "Casey. For an MVP." },
        { speaker = "arch", expression = "concerned", text = "It's never too early to think about it. The first architectural decision is the one you can't undo." },
        { speaker = "dev", expression = "neutral", text = "(That's not wrong. But seven microservices for a product that doesn't have a login page yet is a special kind of optimism.)" },
        { speaker = "pm", expression = "stressed", text = "Let's take that offline. We're at 22 minutes." },
        { speaker = "qa", expression = "deadpan", text = "(Twenty-two minutes. And we haven't gotten to the actual blockers yet.)" },
        { speaker = "pm", expression = "neutral", text = "Sam, your turn. What's your update?" },
        { speaker = "dev", expression = "neutral", text = "Yesterday: created the repo, set up the linter, picked a stack. Today: depends on what I hear in this room." },
        { speaker = "pm", expression = "stressed", text = "That's... vague. Can you be more specific?" },
        { speaker = "dev", expression = "neutral", text = "(Eight seconds. That was my entire update. And it made Jordan nervous.)" },
        { speaker = "dev", expression = "neutral", text = "(The truth is, I can't commit to a direction until this team picks one. But saying that out loud makes me the blocker.)" },
        { speaker = "pm", expression = "neutral", text = "Sam, what are you actually going to start on today?" },

        -- THE CHOICE
        { speaker = "dev", expression = "neutral", text = "(Three honest options. I have to pick one.)",
            choices = {
                { text = "I want to spike the highest-risk technical question first.", set = {pushed_interviews = true}, rel = {qa = 1, arch = 2, po = -1} },
                { text = "I'll scaffold the API based on the deck and see what falls out.", set = {started_wireframes = true}, rel = {po = 1, pm = 1} },
                { text = "I'm not writing a line until someone gives me real requirements.", set = {needs_requirements = true}, rel = {arch = 1, qa = 1, po = -1, pm = -1} },
            }
        },

        -- Spike path (= research)
        { speaker = "dev", expression = "neutral", text = "Real-time sync. Auth model. Mobile parity. One of those is going to bite us in week four. I want to know which one by Thursday.", condition = "pushed_interviews" },
        { speaker = "arch", expression = "neutral", text = "Yes. Thank you. THIS is engineering.", condition = "pushed_interviews" },
        { speaker = "pm", expression = "stressed", text = "A spike? That's two days you could be writing the actual product.", condition = "pushed_interviews" },
        { speaker = "dev", expression = "neutral", text = "Two days now or two weeks of rework. Pick.", condition = "pushed_interviews" },
        { speaker = "qa", expression = "neutral", text = "I'll write test scenarios against whatever Sam finds. That gives me something concrete.", condition = "pushed_interviews" },
        { speaker = "pm", expression = "stressed", text = "(Two people now committed to not shipping anything for two days. This is fine.)", condition = "pushed_interviews" },
        { speaker = "dev", expression = "neutral", text = "(Jordan's doing the math. Velocity equals zero for day 2 and day 3. But velocity without direction is just chaos with a burndown chart.)", condition = "pushed_interviews" },

        -- Scaffold path (= compliance)
        { speaker = "po", expression = "excited", text = "Yes! Build it! That's the spirit!", condition = "started_wireframes" },
        { speaker = "dev", expression = "neutral", text = "(Famous last words.)", condition = "started_wireframes" },
        { speaker = "dev", expression = "neutral", text = "I'll pull the API structure from the deck. Endpoints for the main entities. Skeleton routes, no logic.", condition = "started_wireframes" },
        { speaker = "arch", expression = "concerned", text = "Sam, scaffold around the data model. Don't paint yourself into a corner.", condition = "started_wireframes" },
        { speaker = "dev", expression = "neutral", text = "Noted.", condition = "started_wireframes" },
        { speaker = "dev", expression = "neutral", text = "(What I mean by 'noted' is 'I heard you and I will do what I was going to do anyway.')", condition = "started_wireframes" },
        { speaker = "pm", expression = "cheerful", text = "Great. We'll have something to look at by tomorrow.", condition = "started_wireframes" },
        { speaker = "dev", expression = "neutral", text = "(We will have folder names by tomorrow. Jordan hears 'scaffold' and pictures a working app. I hear 'scaffold' and picture empty files with TODO comments.)", condition = "started_wireframes" },

        -- Requirements path (= pushback)
        { speaker = "dev", expression = "frustrated", text = "I'm serious. The deck has the word 'delight' in 72-point font on slide 23. That is not a spec.", condition = "needs_requirements" },
        { speaker = "po", expression = "defensive", text = "The vision IS the requirement!", condition = "needs_requirements" },
        { speaker = "dev", expression = "neutral", text = "Priya. I cannot import vision. I cannot deploy buzzwords. I need inputs, outputs, and edge cases.", condition = "needs_requirements" },
        { speaker = "arch", expression = "neutral", text = "Sam's right. We need scope before code.", condition = "needs_requirements" },
        { speaker = "qa", expression = "deadpan", text = "I also can't test vibes. Though I'd love to see the test case.", condition = "needs_requirements" },
        { speaker = "pm", expression = "neutral", text = "Okay. Requirements workshop, this week. But we're still shipping in 6 weeks.", condition = "needs_requirements" },
        { speaker = "dev", expression = "neutral", text = "(Six weeks. No spec. No data model. One commit. We're going to be fine.)", condition = "needs_requirements" },
        { speaker = "dev", expression = "neutral", text = "(That was sarcasm. In case the inner monologue wasn't clear.)", condition = "needs_requirements" },

        -- CONVERGE
        { speaker = "pm", expression = "neutral", text = "Okay, calling it. That was... let me check... 38 minutes. We'll do better tomorrow." },
        { speaker = "qa", expression = "smirk", text = "New record." },
        { speaker = "dev", expression = "neutral", text = "(Day 2. Already 23 minutes over budget on the only meeting that's supposed to be cheap.)" },
        { speaker = "dev", expression = "neutral", text = "(But at least the dysfunction is visible now. That's actually progress. You can't fix what you can't see.)" },

        -- POST-STANDUP: Dev environment debugging
        { bg = "office_day" },
        { speaker = "dev", expression = "neutral", text = "(Back at the desk. 9:42 AM. The standup ate 38 minutes. Now to do the actual work.)" },
        { speaker = "dev", expression = "neutral", text = "(First things first. Let me get the dev environment actually running. Node version... wrong.)" },
        { speaker = "dev", expression = "frustrated", text = "(Of course. I'm on 18. The project needs 20. nvm install, nvm use, verify... okay.)" },
        { speaker = "dev", expression = "neutral", text = "(Now the dependencies. npm install... 847 packages. Three deprecation warnings. Two moderate vulnerabilities.)" },
        { speaker = "dev", expression = "neutral", text = "(One of the vulnerabilities is in a package I didn't install. Transitive dependency. The gift that keeps giving.)" },
        { speaker = "dev", expression = "frustrated", text = "(ESLint config is throwing errors. Right. I set it up for TypeScript but the tsconfig is pointing at the wrong root.)" },
        { speaker = "dev", expression = "neutral", text = "(A bit of config surgery. The linter works. The formatter works. They disagree about semicolons.)" },
        { speaker = "dev", expression = "neutral", text = "(Resolves the semicolon war. Prettier wins. It always wins.)" },
        { speaker = "dev", expression = "neutral", text = "(10:14 AM. The dev environment works. Nobody will ever know the morning I just had.)" },
        { speaker = "dev", expression = "neutral", text = "(This is the invisible work. No ticket for it. No story points. Just the foundation that everything else sits on.)" },
        { speaker = "dev", expression = "neutral", text = "(Slack message from Casey. 'Did you see my architecture diagram?' Yes, Casey. All seven services. I saw them.)" },
        { speaker = "dev", expression = "neutral", text = "(I type 'looks thorough' and delete it. I type 'we should talk' and delete it. I type a thumbs-up emoji and hit send.)" },
        { speaker = "dev", expression = "tired", text = "(The thumbs-up emoji. The universal language of 'I have opinions but not the energy.')" },
        { speaker = "dev", expression = "neutral", text = "(10:23 AM. Dev environment works. Standup survived. Team dynamics identified.)" },
        { speaker = "dev", expression = "neutral", text = "(Jordan wants velocity. Priya wants vision. Casey wants purity. Riley wants specs. Alex wants clarity.)" },
        { speaker = "dev", expression = "neutral", text = "(And I want to write code. Actual code. That does a thing. For a user.)" },
        { speaker = "dev", expression = "tired", text = "(Day 2. No code written yet. But I know where the landmines are. That's worth something. Probably.)" },

        { text = "", goto = "day3" }
    }
}
