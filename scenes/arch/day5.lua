return {
    title = "Day 5 -- Monday",
    subtitle = "The Scope Creep",
    narration = "Monday. Sprint two. Priya had a thought over the weekend. The thought is real-time collaboration. The thought is going to require a message broker.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- PRE-STANDUP
        { speaker = "arch", expression = "concerned", text = "Monday. Sprint two. The architecture is starting to feel coherent. The data model is clean. The layers are separated. It's the kind of codebase that makes you want to draw a diagram." },
        { speaker = "arch", expression = "neutral", text = "I did draw a diagram. Friday night. It's on my whiteboard at home. Three layers, clear boundaries, sensible data flow. I took a photo of it." },
        { speaker = "arch", expression = "concerned", text = "Then I opened Slack. Priya. 11:47 PM. Sunday. 'Had a thought! What if we added real-time collaboration?'" },
        { speaker = "arch", expression = "concerned", text = "(I stared at the message for thirty seconds. Then I looked at the photo of my diagram. Then I looked at the message again.)" },
        { speaker = "arch", expression = "concerned", text = "(Real-time collaboration. That's not a feature. That's an architecture. CRDTs or operational transforms. A sync server. A message broker. WebSocket connections. Presence management. Conflict resolution at every layer.)" },
        { speaker = "arch", expression = "neutral", text = "I started sketching what the architecture would look like with real-time collab. On the back of the photo printout, because irony is free." },
        { speaker = "arch", expression = "concerned", text = "(The clean three-layer diagram became a nine-box monstrosity with arrows pointing in directions that make physicists nervous.)" },
        { speaker = "arch", expression = "neutral", text = "I have a presentation ready. A side-by-side. 'Architecture without collab' versus 'Architecture with collab.' Clean versus chaos. I'll show it in standup." },
        { speaker = "arch", expression = "concerned", text = "(Nobody will look at it. They never look at the diagram. They nod, they say 'makes sense,' and then they build whatever they were going to build anyway.)" },

        { text = "..." },

        -- THE STANDUP
        { bg = "meeting_room" },

        { speaker = "pm", expression = "cheerful", text = "Monday standup! We'll keep it tight this time." },
        { speaker = "dev", expression = "neutral", text = "(It won't be 15 minutes.)" },
        { speaker = "arch", expression = "concerned", text = "(Jordan promised 15 last time. It was 38. I've started tracking the deviation as a metric. It correlates with scope changes.)" },

        { speaker = "po", expression = "excited", text = "Okay, so, hear me out -- I was thinking over the weekend..." },
        { speaker = "arch", expression = "concerned", text = "(There it is. I felt it coming on Friday. The architecture was too stable. Stability invites disruption.)" },
        { speaker = "po", expression = "excited", text = "OK hear me out -- real-time co-editing in Chimera. Think Google Docs meets knowledge management!" },
        { speaker = "arch", expression = "concerned", text = "Real-time collaboration is an entire product. Operational transforms. CRDTs. Conflict resolution. Presence. A sync server. A message broker." },
        { speaker = "po", expression = "defensive", text = "Can't we just bolt it on? How much extra work could it be?" },
        { speaker = "arch", expression = "concerned", text = "Priya. It is, technically, the hardest distributed systems problem in modern web development. Google spent years on it. There are PhDs written about the edge cases. There are libraries that took a decade to ship." },
        { speaker = "dev", expression = "frustrated", text = "'Bolt it on.' As if distributed systems are Lego bricks." },

        -- Casey's diagram moment
        { speaker = "arch", expression = "whiteboarding", text = "I prepared something. Can I share my screen for thirty seconds?" },
        { speaker = "pm", expression = "stressed", text = "Go ahead, Casey." },
        { speaker = "arch", expression = "whiteboarding", text = "This is our current architecture. Three layers. Clean boundaries. Manageable complexity. This is what we agreed to build." },
        { speaker = "arch", expression = "whiteboarding", text = "And this is the architecture with real-time collaboration. Nine services. A message broker. A sync server. WebSocket infrastructure. Presence management. Conflict resolution at the data layer, the API layer, and the UI layer." },
        { speaker = "arch", expression = "whiteboarding", text = "The first diagram ships in six weeks. The second diagram ships in six months. Those are not opinions. Those are load-bearing constraints." },
        { speaker = "po", expression = "defensive", text = "Can we simplify the second one? Do we really need all those boxes?" },
        { speaker = "arch", expression = "concerned", text = "(She's asking if we need the boxes. The boxes are the feature. The boxes ARE the collaboration. Without the boxes there is no real-time anything.)" },
        { speaker = "arch", expression = "concerned", text = "Every box is a service that has to exist for real-time collaboration to work. Remove any box and the feature doesn't function. That's not complexity for its own sake. That's the minimum viable architecture." },
        { speaker = "dev", expression = "frustrated", text = "What Casey said. With fewer words: it's a lot." },
        { speaker = "qa", expression = "deadpan", text = "And every box is a new failure mode I have to test." },

        -- The team looks at Casey's diagram. Then they look away.
        { speaker = "arch", expression = "concerned", text = "(They looked at the diagram for four seconds. I counted. Four seconds for a diagram I spent two hours on. That's the architect's life.)" },

        { speaker = "pm", expression = "stressed", text = "Casey, you're the architect. Tell me the truth. Can we mock it for the demo?" },

        { speaker = "arch", expression = "neutral", text = "(The truth depends on what kind of architect I want to be in this room. Three answers. Each one is a different kind of cost.)",
            choices = {
                { text = "Build it real. I'll pick a CRDT library and a message broker. Pretend the architecture isn't being warped.", set = {absorbed_scope = true}, rel = {po = 1, dev = -2, qa = -1} },
                { text = "Block it. The architecture is for the project we're building, not the project Priya pitched on Saturday.", set = {fought_scope = true}, rel = {dev = 2, qa = 1, po = -2} },
                { text = "Reframe it. Async comments. Same story, simpler infrastructure. The architecture survives.", set = {compromised_scope = true}, rel = {dev = 2, pm = 2, ux = 1, po = 1} },
            }
        },

        -- ABSORBED PATH
        { speaker = "arch", expression = "whiteboarding", text = "I'll pick a CRDT library. Yjs, probably. Add a sync service. Add a message broker. Redis for presence. The architecture diagram now has six new boxes.", condition = "absorbed_scope" },
        { speaker = "dev", expression = "frustrated", text = "Casey. We have eight days.", condition = "absorbed_scope" },
        { speaker = "arch", expression = "concerned", text = "(I just signed us up to build something I have wanted to build for three years. The distributed systems problem I've been reading papers about since grad school. At the worst possible time.)", condition = "absorbed_scope" },
        { speaker = "arch", expression = "concerned", text = "(The architecture will be beautiful. And nobody will see it. They'll see the UI. They always see the UI.)", condition = "absorbed_scope" },
        { speaker = "qa", expression = "deadpan", text = "Six new boxes. Six new failure modes. My test plan just became a thesis.", condition = "absorbed_scope" },
        { speaker = "arch", expression = "concerned", text = "(I chose elegance over pragmatism. The architect's vice.)", condition = "absorbed_scope" },

        -- FOUGHT PATH
        { speaker = "arch", expression = "concerned", text = "Priya. No. The architecture is for the project we're shipping. Not the project you pitched on Saturday night at 11:47 PM.", condition = "fought_scope" },
        { speaker = "po", expression = "defensive", text = "But--", condition = "fought_scope" },
        { speaker = "arch", expression = "neutral", text = "Look at the diagram. The first version ships. The second version doesn't. Not in eight days. Not with this team size. Not without cutting core features.", condition = "fought_scope" },
        { speaker = "arch", expression = "neutral", text = "Next sprint. We'll talk about it properly. With requirements. And a spike. And honest scoping. And I'll design an architecture that actually supports it.", condition = "fought_scope" },
        { speaker = "dev", expression = "smiling", text = "Casey just held the line. I am framing this moment.", condition = "fought_scope" },
        { speaker = "pm", expression = "neutral", text = "Priya, let's revisit after the demo. Casey's right on the technical constraints.", condition = "fought_scope" },

        -- COMPROMISED PATH
        { speaker = "arch", expression = "neutral", text = "Counter-proposal. Async comments. Threaded. Database-backed. No CRDTs. No sync server. No message broker. No new infrastructure.", condition = "compromised_scope" },
        { speaker = "arch", expression = "whiteboarding", text = "Look at the diagram. Comments add one box. One REST endpoint. One database table. The architecture stays clean. The three-layer model survives.", condition = "compromised_scope" },
        { speaker = "dev", expression = "smiling", text = "I can build that. That's actually a reasonable feature.", condition = "compromised_scope" },
        { speaker = "po", expression = "neutral", text = "Comments are a start... Can we at least add emoji reactions?", condition = "compromised_scope" },
        { speaker = "arch", expression = "neutral", text = "Emoji reactions are technically a comment with a single-character body and a 'reaction' type flag. The architecture is unchanged. The data model adds one enum value. Yes.", condition = "compromised_scope" },
        { speaker = "dev", expression = "smiling", text = "Casey just justified emoji reactions with database schema. Peak architect.", condition = "compromised_scope" },

        -- End of standup
        { speaker = "pm", expression = "neutral", text = "Great standup everyone! That was only... 41 minutes." },
        { speaker = "arch", expression = "concerned", text = "(41 minutes. Last time was 38. The standup duration is growing linearly. At this rate, by sprint four it will exceed the meeting room booking.)" },
        { speaker = "arch", expression = "neutral", text = "(Nobody commented on the diagram. Not once. The diagram nobody reads. The story of my career.)" },

        { text = "..." },

        -- POST-MEETING: PROCESSING ALONE
        { bg = "break_room" },

        { speaker = "arch", expression = "neutral", text = "I go to the break room. Bring my laptop. Pull up the architecture diagram." },
        { speaker = "arch", expression = "concerned", text = "The clean version is still there. Three layers. Clear arrows. The kind of diagram you'd put in a textbook." },
        { speaker = "arch", expression = "neutral", text = "I open the other version. The one with real-time collab. Nine boxes. Arrows crossing. Services depending on services depending on services." },
        { speaker = "arch", expression = "concerned", text = "(Both versions are correct. One is buildable. One is aspirational. The architect's job is knowing the difference.)" },
        { speaker = "arch", expression = "neutral", text = "I think about the standup. Four seconds. They looked at my diagram for four seconds. Casey's Law: the time spent looking at an architecture diagram is inversely proportional to how important the diagram is." },
        { speaker = "arch", expression = "concerned", text = "(Priya sees features. Sam sees code. Jordan sees timelines. Alex sees screens. Riley sees test cases. I see load-bearing walls and structural integrity. And nobody sees what I see.)" },
        { speaker = "arch", expression = "neutral", text = "(Scope creep is the architectural equivalent of adding a second story to a building designed for one. It's not impossible. It just requires a foundation that was never poured.)" },

        { speaker = "arch", expression = "neutral", text = "(I close both diagrams. Stare at the empty whiteboard in the break room.)",
            choices = {
                { text = "This is unsustainable. The architecture can't absorb a new paradigm every Monday.", set = {scope_angry = true}, rel = {dev = 1, qa = 1, po = -1} },
                { text = "It is what it is. Architectures adapt. That's what they're for.", set = {scope_resigned = true}, rel = {pm = 1} },
                { text = "We can make it work. The right constraints protect the system. We just need to hold them.", set = {scope_hopeful = true}, rel = {dev = 1, pm = 1} },
            }
        },

        { speaker = "arch", expression = "frustrated", text = "This is unsustainable. If the scope changes every sprint, the architecture becomes a patchwork. And patchwork architectures collapse.", condition = "scope_angry" },
        { speaker = "arch", expression = "concerned", text = "(I need to document the architectural constraints. Formally. Something the team can reference when the next 'thought' arrives.)", condition = "scope_angry" },

        { speaker = "arch", expression = "neutral", text = "It is what it is. Architectures are living documents. They adapt to requirements. Requirements change. That's the job.", condition = "scope_resigned" },
        { speaker = "arch", expression = "concerned", text = "(I update the diagram. Add a dotted box labeled 'Future: Collaboration Layer.' Not built. Not promised. Just acknowledged.)", condition = "scope_resigned" },

        { speaker = "arch", expression = "neutral", text = "We can make it work. The architecture has room to grow. If we hold the constraints now, we can expand later without breaking anything.", condition = "scope_hopeful" },
        { speaker = "arch", expression = "neutral", text = "(The team pushed back together. Sam backed me up. Riley brought data. That's a team that respects the system. I can work with that.)", condition = "scope_hopeful" },

        { speaker = "arch", expression = "neutral", text = "I save the diagram. Both versions. The clean one and the messy one." },
        { speaker = "arch", expression = "concerned", text = "(Scope creep is a load-bearing wall being asked to also be a window. You can have light or you can have structure. Choose carefully. Because by the time you realize the wall can't hold, the ceiling is already falling.)" },

        { text = "", goto = "day6" }
    }
}
