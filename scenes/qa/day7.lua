return {
    title = "Day 7 -- Wednesday",
    subtitle = "The Invisible Infrastructure",
    narration = "Dev handoff day. Everyone is arguing about designs and API calls. You have a different problem. The test environment doesn't exist.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- PRE-HANDOFF PREPARATION
        { speaker = "qa", expression = "deadpan", text = "Wednesday morning. Dev handoff day. Everyone is in the meeting room arguing about pixels and API calls." },
        { speaker = "qa", expression = "neutral", text = "(I have a different problem. I just tried to run the test suite. There is no test suite. There is no test environment.)" },
        { speaker = "qa", expression = "deadpan", text = "I opened the staging URL. 502 Bad Gateway. Nobody set up staging. Nobody thought about it." },
        { speaker = "qa", expression = "neutral", text = "(Seven days into the sprint. The team has designs. The team has architecture diagrams. The team has a Jira board with 47 tickets.)" },
        { speaker = "qa", expression = "deadpan", text = "(The team does not have a place for me to test the software.)" },
        { speaker = "qa", expression = "neutral", text = "This is the QA experience. You don't exist until someone needs you to say 'it works.' Then you don't have the tools to say it." },
        { speaker = "qa", expression = "deadpan", text = "I'm going to fix this. But first I need to crash a meeting." },
        { speaker = "qa", expression = "neutral", text = "(The handoff meeting. The room QA is never invited to. Time to invite myself.)" },

        -- THE 1-ON-1 CONVERSATION
        { speaker = "qa", expression = "deadpan", text = "Sorry to interrupt. We have a problem that's bigger than the drag-and-drop debate.", bg = "meeting_room" },
        { speaker = "dev", expression = "neutral", text = "Riley? We're in the middle of--" },
        { speaker = "qa", expression = "deadpan", text = "The test environment is down. Actually, the test environment was never up. Nobody set up staging." },
        { speaker = "dev", expression = "neutral", text = "...what?" },
        { speaker = "qa", expression = "neutral", text = "502 Bad Gateway. The staging URL points to nothing. There's no database seeded. There's no test data. There's no CI pipeline." },
        { speaker = "dev", expression = "tired", text = "I've been coding against localhost." },
        { speaker = "qa", expression = "deadpan", text = "I know. Everyone codes against localhost. Nobody thinks about where I test." },
        { speaker = "ux", expression = "thinking", text = "Can't you just... test on Sam's machine?" },
        { speaker = "qa", expression = "deadpan", text = "Alex. I love you. No. I cannot test on Sam's machine. That's not testing. That's watching someone else's computer work on their network with their data." },
        { speaker = "qa", expression = "neutral", text = "Testing means a clean environment. Seed data. Repeatable conditions. A place where I can break things without breaking Sam's work." },
        { speaker = "dev", expression = "neutral", text = "Riley's right. I should have set up staging last week. I got buried in feature work." },
        { speaker = "qa", expression = "deadpan", text = "(At least Sam admits it. Most devs would blame the infrastructure team. We don't have an infrastructure team.)" },
        { speaker = "qa", expression = "neutral", text = "Here's the math. Demo is Friday. Sam needs to build features. I need to test features. I can't test features that don't exist in an environment that also doesn't exist." },
        { speaker = "dev", expression = "neutral", text = "How long to set up staging?" },
        { speaker = "qa", expression = "deadpan", text = "If I do it myself? Half a day. But I'll need access to the deployment config, the database schema, and the environment variables." },
        { speaker = "dev", expression = "neutral", text = "I can give you the config. But if you're setting up staging, you're not writing test cases." },
        { speaker = "qa", expression = "neutral", text = "And if I'm writing test cases, nobody sets up staging. And then I have test cases with nowhere to run them." },
        { speaker = "qa", expression = "deadpan", text = "(The invisible infrastructure problem. QA needs environments. Environments need setup. Setup needs time. Time was never allocated because nobody thinks about QA until it's too late.)" },
        { speaker = "dev", expression = "tired", text = "Riley, what do you need from me? Honest question." },
        { speaker = "qa", expression = "neutral", text = "I need you to understand that testing isn't something that happens after development. It's something that needs infrastructure before development starts." },
        { speaker = "qa", expression = "deadpan", text = "Every sprint, the same thing. Designs get time. Development gets time. Architecture gets time. QA gets 'whatever's left.'" },
        { speaker = "dev", expression = "neutral", text = "That's fair. I never thought about staging because I never needed it. My localhost works." },
        { speaker = "qa", expression = "neutral", text = "(Your localhost works. My job is to prove it works everywhere else. And everywhere else doesn't exist yet.)" },
        { speaker = "qa", expression = "deadpan", text = "Also, while we're being honest -- the designs Alex made. The drag-and-drop, the infinite scroll, the auto-save. Each of those needs its own test strategy." },
        { speaker = "qa", expression = "neutral", text = "Drag-and-drop needs race condition tests. Infinite scroll needs pagination boundary tests. Auto-save needs conflict resolution tests. And I need a staging environment to run any of them." },
        { speaker = "dev", expression = "neutral", text = "You've been thinking about this." },
        { speaker = "qa", expression = "deadpan", text = "I've been thinking about this since Monday. I just couldn't say it until there was a meeting to crash." },

        -- THE CHOICE
        { speaker = "qa", expression = "neutral", text = "(Three options. As QA, I get to push for one.)",
            choices = {
                { text = "Side with Sam. Simplify the features. Less surface = less to break = less environment I need.", set = {simplified_ux = true}, rel = {dev = 2, arch = 1, ux = -1} },
                { text = "Side with Alex. The interactions matter. I'll write more tests and figure out the environment.", set = {kept_complex_ux = true}, rel = {ux = 2, dev = -2, qa = -1} },
                { text = "Make them pair. Build live, test as we go. I'll set up staging while they code.", set = {paired_with_dev = true}, rel = {dev = 2, ux = 2, arch = 1} },
            }
        },

        -- SIMPLIFIED PATH
        { speaker = "qa", expression = "neutral", text = "Simplify the features. Cut the drag-and-drop. Cut the custom transitions. Less interaction surface means less to test and a simpler staging setup.", condition = "simplified_ux" },
        { speaker = "ux", expression = "frustrated", text = "Riley, the interactions are the product--", condition = "simplified_ux" },
        { speaker = "qa", expression = "deadpan", text = "The interactions are untestable in an environment that doesn't exist. Untested equals broken in production. That's not an opinion. That's a law.", condition = "simplified_ux" },
        { speaker = "dev", expression = "smiling", text = "Thank you, Riley. Simpler features, simpler staging, simpler life.", condition = "simplified_ux" },
        { speaker = "qa", expression = "neutral", text = "I'll have staging up by end of day. Simple features. Clean environment. We test tomorrow.", condition = "simplified_ux" },
        { speaker = "qa", expression = "deadpan", text = "(Sam is relieved. Alex is hurt. I'm doing math. That's how QA works.)", condition = "simplified_ux" },

        -- COMPLEX PATH
        { speaker = "qa", expression = "deadpan", text = "Fine. The interactions stay. All of them. Drag-and-drop, transitions, auto-save, infinite scroll.", condition = "kept_complex_ux" },
        { speaker = "qa", expression = "neutral", text = "I will write 80 test cases for them. Edge cases. Race conditions. Network failures. Every way a user can break what Sam builds.", condition = "kept_complex_ux" },
        { speaker = "ux", expression = "excited", text = "Riley, thank you. Seriously.", condition = "kept_complex_ux" },
        { speaker = "qa", expression = "deadpan", text = "Don't thank me yet. I still need to build the staging environment AND write the test suite. That's two full-time jobs in two days.", condition = "kept_complex_ux" },
        { speaker = "dev", expression = "neutral", text = "I'll help with the environment config tonight.", condition = "kept_complex_ux" },
        { speaker = "qa", expression = "neutral", text = "(Sam offering to help with staging. That's new. Write it down. Remember it. Hold them to it.)", condition = "kept_complex_ux" },

        -- PAIRING PATH
        { speaker = "qa", expression = "neutral", text = "Pair them. Sam and Alex at the same desk. While they build, I set up staging. When they finish a feature, I test it immediately.", condition = "paired_with_dev" },
        { speaker = "dev", expression = "neutral", text = "Three-way workflow. Build, design, test. In parallel.", condition = "paired_with_dev" },
        { speaker = "qa", expression = "deadpan", text = "Real-time feedback loop. You build a feature at 2 PM. I test it at 2:30. You fix the bug at 3. No handoff delay. No 'throw it over the wall.'", condition = "paired_with_dev" },
        { speaker = "ux", expression = "excited", text = "Riley, that's actually brilliant. Continuous testing.", condition = "paired_with_dev" },
        { speaker = "qa", expression = "neutral", text = "It's not brilliant. It's how software should always work. We just never have the environment ready in time to do it.", condition = "paired_with_dev" },
        { speaker = "qa", expression = "deadpan", text = "(Healing, even. QA at the table from the start. I could get used to this. I won't. But I could.)", condition = "paired_with_dev" },

        -- POST-HANDOFF REFLECTION
        { speaker = "qa", expression = "deadpan", text = "5 PM. I'm alone in the office. Everyone else went home after the handoff meeting. I'm still setting up staging.", bg = "office_day" },
        { speaker = "qa", expression = "neutral", text = "(Docker compose file. Environment variables. Seed data script. CI pipeline config. Four things that should have existed on day one.)" },
        { speaker = "qa", expression = "deadpan", text = "(Nobody budgets time for test infrastructure. Nobody puts 'set up staging' on the sprint board. It's invisible work.)" },
        { speaker = "qa", expression = "neutral", text = "(Until the demo breaks. Then suddenly everyone asks 'didn't QA catch this?' and the answer is 'QA didn't have a place to catch it.')" },
        { speaker = "qa", expression = "deadpan", text = "(The invisible infrastructure problem. Every sprint. Every team. Every time.)" },
        { speaker = "qa", expression = "neutral", text = "Staging is up. 502 is gone. Green light on the health check. Tomorrow I start testing for real." },
        { speaker = "qa", expression = "deadpan", text = "(Nobody will notice that staging works. They'll only notice if it doesn't. That's the QA life.)" },

        { text = "", goto = "day8" }
    }
}
