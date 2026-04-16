return {
    title = "Day 10 -- Wednesday",
    subtitle = "The Long Night",
    narration = "Final demo Friday. The architecture is bending under load. You can fix it. You can refactor it. You can run away from it. Pick.",

    bg = "office_evening",
    bgm = "late_night",

    dialogue = {
        { speaker = "arch", expression = "concerned", text = "Wednesday evening. Final demo Friday. The architecture is bending. I drew it on the whiteboard. The whiteboard is also bending." },
        { speaker = "pm", expression = "stressed", text = "Status: behind on five of seven deliverables." },
        { speaker = "dev", expression = "tired", text = "I've been coding 11 hours. Feed works. Search is held together with hope." },
        { speaker = "qa", expression = "deadpan", text = "The system collapses at three concurrent connections. That is not load. That is a meeting." },
        { speaker = "arch", expression = "whiteboarding", text = "That's the caching layer. I told you. I drew the diagram. The diagram had three colors." },
        { speaker = "dev", expression = "frustrated", text = "Casey, 36 hours left. We are not revisiting the caching layer." },
        { speaker = "arch", expression = "concerned", text = "(He is right. I was right. Both of those things can be true. The architecture does not care which.)" },

        { speaker = "pm", expression = "stressed", text = "Real talk. Are we crunching tonight?" },

        { speaker = "arch", expression = "neutral", text = "(Three options. Each one is a different architectural strategy applied to a sleep schedule.)",
            choices = {
                { text = "Stay all night. Refactor the cache layer. Ship the right thing. Sleep is a future-Casey problem.", set = {pulled_allnighter = true}, rel = {pm = 1, dev = 0} },
                { text = "Boundary at midnight. Refactoring tired produces the worst kind of architecture. I'll be back at 6 AM with a clear head.", set = {set_boundaries = true}, rel = {dev = 2, qa = 2, ux = 1} },
                { text = "Triage. I patch the worst bottleneck tonight. The rest goes in the architectural debt log. We document it.", set = {rallied_team = true}, rel = {dev = 2, qa = 1, arch = 1, pm = 1} },
            }
        },

        -- All-nighter
        { speaker = "arch", expression = "whiteboarding", text = "I'm staying. The cache layer gets the rewrite it needed three days ago. By morning it will be a different system.", condition = "pulled_allnighter" },
        { speaker = "qa", expression = "neutral", text = "Casey. The architecture you write at 3 AM is the architecture you will be apologizing for at the next retro.", condition = "pulled_allnighter" },
        { speaker = "arch", expression = "concerned", text = "(She is right. I will do it anyway.)", condition = "pulled_allnighter" },
        { speaker = "arch", expression = "whiteboarding", text = "I pour a third cup of coffee. The whiteboard is full. I take a photo and erase it. Start over.", condition = "pulled_allnighter" },

        -- Boundaries
        { speaker = "arch", expression = "neutral", text = "Hard cutoff at midnight. Architecture written tired is architecture I rewrite next sprint. I'll be back at 6 AM with a clear head.", condition = "set_boundaries" },
        { speaker = "dev", expression = "tired", text = "Smart. Wish I could.", condition = "set_boundaries" },
        { speaker = "arch", expression = "neutral", text = "(I will start modeling boundaries. The team copies whoever leaves first.)", condition = "set_boundaries" },
        { speaker = "arch", expression = "neutral", text = "I pack my bag at 11:58. Two minutes early. Boundaries are specifications. You don't round up.", condition = "set_boundaries" },

        -- Triage
        { speaker = "arch", expression = "neutral", text = "Triage. I patch the worst bottleneck tonight. The rest goes in the architectural debt log. Documented. Tracked. Revisited.", condition = "rallied_team" },
        { speaker = "dev", expression = "smiling", text = "Architectural debt log. Casey, I have wanted this since week one.", condition = "rallied_team" },
        { speaker = "arch", expression = "neutral", text = "(Pragmatism is not a betrayal of architecture. It is the only way architecture survives a deadline.)", condition = "rallied_team" },
        { speaker = "arch", expression = "neutral", text = "I open a new document. 'Architectural Debt Register.' 14 items in 20 minutes. Each one with a severity, a workaround, and a proper fix.", condition = "rallied_team" },

        -- Time-stamp: The infrastructure alert
        { text = "-- 9:30 PM --" },

        { speaker = "arch", expression = "neutral", text = "(I open the architecture decision records. 27 entries. Each one a choice. Each choice a trade-off. I read them in order, like a diary written by a system instead of a person.)" },
        { speaker = "arch", expression = "concerned", text = "(ADR-003: 'Chose monolithic deployment for speed.' That was week one. I wrote 'revisit after MVP.' We never revisited. The monolith is still here. It is not going anywhere.)" },
        { speaker = "arch", expression = "neutral", text = "(ADR-011: 'Deferred search indexing.' That was week two. Sam built a brute-force search. I drew a diagram for ElasticSearch. The diagram is still on the whiteboard. The brute-force search is in production.)" },
        { speaker = "arch", expression = "concerned", text = "(The gap between the architecture I designed and the architecture that exists. That gap is where the bugs live.)" },
        { speaker = "arch", expression = "neutral", text = "(I write ADR-028: 'Emergency async patch for connection pool.' Reason: synchronous database call from day three. Lesson: there is no such thing as 'we'll fix it later.' There is only 'we'll fix it at 10 PM three weeks from now.')" },

        { text = "-- 10:15 PM --" },

        { speaker = "arch", expression = "concerned", text = "PagerDuty. The staging server just threw a memory allocation error." },
        { speaker = "arch", expression = "concerned", text = "(The thing I designed is breaking under load. The load is three users. Three. I built this for a hundred.)" },
        { speaker = "arch", expression = "whiteboarding", text = "I pull up the logs. The connection pool is exhausted. Requests are queueing behind a synchronous call I wrote on day three." },
        { speaker = "arch", expression = "concerned", text = "(Day three. I wrote a synchronous database call because 'we'll fix it later.' It is now later.)" },
        { speaker = "arch", expression = "whiteboarding", text = "The fix is simple. Make it async. Add a connection pool timeout. 40 lines of code." },
        { speaker = "arch", expression = "concerned", text = "(The fix is simple NOW. The prevention was simple THEN. The gap between those two is called experience.)" },

        { text = "-- 11:30 PM --" },

        { speaker = "arch", expression = "whiteboarding", text = "The async patch is in. I run the load test. Five concurrent users. No crash. Ten users. Slower, but stable." },
        { speaker = "arch", expression = "neutral", text = "(It holds. It is not beautiful. It is not the architecture I drew on day one. But it holds.)" },
        { speaker = "dev", expression = "tired", text = "Casey. The staging server is responding again. What did you do?", condition = "pulled_allnighter" },
        { speaker = "arch", expression = "neutral", text = "Made a synchronous call asynchronous. 40 lines.", condition = "pulled_allnighter" },
        { speaker = "dev", expression = "tired", text = "40 lines. Three days of crashes. Architecture.", condition = "pulled_allnighter" },

        { text = "-- 12:45 AM --" },

        { speaker = "arch", expression = "concerned", text = "A second alert. The search index is consuming 4 GB of memory. It should be using 500 MB." },
        { speaker = "arch", expression = "whiteboarding", text = "(The search index is not indexed. It is doing a full table scan on every query. Sam wrote this. I should have reviewed it.)" },
        { speaker = "arch", expression = "neutral", text = "I add the index. Deploy. Memory drops to 600 MB. Close enough." },
        { speaker = "arch", expression = "concerned", text = "(I should have caught this in code review. I was too busy drawing diagrams to read the code underneath them.)" },

        { text = "-- 1:00 AM --" },

        { speaker = "arch", expression = "concerned", text = "(I run the full load test. Not the demo load test. The real one. Fifty concurrent users. The system I designed for a hundred.)" },
        { speaker = "arch", expression = "whiteboarding", text = "(Fifty users: response time 340ms. Acceptable. Memory: 1.2 GB. Acceptable. CPU: 73%. Concerning. The content rendering service is the bottleneck. That is Sam's code on my architecture. Both of us own this.)" },
        { speaker = "arch", expression = "concerned", text = "(I add a rate limiter. Not because fifty users is realistic for a demo. Because the VP might say 'show me scale' and I want to have an answer that is not a diagram.)" },
        { speaker = "arch", expression = "neutral", text = "(Riley messages: 'The load test passed at fifty users. Nice.' Riley noticed. Riley tests things I thought nobody would test. That is why Riley is indispensable.)" },
        { speaker = "arch", expression = "concerned", text = "(The staging server hums. The architecture holds. Not elegantly. Not like the whiteboard drawing. But it holds. Holding is enough tonight.)", condition = "rallied_team" },

        -- Interpersonal moment
        { speaker = "arch", expression = "neutral", text = "Sam messages at 1 AM. 'Thanks for the index fix. I should have caught that.'", condition = "paired_with_dev" },
        { speaker = "arch", expression = "neutral", text = "I reply: 'I should have reviewed it. We both missed it. The system did not.'", condition = "paired_with_dev" },
        { speaker = "arch", expression = "neutral", text = "(Working closely with Sam has taught me something. Architecture is not a solo discipline. It is a conversation.)", condition = "paired_with_dev" },

        { speaker = "arch", expression = "neutral", text = "Sam messages at 1 AM. 'Thanks for the staging fix.'", condition = {paired_with_dev = nil} },
        { speaker = "arch", expression = "neutral", text = "I reply: 'The architecture owed the team a fix. Consider it paid.'", condition = {paired_with_dev = nil} },

        -- Choice 2: personal/emotional
        { speaker = "arch", expression = "concerned", text = "(It is 1:30 AM. The alerts are quiet. The patches are deployed. I am sitting in a dark office staring at a system diagram.)" },
        { speaker = "arch", expression = "concerned", text = "(The diagram is wrong. The system is running. These two facts will coexist until the retro.)" },
        { speaker = "arch", expression = "neutral", text = "(What do I do with this quiet?)",
            choices = {
                { text = "Message the team channel: 'Staging is stable. Infra patches deployed. Get some rest.' Connect.", set = {crunch_bonded = true}, rel = {dev = 1, qa = 1, pm = 1} },
                { text = "Redraw the system diagram. Alone. The diagram is the only honest conversation I can have right now.", set = {crunch_isolated = true}, rel = {arch = 1} },
            }
        },

        { speaker = "arch", expression = "neutral", text = "I send the message. It is factual. It is also the closest I come to saying 'I care about this team.'", condition = "crunch_bonded" },
        { speaker = "qa", expression = "deadpan", text = "Thanks, Casey. The staging fix alone saved me two hours of retesting.", condition = "crunch_bonded" },
        { speaker = "arch", expression = "neutral", text = "(Riley acknowledged the fix. That is more human connection than I have had in three days of architecture.)", condition = "crunch_bonded" },

        { speaker = "arch", expression = "whiteboarding", text = "I redraw the diagram. Version 14. The lines are cleaner. The dependencies are honest.", condition = "crunch_isolated" },
        { speaker = "arch", expression = "neutral", text = "(The team will see this tomorrow. They will not know I drew it at 2 AM. The diagram does not need them to know.)", condition = "crunch_isolated" },
        { speaker = "arch", expression = "concerned", text = "(Architecture is a lonely discipline. The system talks to me. I talk to the system. Everyone else talks to each other.)", condition = "crunch_isolated" },

        -- End
        { speaker = "arch", expression = "concerned", text = "(The crunch. Every project has one. The architect is supposed to prevent it. I did not.)" },
        { speaker = "arch", expression = "concerned", text = "(I leave the office at 2:10 AM. The parking lot is empty except for Sam's car. The architecture holds. For now.)" },

        { text = "", goto = "day11" }
    }
}
