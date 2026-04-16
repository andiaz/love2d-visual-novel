return {
    title = "Day 5 -- Monday",
    subtitle = "The Scope Creep",
    narration = "New week. Sprint two. And Priya had a thought over the weekend...",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- PRE-STANDUP
        { speaker = "dev", expression = "tired", text = "Monday. Sprint two begins. I had a productive weekend. Built a personal project. Wrote clean code. Felt like a real engineer for two days." },
        { speaker = "dev", expression = "neutral", text = "Then I opened Slack." },
        { speaker = "dev", expression = "frustrated", text = "Priya. 11:47 PM. Sunday. '#chimera: Had a thought! What if we added--'" },
        { speaker = "dev", expression = "frustrated", text = "(I didn't read the rest. I didn't need to. 'Had a thought' from Priya at 11:47 PM on a Sunday is the engineering equivalent of a tornado siren.)" },
        { speaker = "dev", expression = "tired", text = "I scroll down. The full message: real-time collaboration. Like Google Docs. Inside the knowledge base." },
        { speaker = "dev", expression = "frustrated", text = "(My weekend died. I felt it happen. The clean code, the personal project, the feeling of competence. Gone. Replaced by the words 'real-time collaboration.')" },
        { speaker = "dev", expression = "neutral", text = "I know exactly what real-time collaboration means. It means CRDTs. Conflict resolution. Operational transforms. A sync server. Presence. WebSockets." },
        { speaker = "dev", expression = "frustrated", text = "(It means six months of work disguised as a Slack message with an exclamation point.)" },
        { speaker = "dev", expression = "tired", text = "I close Slack. Open the codebase. Stare at the clean architecture from last week. Enjoy it. Because it's about to get wrecked." },

        { text = "..." },

        -- THE STANDUP
        { bg = "meeting_room" },

        { speaker = "pm", expression = "cheerful", text = "Sprint two kickoff! Quick updates, 15 minutes tops." },
        { speaker = "dev", expression = "neutral", text = "(It won't be 15 minutes. It wasn't 15 minutes last time. It was 38. Jordan promises 15 the way airlines promise on-time departures.)" },

        { speaker = "po", expression = "excited", text = "So... I had an idea over the weekend." },
        { speaker = "dev", expression = "frustrated", text = "(There it is. Right on schedule.)" },
        { speaker = "po", expression = "excited", text = "What if multiple people could work in the knowledge base at the same time? Live collaboration!" },
        { speaker = "dev", expression = "frustrated", text = "(The room goes quiet. The kind of quiet where everyone is calculating how much work just landed on their plate.)" },
        { speaker = "arch", expression = "concerned", text = "Real-time collaboration is an entire product. Operational transforms, conflict resolution--" },
        { speaker = "po", expression = "defensive", text = "Can we just add it? It can't be that hard, right?" },
        { speaker = "dev", expression = "frustrated", text = "'Can we just.' Three words that have launched a thousand rewrites." },

        { speaker = "dev", expression = "frustrated", text = "Priya, I'm going to be very specific. Very, very specific." },
        { speaker = "dev", expression = "frustrated", text = "Real-time collaboration needs a CRDT library. That's Conflict-free Replicated Data Types. It's a data structure that lets multiple people edit the same document without a central server resolving conflicts." },
        { speaker = "dev", expression = "frustrated", text = "On top of the CRDT, you need a sync server. Something that coordinates the state between clients. WebSockets, at minimum. Probably a custom protocol." },
        { speaker = "dev", expression = "frustrated", text = "Then you need presence. Who's online. Where their cursor is. What they're selecting. That's its own real-time stream." },
        { speaker = "dev", expression = "frustrated", text = "Then you need conflict UI. What happens when two people edit the same paragraph? The same sentence? The same word? That's a design problem AND an engineering problem." },
        { speaker = "dev", expression = "frustrated", text = "Then you need a backend that supports any of this. We don't have one. We have a REST API that returns JSON. That's it." },
        { speaker = "po", expression = "defensive", text = "Surely there's a library?" },
        { speaker = "dev", expression = "frustrated", text = "There are libraries for the CRDT part. Yjs. Automerge. They're good. They solve maybe 20 percent of the problem. Everything else is custom. For us. To build. In four weeks." },
        { speaker = "dev", expression = "frustrated", text = "There is no 'just.' There is no 'can we just add it.' That sentence is a lie disguised as a question." },
        { speaker = "arch", expression = "concerned", text = "Sam is right. The architecture would need a message broker, a sync service, and a complete rethink of the data model." },
        { speaker = "qa", expression = "deadpan", text = "And my test matrix just doubled. Concurrent editing. Race conditions. Network partition scenarios." },

        -- Jordan mediates
        { speaker = "pm", expression = "stressed", text = "Okay. Everyone breathe. Sam, I hear you. Priya, is this a must-have for the demo?" },
        { speaker = "po", expression = "neutral", text = "Leadership mentioned 'collaboration' last week. I just want to make sure we're covered." },
        { speaker = "dev", expression = "frustrated", text = "(Leadership mentioned a word. Priya built a cathedral around it.)" },
        { speaker = "pm", expression = "stressed", text = "Sam, can we mock it for the demo?" },

        { speaker = "dev", expression = "neutral", text = "(There it is. The decision. Mock it and lie, or fight it and be right but difficult.)",
            choices = {
                { text = "Sure. I'll fake it. We'll deal with the truth later.", set = {absorbed_scope = true}, rel = {po = 2, pm = 1, arch = -1} },
                { text = "No. Absolutely not. I'm not building a fake feature on top of real ones.", set = {fought_scope = true}, rel = {po = -2, arch = 2, qa = 1, pm = -1} },
                { text = "How about a comment system? Real, simple, ships in days, not weeks.", set = {compromised_scope = true}, rel = {po = 1, arch = 1, pm = 2, ux = 1} },
            }
        },

        -- ABSORBED PATH
        { speaker = "dev", expression = "tired", text = "Sure. I'll fake it. Canned animations. Pre-recorded cursor movements. It'll look real enough for a five-minute demo.", condition = "absorbed_scope" },
        { speaker = "po", expression = "excited", text = "Amazing! I knew you'd figure it out!", condition = "absorbed_scope" },
        { speaker = "dev", expression = "tired", text = "(I just signed up to write a fake real-time engine. With CSS animations and setTimeout calls pretending to be WebSockets.)", condition = "absorbed_scope" },
        { speaker = "arch", expression = "concerned", text = "Sam. A mock is a promise. The demo creates expectations. What happens when leadership says 'ship it'?", condition = "absorbed_scope" },
        { speaker = "dev", expression = "tired", text = "(Casey's right. I just kicked the can to a version of me that's more tired and has less time. That guy is going to hate current me.)", condition = "absorbed_scope" },
        { speaker = "dev", expression = "tired", text = "(I will not survive this sprint.)", condition = "absorbed_scope" },

        -- FOUGHT PATH
        { speaker = "dev", expression = "frustrated", text = "No. Absolutely not. I will not build a fake feature on top of half-built real features.", condition = "fought_scope" },
        { speaker = "po", expression = "defensive", text = "But leadership--", condition = "fought_scope" },
        { speaker = "dev", expression = "frustrated", text = "Leadership wants a demo that works. Not a demo that looks like it works until someone breathes on it.", condition = "fought_scope" },
        { speaker = "arch", expression = "neutral", text = "Sam's right. The cost-benefit doesn't pencil out. A mock creates expectations we can't fulfill.", condition = "fought_scope" },
        { speaker = "pm", expression = "neutral", text = "Priya, let's revisit after the demo. Deal?", condition = "fought_scope" },
        { speaker = "dev", expression = "neutral", text = "(I'm the difficult one again. Fine. I'd rather be difficult and honest than agreeable and drowning.)", condition = "fought_scope" },

        -- COMPROMISED PATH
        { speaker = "dev", expression = "neutral", text = "Counter-proposal. Comments. Threaded comments. Real feature, real backend, ships by Friday.", condition = "compromised_scope" },
        { speaker = "arch", expression = "neutral", text = "Comments are reasonable. The infrastructure is manageable. REST endpoint, database table, basic notifications.", condition = "compromised_scope" },
        { speaker = "dev", expression = "neutral", text = "Threaded comments, basic notifications, ships by Friday. That's the deal. No scope expansion. No emoji reactions on day one.", condition = "compromised_scope" },
        { speaker = "po", expression = "neutral", text = "I guess comments are a start... Can we at least add emoji reactions?", condition = "compromised_scope" },
        { speaker = "dev", expression = "smiling", text = "Sure. Emoji reactions. The cornerstone of enterprise software.", condition = "compromised_scope" },
        { speaker = "dev", expression = "neutral", text = "(Comments I can build. Comments are honest work. CRDTs at 2 AM is how engineers develop trust issues.)", condition = "compromised_scope" },

        -- End of standup
        { speaker = "pm", expression = "neutral", text = "Great standup everyone! That was only... 43 minutes." },
        { speaker = "dev", expression = "tired", text = "(38 last time. 43 now. At this rate, by sprint three standup will be a full afternoon.)" },

        { text = "..." },

        -- POST-MEETING: PROCESSING ALONE
        { bg = "break_room" },

        { speaker = "dev", expression = "tired", text = "I go to the break room. Not for coffee. For silence." },
        { speaker = "dev", expression = "neutral", text = "I pull up my terminal on my laptop. The codebase is still clean. The architecture still makes sense. For now." },
        { speaker = "dev", expression = "frustrated", text = "(Scope creep is not a management problem. It's a physics problem. You can't add mass to a system without changing its velocity.)" },
        { speaker = "dev", expression = "neutral", text = "Priya sees features. I see load-bearing walls. She sees 'just add it.' I see dependency chains, migration scripts, and three AM debugging sessions." },
        { speaker = "dev", expression = "tired", text = "(The gap between what a PO imagines and what an engineer builds is measured in mass.)" },
        { speaker = "dev", expression = "neutral", text = "I think about the sprint. The real work. The work that was already scoped and estimated and agreed upon." },
        { speaker = "dev", expression = "frustrated", text = "(That work is now competing with a ghost feature that may or may not exist by Friday.)" },

        { speaker = "dev", expression = "neutral", text = "(I stare at the vending machine. It's out of everything except pretzels. Even the vending machine is running a reduced scope.)",
            choices = {
                { text = "This is unsustainable. Every sprint can't start with a surprise feature.", set = {scope_angry = true}, rel = {arch = 1, qa = 1, po = -1} },
                { text = "It is what it is. This is how the industry works. You absorb, you ship, you repeat.", set = {scope_resigned = true}, rel = {pm = 1} },
                { text = "We can make it work. The team is good. Casey thinks ahead. We'll find a path.", set = {scope_hopeful = true}, rel = {arch = 1, pm = 1} },
            }
        },

        { speaker = "dev", expression = "frustrated", text = "This is unsustainable. If Monday standups become feature announcement ceremonies, we'll never ship anything real.", condition = "scope_angry" },
        { speaker = "dev", expression = "frustrated", text = "(I need to talk to Casey. Build a wall. Technical constraints that even Priya can't 'just' around.)", condition = "scope_angry" },

        { speaker = "dev", expression = "tired", text = "It is what it is. Every job has a Priya. Every sprint has a scope moment. You learn to absorb the shock.", condition = "scope_resigned" },
        { speaker = "dev", expression = "neutral", text = "(The code doesn't care about feelings. It cares about whether I ship or I don't.)", condition = "scope_resigned" },

        { speaker = "dev", expression = "neutral", text = "We can make it work. Casey sees the architecture. Riley catches the gaps. Alex keeps the design honest.", condition = "scope_hopeful" },
        { speaker = "dev", expression = "neutral", text = "(If the team holds, scope creep is a speed bump. If it fractures, it's a wall.)", condition = "scope_hopeful" },

        { speaker = "dev", expression = "neutral", text = "I close the laptop. Grab the pretzels. Head back to my desk." },
        { speaker = "dev", expression = "tired", text = "(Scope creep. The disease that kills sprints faster than the deadline. The only cure is saying no. And nobody likes the person who says no.)" },

        { text = "", goto = "day6" }
    }
}
