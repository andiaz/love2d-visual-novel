return {
    title = "Day 6 -- Tuesday",
    subtitle = "The Solo Testing Session",
    narration = "Solo day. The build exists. The test plan has teeth. Today you run the scenarios nobody else wants to think about.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "qa", expression = "deadpan", text = "Tuesday. 8:22 AM. Remote day. The apartment is silent except for the test runner and the radiator." },
        { speaker = "qa", expression = "neutral", text = "(Solo testing days are the best days. No standups. No meetings. No one asking 'is it a real bug or a feature?' Just me and the build and the truth.)" },
        { speaker = "qa", expression = "deadpan", text = "(The regression suite ran overnight. 247 scenarios. 14 failures. Three blockers. The build is talking. I am listening.)" },

        -- Conditional: pushed_interviews
        { speaker = "qa", expression = "neutral", text = "(The interview data from Alex changed how I test. I know what users actually do now. My scenarios are sharper. The bugs I find are realer.)", condition = "pushed_interviews" },
        { speaker = "qa", expression = "deadpan", text = "(I am finding mismatches between the deck and the build. Not because the build is wrong. Because the deck is.)", condition = "pushed_interviews" },

        -- Conditional: started_wireframes
        { speaker = "qa", expression = "deadpan", text = "(I am testing against wireframes that have already changed twice. My test cases are chasing a moving target.)", condition = "started_wireframes" },
        { speaker = "qa", expression = "neutral", text = "(This is what happens when you test against designs instead of requirements. The spec is a shapeshifter.)", condition = "started_wireframes" },

        -- Conditional: needs_requirements
        { speaker = "qa", expression = "neutral", text = "(Acceptance criteria are holding. Most of my failures are in the parts nobody specified. The gaps between the requirements.)", condition = "needs_requirements" },
        { speaker = "qa", expression = "deadpan", text = "(The specified parts work. The unspecified parts are where the bugs breed. Nature finds a way.)", condition = "needs_requirements" },

        -- Morning testing session - unique scene
        { speaker = "qa", expression = "neutral", text = "(I pull up the test matrix. 247 scenarios across six features. Each one a tiny story about a user doing something we think they will do.)" },
        { speaker = "qa", expression = "deadpan", text = "(The problem with test matrices: they only test what we imagine. Users have no imagination. They have habits. Habits we have not observed.)" },
        { speaker = "qa", expression = "neutral", text = "(I start the manual run. Feature one: content creation. Scenario one: create a knowledge article with a title, body, and two tags.)" },
        { speaker = "qa", expression = "neutral", text = "(Pass. Obviously. The happy path always passes. Happy paths are the participation trophies of QA.)" },
        { speaker = "qa", expression = "deadpan", text = "(Scenario two: create a knowledge article with no title. The form submits. No validation. No error. The article exists. It is called 'undefined.')" },
        { speaker = "qa", expression = "deadpan", text = "(Filed. Blocker. Because somewhere in production, a user will leave the title blank. Not because they are careless. Because the form let them.)" },
        { speaker = "qa", expression = "neutral", text = "(Scenario seven: paste a 4,000-word document into the body field. The editor freezes for 11 seconds. Then recovers. Then loses the last paragraph.)" },
        { speaker = "qa", expression = "deadpan", text = "(Filed. Critical. Data loss is never minor. Even when the data is test data. Especially when the data is test data. Because if test data disappears, real data will too.)" },
        { speaker = "qa", expression = "neutral", text = "(Scenario twelve: upload an image. JPEG works. PNG works. WebP crashes the preview. SVG renders as text.)" },
        { speaker = "qa", expression = "deadpan", text = "(Filed. Two bugs from one scenario. The ratio is getting worse.)" },

        -- Patterns emerge
        { speaker = "qa", expression = "thinking", text = "(10:15 AM. Twenty-three scenarios in. I stop testing. I start seeing.)" },
        { speaker = "qa", expression = "neutral", text = "(There is a pattern. The bugs are not random. They cluster around boundaries. File types. Character limits. Empty fields. The edges of the system.)" },
        { speaker = "qa", expression = "thinking", text = "(The team built the center. Nobody built the edges. This is always what happens. The edges are where users live.)" },
        { speaker = "qa", expression = "deadpan", text = "(Edge cases are a misnomer. They are not edge cases. They are Tuesday morning at 9:14 AM in any office in the world.)" },

        -- Slack messages
        { speaker = "qa", expression = "neutral", text = "(Slack breaks the silence at 10:30. The team has questions. I have answers they do not want.)" },

        -- Slack from Sam
        { speaker = "dev", expression = "tired", text = "[Slack] Riley, the search endpoint is rebased. Can you smoke-test it?" },
        { speaker = "qa", expression = "deadpan", text = "(I smoke-test it. Search for 'test.' Four results. Search for 'Test.' Zero results. Case-sensitive search. In 2026.)" },
        { speaker = "qa", expression = "neutral", text = "(I type 'Case sensitivity issue. Search for lowercase returns results. Uppercase returns nothing. Filing now.' Sam will hate this.)" },

        -- Slack from Priya
        { speaker = "po", expression = "excited", text = "[Slack] Riley, can you test the collaboration feature? I want to make sure it is demo-ready!" },
        { speaker = "qa", expression = "deadpan", text = "(The 'collaboration feature' is a comment box. I test it. It works. Unless you paste a URL, in which case it wraps incorrectly and overflows the container.)" },
        { speaker = "qa", expression = "neutral", text = "(I type 'Comment feature works for text. URL handling needs attention. Screenshot attached.' Diplomatic. Factual. The QA way.)" },

        -- Slack from Alex
        { speaker = "ux", expression = "thinking", text = "[Slack] Riley, the empty states in my designs -- I am working on them today. Thanks for flagging." },
        { speaker = "qa", expression = "neutral", text = "(Alex listened. That is rare. Most designers treat QA feedback as criticism. Alex treats it as data. I appreciate that.)" },
        { speaker = "qa", expression = "deadpan", text = "(I type 'Thank you. Let me know when they are ready and I will re-test.' Positive reinforcement for designers who listen. Pavlovian QA management.)" },

        -- Deeper patterns
        { speaker = "qa", expression = "thinking", text = "(11:45 AM. Forty-one scenarios complete. The bug count is 19. The pattern is clearer now.)" },
        { speaker = "qa", expression = "neutral", text = "(The bugs fall into three categories. Input validation: 7. State management: 5. Display rendering: 7.)" },
        { speaker = "qa", expression = "thinking", text = "(Input validation bugs mean the forms trust users too much. State management bugs mean the backend trusts the frontend too much. Display bugs mean the CSS trusts the content too much.)" },
        { speaker = "qa", expression = "deadpan", text = "(The common thread: too much trust. The system assumes everyone will behave. QA exists because they will not.)" },

        -- Scope creep conditional
        { speaker = "qa", expression = "frustrated", text = "(And the scope expanded yesterday. More surface area. More edges. More places for bugs to hide. The test matrix just grew by 30 percent.)", condition = "absorbed_scope" },
        { speaker = "qa", expression = "neutral", text = "(At least the scope stayed contained yesterday. Fewer surfaces to test. Fewer edges to patrol. The matrix is manageable.)", condition = "fought_scope" },
        { speaker = "qa", expression = "neutral", text = "(The comment system from yesterday adds six test cases. Manageable. Better than the 200 it could have been.)", condition = "compromised_scope" },

        -- The choice
        { speaker = "qa", expression = "neutral", text = "(1:00 PM. Lunch is leftovers at my desk. The bug tracker is open. 19 tickets filed today. The question is what to do with them.)" },
        { speaker = "qa", expression = "thinking", text = "(I can present the full picture. Or I can stay quiet and fix what I can. Or I can triage and escalate only the worst.)",
            choices = {
                { text = "(Full transparency. Every bug. Every pattern. The team needs to see the real state of the build.)", set = {followed_data = true}, rel = {dev = 2, ux = 2, arch = 1, po = -2} },
                { text = "(Stay quiet. The team is stretched. I will catch the worst ones in QA before the demo. They do not need more bad news.)", set = {followed_vision = true}, rel = {po = 1, dev = -1} },
                { text = "(Triage. Top five to the team. The rest into the backlog. Prioritize by user impact, not by count.)", set = {found_middle = true}, rel = {pm = 2, ux = 1, dev = 1, qa = 1} },
            }
        },

        -- Data path
        { speaker = "qa", expression = "neutral", text = "(I write the report. All 19 bugs. The three patterns. The root cause analysis. I put it in the team channel with a subject line: 'Build Health -- Day 6 Reality Check.')", condition = "followed_data" },
        { speaker = "qa", expression = "deadpan", text = "(The truth is 19 bugs and three structural patterns. The team deserves to know. Even if knowing is uncomfortable.)", condition = "followed_data" },
        { speaker = "qa", expression = "thinking", text = "(Transparency is the QA's only real power. I cannot fix the code. I cannot change the design. But I can make sure everyone sees what I see.)", condition = "followed_data" },
        { speaker = "qa", expression = "neutral", text = "(Sam will be annoyed. Priya will be defensive. But the bugs will not fix themselves by being ignored.)", condition = "followed_data" },

        -- Vision path (quiet)
        { speaker = "qa", expression = "deadpan", text = "(I close the bug tracker. I open the three worst tickets. I leave the other 16 in draft. Not filed. Not visible. Not anyone's problem yet.)", condition = "followed_vision" },
        { speaker = "qa", expression = "thinking", text = "(This is the quiet part of QA. The part where you know things the team does not. The part where you choose what to surface and what to bury.)", condition = "followed_vision" },
        { speaker = "qa", expression = "deadpan", text = "(I will catch them before the demo. Probably. The word 'probably' is doing a lot of work in that sentence.)", condition = "followed_vision" },
        { speaker = "qa", expression = "frustrated", text = "(Sixteen bugs in draft. Sixteen small betrayals of the process I believe in. But the team cannot take more bad news right now.)", condition = "followed_vision" },

        -- Middle path
        { speaker = "qa", expression = "neutral", text = "(I rank the 19 bugs by user impact. Top five go to the team channel. The rest go to backlog with priority tags.)", condition = "found_middle" },
        { speaker = "qa", expression = "thinking", text = "(Five bugs the team can act on. Fourteen bugs the team can find later. Triage is the art of choosing which fires to fight first.)", condition = "found_middle" },
        { speaker = "qa", expression = "deadpan", text = "(I write the message: 'Five priority items for this sprint. Fourteen more in backlog, sorted by impact. Let me know if you want the full pattern analysis.')", condition = "found_middle" },
        { speaker = "qa", expression = "neutral", text = "(Pragmatic Riley. Not dramatic. Not silent. Just clear.)", condition = "found_middle" },

        -- Closing reflection
        { speaker = "qa", expression = "deadpan", text = "(5:55 PM. Test runner complete. 247 scenarios. 19 failures. 3 blockers. 7 input validation. 5 state management. 7 display. The numbers are honest.)" },
        { speaker = "qa", expression = "thinking", text = "(Solo testing days are when the real QA happens. Not in bug triage meetings. Not in sprint reviews. In the silence between test runs.)" },
        { speaker = "qa", expression = "deadpan", text = "(Tomorrow the team will ask 'how is the build?' I will answer with a number. They will want a word. Fine. The word is 'fragile.')" },
        { speaker = "qa", expression = "neutral", text = "(The test matrix is 247 rows. The bug tracker is 19 tickets deeper. The build is a little more understood than it was this morning. That is the job.)" },

        { text = "", goto = "day7" }
    }
}
