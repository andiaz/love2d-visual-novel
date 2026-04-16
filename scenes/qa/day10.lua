return {
    title = "Day 10 -- Wednesday",
    subtitle = "The Long Night",
    narration = "Final demo Friday. The team is staying late. You don't crunch. You break things, calmly.",

    bg = "office_evening",
    bgm = "late_night",

    dialogue = {
        { speaker = "qa", expression = "deadpan", text = "Wednesday evening. Final demo Friday. The office lights are staying on. The bug tracker is staying on too." },
        { speaker = "pm", expression = "stressed", text = "Status: behind on five of seven deliverables." },
        { speaker = "dev", expression = "tired", text = "I've been coding 11 hours. Feed works. Search is held together with hope." },
        { speaker = "qa", expression = "deadpan", text = "I tested with three simultaneous users. The server gave up and went home." },
        { speaker = "arch", expression = "thinking", text = "That's a scaling issue. I need to revisit the caching layer--" },
        { speaker = "dev", expression = "frustrated", text = "Casey. We have 36 hours. There is no caching layer revision." },

        { speaker = "pm", expression = "stressed", text = "Real talk. Are we crunching tonight?" },
        { speaker = "qa", expression = "deadpan", text = "(I'll be here. I always am. Crunch is when the bugs come out to play.)" },

        { speaker = "qa", expression = "neutral", text = "I'll keep testing. Better me than leadership." },
        { speaker = "po", expression = "excited", text = "I can help! I'll update the demo script!" },
        { speaker = "dev", expression = "frustrated", text = "Priya. Please. Don't change requirements tonight." },
        { speaker = "po", expression = "neutral", text = "I won't! ...probably." },

        { speaker = "pm", expression = "neutral", text = "Riley? You're already in this with us. What's the play?" },

        { speaker = "qa", expression = "neutral", text = "(Three options. None of them get me home before midnight.)",
            choices = {
                { text = "Stay all night. Run regression on every fix as it lands. Live triage.", set = {pulled_allnighter = true}, rel = {dev = 1, pm = 1} },
                { text = "Boundary at 11. I will not test tired. Tired QA misses bugs. We regroup at 7.", set = {set_boundaries = true}, rel = {dev = 2, ux = 1, qa = 1} },
                { text = "Split: I write a smoke test that runs in 90 seconds. Sam fixes things, I rerun it. Sustainable loop.", set = {rallied_team = true}, rel = {dev = 2, arch = 1, pm = 1} },
            }
        },

        -- All-nighter
        { speaker = "qa", expression = "deadpan", text = "I'll stay. I always stay. Pizza is acceptable currency.", condition = "pulled_allnighter" },
        { speaker = "qa", expression = "deadpan", text = "(Crunch isn't a badge of honor. It's also not optional, today.)", condition = "pulled_allnighter" },
        { speaker = "qa", expression = "deadpan", text = "I open the regression suite. 247 test cases. Let's see how many survive the night.", condition = "pulled_allnighter" },

        -- Boundaries
        { speaker = "qa", expression = "neutral", text = "Hard cutoff at 11. I will not test tired. Tired QA writes bugs and misses bugs. I'll be back at 7 sharp.", condition = "set_boundaries" },
        { speaker = "dev", expression = "tired", text = "Smart. Wish I could.", condition = "set_boundaries" },
        { speaker = "qa", expression = "neutral", text = "You can. Try it.", condition = "set_boundaries" },
        { speaker = "qa", expression = "neutral", text = "I leave at 10:58. Two minutes early. Tired QA does not find bugs. Tired QA creates them.", condition = "set_boundaries" },

        -- Rally
        { speaker = "qa", expression = "neutral", text = "I'm writing a 90-second smoke test. Sam fixes a thing, I run it. Loop until midnight. Then we sleep. Then we go again.", condition = "rallied_team" },
        { speaker = "dev", expression = "smiling", text = "That's the smartest thing I've heard all week.", condition = "rallied_team" },
        { speaker = "qa", expression = "smirk", text = "(QA running ops. Unprecedented. Effective.)", condition = "rallied_team" },
        { speaker = "qa", expression = "neutral", text = "I write the smoke test in 40 minutes. It covers login, feed, content creation, and search. 90 seconds. No fluff.", condition = "rallied_team" },

        -- Time-stamp: Running regression suites at midnight
        { text = "-- 9:45 PM --" },

        { speaker = "qa", expression = "deadpan", text = "(I set up the test environment. Clean database. Fresh deploy. No cached data. If the product cannot survive a clean start, it cannot survive a demo.)" },
        { speaker = "qa", expression = "neutral", text = "(Jordan asks: 'How long will the full regression take?' I tell him 90 minutes. He winces. 90 minutes is fast. He does not know that.)" },
        { speaker = "qa", expression = "deadpan", text = "(I also run the accessibility audit. Not because anyone asked. Because the VP uses screen magnification and I noticed at the last all-hands.)" },
        { speaker = "qa", expression = "deadpan", text = "(Three contrast failures. Two missing aria labels. One focus trap in the modal. I file them all. Priority: low. Likelihood of being fixed before Friday: zero. Likelihood of me finding them anyway: always.)", condition = "fought_scope" },

        { text = "-- 10:30 PM --" },

        { speaker = "qa", expression = "deadpan", text = "(The regression suite is running. 247 test cases. Each one a question. Each failure an answer nobody wants to hear.)" },
        { speaker = "qa", expression = "deadpan", text = "First pass: 189 pass. 42 fail. 16 are flaky. The flaky ones are worse. A flaky test is a liar." },
        { speaker = "qa", expression = "deadpan", text = "(I triage the failures. 14 are known bugs. 12 are new. 16 are tests that pass when they feel like it.)" },
        { speaker = "qa", expression = "deadpan", text = "I file the 12 new bugs. Each one with steps, expected result, actual result. Screenshots. I do not summarize. I do not editorialize. The bug report is the editorial." },

        { text = "-- 11:00 PM --" },

        { speaker = "qa", expression = "neutral", text = "(Priya messages: 'Can you also test the social sharing feature?' I reply: 'The social sharing feature does not exist.' She replies: 'Oh. Right.')" },
        { speaker = "qa", expression = "deadpan", text = "(The gap between Priya's deck and Sam's codebase. I live in that gap. I measure it in bug reports.)" },
        { speaker = "qa", expression = "neutral", text = "(I make a list for Jordan. Features that work. Features that mostly work. Features that will crash in front of the VP. The list for 'will crash' has three items. That is two fewer than yesterday.)" },
        { speaker = "qa", expression = "deadpan", text = "(Progress. In QA, progress means the 'will crash' list got shorter. It never reaches zero. Zero is a myth. Zero is Priya's deck.)" },

        { text = "-- 11:45 PM --" },

        { speaker = "qa", expression = "deadpan", text = "Sam pushes a fix for the search ordering. I rerun the suite. 194 pass. Five more. We are gaining ground." },
        { speaker = "dev", expression = "tired", text = "Riley, is the search passing now?" },
        { speaker = "qa", expression = "neutral", text = "The search passes. The search also returns results for queries that don't match any content. That is a new bug." },
        { speaker = "dev", expression = "tired", text = "It's a feature." },
        { speaker = "qa", expression = "deadpan", text = "It is not a feature." },

        { text = "-- 12:30 AM --" },

        { speaker = "qa", expression = "deadpan", text = "Second full regression. 201 pass. 31 fail. 15 flaky. We are winning. Slowly." },
        { speaker = "qa", expression = "deadpan", text = "(The bugs at midnight are different from the bugs at noon. Noon bugs are logic errors. Midnight bugs are desperation errors. Someone wrote a try-catch that catches everything and returns null.)" },
        { speaker = "qa", expression = "deadpan", text = "I find the null catch. It masks three other bugs underneath. I file four bug reports in four minutes." },

        -- Interpersonal moment
        { speaker = "qa", expression = "neutral", text = "Casey messages: 'Deployed a staging fix. Can you rerun the load test?'" },
        { speaker = "qa", expression = "deadpan", text = "I rerun. Five concurrent users. No crash. Ten users. Stable. Casey's async patch works.", condition = "paired_with_dev" },
        { speaker = "qa", expression = "neutral", text = "(Working alongside Sam and Casey has changed how I test. I understand the architecture now. That makes me more dangerous.)", condition = "paired_with_dev" },

        { speaker = "qa", expression = "deadpan", text = "I rerun. Five users. No crash. Ten users. Stable. Casey earns a night off from my bug reports.", condition = {paired_with_dev = nil} },
        { speaker = "qa", expression = "neutral", text = "(The infrastructure fix was 40 lines. 40 lines and two days of crashes. I am keeping a tally.)", condition = {paired_with_dev = nil} },

        { speaker = "qa", expression = "neutral", text = "Alex's error state redesign lands at 12:45. I test it. The retry button works. The coffee cup illustration is unnecessary and also charming." },
        { speaker = "qa", expression = "deadpan", text = "(Alex polishes pixels at 1 AM like I run regression suites at 1 AM. We are the same kind of obsessive. Different medium.)" },

        { text = "-- 1:15 AM --" },

        { speaker = "qa", expression = "deadpan", text = "(Third regression pass. 207 pass. 25 fail. 15 flaky. The flaky count has not moved. The flaky tests are taunting me.)" },
        { speaker = "qa", expression = "neutral", text = "(I mark seven of the flaky tests as 'environment-dependent.' That is QA for 'I give up on these for tonight.' The remaining eight I will stare at until they confess.)" },
        { speaker = "qa", expression = "deadpan", text = "(Jordan went home at 12:40. He said 'good night, Riley' as he left. He is the only person on this team who says good night. That is a small thing. It is also the correct thing.)", condition = "set_boundaries" },

        -- Choice 2: personal/emotional
        { speaker = "qa", expression = "deadpan", text = "(It is 1 AM. The suite is running. The office is dark. I am sitting in the glow of test results.)" },
        { speaker = "qa", expression = "deadpan", text = "(201 passing tests. 31 failures. 15 uncertain. The numbers tell a story. The story is: we are close, but not there.)" },
        { speaker = "qa", expression = "neutral", text = "(What do I do with this quiet moment?)",
            choices = {
                { text = "Message Sam: 'Build is getting there. Your fixes are landing clean.' Acknowledge the work.", set = {crunch_bonded = true}, rel = {dev = 1, pm = 1, ux = 1} },
                { text = "Keep running the suite. The numbers are the only conversation that matters right now.", set = {crunch_isolated = true}, rel = {qa = 1} },
            }
        },

        { speaker = "qa", expression = "neutral", text = "I send the message. It is the most positive thing I have said in the team chat all sprint.", condition = "crunch_bonded" },
        { speaker = "dev", expression = "tired", text = "Riley. That might be the nicest thing you've ever said to me.", condition = "crunch_bonded" },
        { speaker = "qa", expression = "smirk", text = "Don't get used to it. The next bug report will be brutal.", condition = "crunch_bonded" },
        { speaker = "qa", expression = "neutral", text = "(Being kind costs nothing. Being kind at 1 AM costs slightly less than a bug report.)", condition = "crunch_bonded" },

        { speaker = "qa", expression = "deadpan", text = "I start the third regression run. The test runner does not need encouragement. Neither do I.", condition = "crunch_isolated" },
        { speaker = "qa", expression = "deadpan", text = "(The numbers go up. That is the encouragement. Pass rate 81.4%. Tomorrow I want 90%.)", condition = "crunch_isolated" },
        { speaker = "qa", expression = "deadpan", text = "(QA does not need to be social to be essential. The suite runs. The bugs are found. That is the job.)", condition = "crunch_isolated" },

        -- End
        { speaker = "qa", expression = "deadpan", text = "(The crunch. Every project has one. QA is the immune system. Tonight I am very, very busy.)" },
        { speaker = "qa", expression = "deadpan", text = "(I close the laptop at 1:45 AM. 201 passing. 31 failing. Tomorrow those numbers change. The direction is up to the team.)" },

        { text = "", goto = "day11" }
    }
}
