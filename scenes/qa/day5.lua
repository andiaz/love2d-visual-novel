return {
    title = "Day 5 -- Monday",
    subtitle = "The Scope Creep",
    narration = "Monday. New sprint. Priya had a thought over the weekend. Your test surface is about to grow.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- PRE-STANDUP
        { speaker = "qa", expression = "deadpan", text = "Monday. Sprint two. I open Slack with the same energy you open a letter from the IRS." },
        { speaker = "qa", expression = "neutral", text = "Priya. 11:47 PM. Sunday. 'Had a thought! What if we added real-time collaboration?'" },
        { speaker = "qa", expression = "deadpan", text = "(My brain immediately starts calculating. Real-time collaboration. That's concurrent editing. Conflict resolution. Presence indicators. Network partition handling.)" },
        { speaker = "qa", expression = "deadpan", text = "(Current test matrix: 47 cases. Estimated test matrix with real-time collab: 247. That's a 425 percent increase. In week two.)" },
        { speaker = "qa", expression = "neutral", text = "I pull up my spreadsheet. The one where I track test surface area by feature. It has a column called 'Priya Risk Factor.' I'm not joking." },
        { speaker = "qa", expression = "deadpan", text = "(Friday Slack volume from Priya: 47 messages. Zero about bugs. Zero about test results. All about features. The correlation between Priya's message count and my weekend stress is r-equals-0.94.)" },
        { speaker = "qa", expression = "neutral", text = "I start listing the edge cases in my head before the standup even starts. Two users. Same paragraph. Same sentence. Same word. One goes offline. One pastes over the other's work." },
        { speaker = "qa", expression = "deadpan", text = "(That's six edge cases from one scenario. Real-time collab has hundreds of scenarios. My test plan just went from a document to an encyclopedia.)" },
        { speaker = "qa", expression = "neutral", text = "I close Slack. Open the test plan. Add a section header: 'Scope Risk -- Pending.' Then I go to standup." },

        { text = "..." },

        -- THE STANDUP
        { bg = "meeting_room" },

        { speaker = "pm", expression = "cheerful", text = "New sprint, fresh start! Let's keep this one under 20 minutes." },
        { speaker = "qa", expression = "deadpan", text = "(Liar. Last time: 38 minutes. Jordan's 15-minute promise has the same reliability as a horoscope.)" },

        { speaker = "po", expression = "excited", text = "Okay team, I was thinking about this all weekend..." },
        { speaker = "qa", expression = "deadpan", text = "(There it is. The scope alarm. I set my mental timer.)" },
        { speaker = "po", expression = "excited", text = "What if Chimera also had real-time collaboration? Like Google Docs but in the knowledge base!" },
        { speaker = "qa", expression = "deadpan", text = "(And there it is. The test surface just exploded.)" },
        { speaker = "arch", expression = "concerned", text = "Real-time collab is an entire product. Operational transforms, conflict resolution--" },
        { speaker = "po", expression = "defensive", text = "Can we just add it? How much more work could it really be?" },
        { speaker = "dev", expression = "frustrated", text = "Famous last words." },

        { speaker = "qa", expression = "deadpan", text = "(Let me calculate this in real-time. Concurrent edit cases: at minimum 12 scenarios per document type. We have 4 document types. That's 48 base cases.)" },
        { speaker = "qa", expression = "deadpan", text = "(Conflict resolution: what happens when edits overlap? Paragraph level, sentence level, character level. Three resolution strategies per overlap type. Nine more cases per document type. 36 total.)" },
        { speaker = "qa", expression = "deadpan", text = "(Network scenarios: one user offline, both offline, intermittent connection, reconnection sync. Four scenarios times four document types. 16 more.)" },
        { speaker = "qa", expression = "deadpan", text = "(Race conditions: simultaneous save, simultaneous delete, save-during-edit, edit-during-delete. Four cases times four types. 16 more.)" },
        { speaker = "qa", expression = "deadpan", text = "(Presence: cursor display, cursor removal on disconnect, stale cursor cleanup, cursor collision. Four cases. Grand total: 120 new test cases. Minimum. And I'm being generous.)" },

        { speaker = "dev", expression = "frustrated", text = "Real-time collab needs CRDTs, a sync server, presence, conflict UI, a backend rewrite. We have none of those." },
        { speaker = "arch", expression = "concerned", text = "The architecture needs a message broker, a sync service, and a complete data model rethink." },

        { speaker = "pm", expression = "stressed", text = "Riley, you've been quiet. Thoughts?" },
        { speaker = "qa", expression = "deadpan", text = "(Quiet? I've been running a test matrix simulation in my head for five minutes. That's not quiet. That's computing.)" },

        { speaker = "qa", expression = "neutral", text = "(Three honest answers. None of them feel safe.)",
            choices = {
                { text = "Sure, add it. I'll add 200 test cases to the matrix. We'll find out together how it breaks.", set = {absorbed_scope = true}, rel = {po = 1, dev = -1, pm = 1} },
                { text = "Block it. Real-time collab will introduce 50 race conditions and we have eight days.", set = {fought_scope = true}, rel = {dev = 2, arch = 2, po = -2} },
                { text = "Comments only. Async. Three test cases instead of two hundred. Same vibe.", set = {compromised_scope = true}, rel = {dev = 1, arch = 1, pm = 2, po = 0} },
            }
        },

        -- ABSORBED PATH
        { speaker = "qa", expression = "deadpan", text = "Fine. Add it. I'll expand the test matrix. 200 new cases. Concurrent editing, conflict resolution, presence, network failures.", condition = "absorbed_scope" },
        { speaker = "po", expression = "excited", text = "Yes! That's the spirit!", condition = "absorbed_scope" },
        { speaker = "qa", expression = "deadpan", text = "(That's not spirit. That's surrender dressed in a QA spreadsheet.)", condition = "absorbed_scope" },
        { speaker = "qa", expression = "deadpan", text = "For the record: I will find every bug in this feature. All 23 of them. And they will all be variations of 'two users edited at the same time and one lost their work.'", condition = "absorbed_scope" },
        { speaker = "dev", expression = "tired", text = "Only 23? Optimistic.", condition = "absorbed_scope" },
        { speaker = "qa", expression = "deadpan", text = "(23 is the floor. The ceiling is whatever Sam's caffeine tolerance allows.)", condition = "absorbed_scope" },

        -- FOUGHT PATH
        { speaker = "qa", expression = "deadpan", text = "No. Real-time collab introduces a minimum of 50 race conditions in week one. We have eight days to demo. The math is against us.", condition = "fought_scope" },
        { speaker = "po", expression = "defensive", text = "But--", condition = "fought_scope" },
        { speaker = "qa", expression = "deadpan", text = "Priya. I will tell you the bugs in advance. There will be 23. Minimum. They will all be variations of 'two users edited at the same time and one of them lost their work.'", condition = "fought_scope" },
        { speaker = "qa", expression = "deadpan", text = "I know this because I have tested this pattern before. Three times. At three companies. It always breaks the same way. Humans are predictable. Distributed systems are not.", condition = "fought_scope" },
        { speaker = "dev", expression = "smiling", text = "Riley wins.", condition = "fought_scope" },
        { speaker = "pm", expression = "neutral", text = "Priya, let's revisit after the demo. The data supports waiting.", condition = "fought_scope" },

        -- COMPROMISED PATH
        { speaker = "qa", expression = "neutral", text = "Counter-proposal. Comments. Async. Threaded. No real-time sync. Three test cases instead of 200. Same story for the deck. One percent of the regression cost.", condition = "compromised_scope" },
        { speaker = "arch", expression = "neutral", text = "Comments are reasonable. Infrastructure is manageable.", condition = "compromised_scope" },
        { speaker = "dev", expression = "neutral", text = "I can build a comment system. Ships by Friday.", condition = "compromised_scope" },
        { speaker = "po", expression = "neutral", text = "Can we at least add emoji reactions?", condition = "compromised_scope" },
        { speaker = "qa", expression = "smirk", text = "Six test cases. Emoji input validation. Emoji rendering across browsers. Emoji on mobile. Duplicate reaction handling. Reaction count overflow. Reaction deletion.", condition = "compromised_scope" },
        { speaker = "dev", expression = "neutral", text = "...reaction count overflow?", condition = "compromised_scope" },
        { speaker = "qa", expression = "deadpan", text = "What happens when 10,000 people react to the same comment? Someone will try it. I will be that someone.", condition = "compromised_scope" },

        -- End of standup
        { speaker = "pm", expression = "neutral", text = "And that's time! That was only... 45 minutes." },
        { speaker = "qa", expression = "deadpan", text = "(Standup duration tracker. Day 2: 38 minutes. Day 5: 42 minutes. Variance from promise: 180 percent. Trending upward. At this rate, sprint three standup will be a full hour.)" },

        { text = "..." },

        -- POST-MEETING: PROCESSING ALONE
        { bg = "break_room" },

        { speaker = "qa", expression = "neutral", text = "I go to the break room. Open my laptop. Pull up the test matrix spreadsheet." },
        { speaker = "qa", expression = "deadpan", text = "47 test cases as of Friday. Whatever we decided in there, the number is going up. The only question is how much." },
        { speaker = "qa", expression = "neutral", text = "Every new feature is new surface area. New surface area means new edge cases. New edge cases mean new bugs. New bugs mean new arguments about whether they're 'really' bugs or 'expected behavior.'" },
        { speaker = "qa", expression = "deadpan", text = "(The lifecycle of a bug: QA finds it. Dev says 'that's by design.' PO says 'users won't do that.' QA proves they will. Dev fixes it. PO takes credit for the improvement.)" },
        { speaker = "qa", expression = "neutral", text = "I think about Priya's face when I listed the test cases. She wasn't listening. She was waiting for me to finish so she could talk about the vision again." },
        { speaker = "qa", expression = "deadpan", text = "(Nobody reads the test plan. Nobody ever reads the test plan. They read the bug report after the demo crashes.)" },

        { speaker = "qa", expression = "neutral", text = "(I close the spreadsheet. Open it again. Close it again. The loop is the processing.)",
            choices = {
                { text = "This is unsustainable. Every new feature adds test surface I can't cover in eight days.", set = {scope_angry = true}, rel = {dev = 1, arch = 1, po = -1} },
                { text = "It is what it is. Scope grows. Test plans grow. That's the job.", set = {scope_resigned = true}, rel = {pm = 1} },
                { text = "We can make it work. If the scope stays bounded, I can cover it. Barely.", set = {scope_hopeful = true}, rel = {pm = 1, dev = 1} },
            }
        },

        { speaker = "qa", expression = "frustrated", text = "This is unsustainable. If the test surface keeps growing at this rate, I'll be writing test cases faster than Sam writes code. And the coverage will still be incomplete.", condition = "scope_angry" },
        { speaker = "qa", expression = "deadpan", text = "(I need to talk to Jordan about test capacity. Before the next scope bomb turns my matrix into a novel.)", condition = "scope_angry" },

        { speaker = "qa", expression = "neutral", text = "It is what it is. Scope grows. Features multiply. The test plan adapts. That's the lifecycle.", condition = "scope_resigned" },
        { speaker = "qa", expression = "deadpan", text = "(I update the spreadsheet. Add a column: 'Sprint 2 Additions.' Leave it empty for now. It won't stay empty long.)", condition = "scope_resigned" },

        { speaker = "qa", expression = "neutral", text = "We can make it work. If they stick to comments instead of full collab, the test surface is manageable. Barely. But manageable.", condition = "scope_hopeful" },
        { speaker = "qa", expression = "neutral", text = "(The team pushed back together today. That's a good sign. A team that argues about scope is a team that cares about quality.)", condition = "scope_hopeful" },

        { speaker = "qa", expression = "neutral", text = "I save the spreadsheet. Close the laptop. Get a coffee." },
        { speaker = "qa", expression = "deadpan", text = "(Scope creep. The QA engineer's natural predator. Every feature someone adds is a test I have to write, a bug I have to find, and an argument I have to win. The test plan never gets smaller. Only the deadline does.)" },

        { text = "", goto = "day6" }
    }
}
