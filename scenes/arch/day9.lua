return {
    title = "Day 9 -- Friday",
    subtitle = "The Pivot",
    narration = "Demo day. Then Priya called an emergency meeting. The CEO's nephew. Video. Transcoding. CDN. The architecture is about to be asked to do something it cannot do.",

    bg = "office_day",
    bgm = "tension",

    dialogue = {
        { speaker = "arch", expression = "concerned", text = "Friday morning. Demo day. The architecture is, against all odds, holding. Then Jordan called the meeting." },
        { speaker = "arch", expression = "concerned", text = "(The emergency meeting calendar invite arrived at 5:12 AM. I was already awake. Architects are always awake before emergencies. We sense the load before the system reports it.)" },
        { speaker = "arch", expression = "neutral", text = "(Last night I reviewed the bug fixes Sam made. The XSS patch is solid. The debounce is implemented correctly. The null pointer handling follows the error boundary pattern from section 6.3. Sam reads the doc more than he admits.)" },

        -- Emergency meeting
        { speaker = "pm", expression = "neutral", text = "Team, emergency meeting. Priya has an update.", bg = "meeting_room" },

        { speaker = "po", expression = "excited", text = "You'll never guess who I ran into at the mixer. The CEO's nephew." },
        { speaker = "arch", expression = "concerned", text = "(The CEO's nephew. The four words I dread most in software.)" },
        { speaker = "po", expression = "excited", text = "He's 22 and had INCREDIBLE insights about what Gen Z wants from knowledge platforms." },
        { speaker = "po", expression = "excited", text = "Short-form video! TikTok for internal communications!" },
        { speaker = "dev", expression = "frustrated", text = "We're pivoting to TikTok. Based on the CEO's nephew. ON DEMO DAY." },

        -- Architecture assessment
        { speaker = "arch", expression = "concerned", text = "Video hosting. Transcoding pipeline. Adaptive bitrate streaming. CDN with global edge nodes. A recommendation algorithm. Object storage with tiered access patterns." },
        { speaker = "arch", expression = "whiteboarding", text = "Do you want me to draw--" },
        { speaker = "dev", expression = "frustrated", text = "Don't. Just don't draw anything." },

        { speaker = "po", expression = "excited", text = "Marcus said his entire friend group would use it! The CEO was nodding!" },
        { speaker = "arch", expression = "concerned", text = "(The CEO nods. The CEO nods at org charts, at budget reviews, at fire alarm tests. A nod is a social reflex, not an architectural requirement.)" },
        { speaker = "qa", expression = "deadpan", text = "One nephew. At a mixer. With alcohol. That is not a requirements gathering session." },
        { speaker = "arch", expression = "concerned", text = "(Riley is correct. But architectural decisions are made by the people who sign the budget, not the people who draw the diagrams. I know this. It does not stop me from drawing the diagrams.)" },

        { speaker = "arch", expression = "concerned", text = "(But I have to. Mentally. The architecture for video is not the architecture we have. What we have: a monolithic web app with a relational database and file-based storage.)" },
        { speaker = "arch", expression = "concerned", text = "(What video needs: a media service layer, an async job queue for transcoding, an object store for raw uploads, a CDN for delivery, a metadata database, a streaming protocol handler, and a client-side adaptive player.)" },
        { speaker = "arch", expression = "neutral", text = "(That's 14 new architectural components. None of which exist. None of which we have expertise to build. None of which fit into a two-week sprint.)" },
        { speaker = "arch", expression = "concerned", text = "(The current architecture is a bungalow. Priya is asking for a second floor. The foundation was designed for one story. Adding video means demolishing down to the foundation and rebuilding. Or it means duct tape that collapses in six months.)" },

        -- Evaluating what survives
        { speaker = "arch", expression = "neutral", text = "(But. Not all of the architecture breaks. The authentication layer survives. The user model survives. The content feed could be extended -- video is just another content type if the content model is abstract enough.)" },
        { speaker = "arch", expression = "concerned", text = "(The content model is not abstract enough. It's hardcoded for text articles. Section 2.1 of the doc recommended a polymorphic content type system. Sam built a text-only model because it was faster. It was faster. Now it's more expensive.)" },

        { speaker = "pm", expression = "stressed", text = "Demo is in four hours, Priya. We can't add video." },
        { speaker = "po", expression = "neutral", text = "Not for the demo! For the roadmap! I just want to mention it." },
        { speaker = "pm", expression = "neutral", text = "Casey, you're the architect. What's the call?" },

        { speaker = "arch", expression = "neutral", text = "(I am being asked. By name. The architect at the table. Three honest answers.)",
            choices = {
                { text = "Sure. Mention it. We can architect the cost picture later. Buy Priya the moment.", set = {supported_pivot = true}, rel = {po = 2, dev = -2, qa = -2} },
                { text = "Hard no. The architecture cannot support video. Mentioning it commits us to it. I will not lie about what we can build.", set = {resisted_pivot = true}, rel = {dev = 2, qa = 2, ux = 1, po = -2} },
                { text = "Soften it. 'Exploring multimedia.' One sentence. No commitments. The architecture stays uncompromised.", set = {negotiated_pivot = true}, rel = {pm = 2, dev = 1, ux = 1} },
            }
        },

        -- Support
        { speaker = "arch", expression = "concerned", text = "Mention it. I'll write up the architectural cost picture next week. Honest scoping after the demo.", condition = "supported_pivot" },
        { speaker = "po", expression = "excited", text = "Yes! Casey gets it!", condition = "supported_pivot" },
        { speaker = "arch", expression = "concerned", text = "(I just signed up to architect a video platform on top of a knowledge base. The cost picture will be 14 components, 8 weeks minimum, and a complete content model refactor. Future Casey will present this to a room that's already committed to the answer.)", condition = "supported_pivot" },
        { speaker = "arch", expression = "concerned", text = "(The architect who says yes too early builds a system that says no too late.)", condition = "supported_pivot" },

        -- Resist
        { speaker = "arch", expression = "neutral", text = "No. The architecture cannot support video at our scale, on our budget, with our timeline. Mentioning it commits us. I will not draw a diagram for a system we cannot build.", condition = "resisted_pivot" },
        { speaker = "arch", expression = "concerned", text = "The current content model is text-only. The storage layer is file-based. The API is synchronous. Video requires async processing, object storage, and a streaming protocol. None of those exist.", condition = "resisted_pivot" },
        { speaker = "dev", expression = "smiling", text = "Casey holding the architectural line. I will tell my grandchildren about this day.", condition = "resisted_pivot" },
        { speaker = "po", expression = "defensive", text = "But--", condition = "resisted_pivot" },
        { speaker = "arch", expression = "concerned", text = "Priya. I am protecting you from a future where this team has to apologize to leadership for promising video.", condition = "resisted_pivot" },

        -- Negotiate
        { speaker = "arch", expression = "neutral", text = "Soften. 'Exploring multimedia.' One sentence. No commitments. The architecture stays uncompromised. I'll write the exploration doc next sprint.", condition = "negotiated_pivot" },
        { speaker = "pm", expression = "cheerful", text = "That's the right framing.", condition = "negotiated_pivot" },
        { speaker = "dev", expression = "smiling", text = "'Exploring.' The word engineers use when the answer is 'no' but the room needs a 'maybe.'", condition = "negotiated_pivot" },
        { speaker = "arch", expression = "neutral", text = "('Exploring' means I write a feasibility analysis. Not a blueprint. A feasibility analysis can say 'not feasible.' A blueprint cannot.)", condition = "negotiated_pivot" },

        -- Callbacks
        { speaker = "po", expression = "defensive", text = "We expanded scope last week and the architecture adapted--", condition = "fought_scope" },
        { speaker = "arch", expression = "concerned", text = "The architecture didn't adapt, Priya. It bent. Yesterday's 23 bugs are the sound of it creaking. Video would be the sound of it breaking.", condition = "fought_scope" },

        -- Demo
        { speaker = "pm", expression = "neutral", text = "Alright. It's time. Everyone ready?" },
        { speaker = "arch", expression = "concerned", text = "(The first demo. I'm watching the architecture perform under real conditions. Real users. Real clicks. Real data. This is the load test the architecture never got.)" },
        { speaker = "arch", expression = "neutral", text = "(The feed loads. The content renders. The create flow works. The architectural patterns hold. Section 3.1 through 5.3 of the doc -- the parts Sam actually implemented -- they work. The system diagram is alive.)" },

        -- Post-demo
        { speaker = "arch", expression = "concerned", text = "(The first demo. Not a disaster. Not a triumph. The architecture survives. That's the metric I care about.)", bg = "break_room" },
        { speaker = "arch", expression = "neutral", text = "(Leadership wants a 'fuller version' in two weeks. 'Fuller' means more features. More features means more load on the architecture. I need to assess the capacity before sprint two begins.)" },
        { speaker = "arch", expression = "concerned", text = "(The video question will come back. The CEO's nephew doesn't forget conversations. CEOs don't forget nods. The architecture needs to be ready with an answer -- either 'here's how' or 'here's why not.')" },
        { speaker = "arch", expression = "neutral", text = "(After the demo, Sam found me. 'The staging fix saved us. The load held.' I reply: 'The architecture held. The code held. We held.' Sam blinks. He is not used to me being sentimental. Neither am I.)" },
        { speaker = "arch", expression = "concerned", text = "(The director asked about 'scalability' during Q&A. I said: 'The architecture supports horizontal scaling with minimal refactoring.' That is true. It is also optimistic. But demos are optimism with a timer.)" },

        -- Choice 2
        { speaker = "arch", expression = "neutral", text = "(The demo is done. The architecture held. But the pivot is on the horizon. How do I feel?)",
            choices = {
                { text = "Relief. The architecture survived. The patterns held. The doc was right.", set = {pivot_relieved = true}, rel = {dev = 1, pm = 1} },
                { text = "Anger. The pivot threatens everything I designed. One nephew could undo weeks of architecture.", set = {pivot_angry = true}, rel = {po = -1, qa = 1} },
                { text = "Pragmatic. Time to evaluate what survives a pivot and what needs to be rebuilt.", set = {pivot_pragmatic = true}, rel = {dev = 1, pm = 1} },
            }
        },

        { speaker = "arch", expression = "neutral", text = "The architecture survived. Section 3.1 through 5.3. The patterns held under demo conditions. The foundation is sound. The doc was right.", condition = "pivot_relieved" },
        { speaker = "arch", expression = "concerned", text = "(The doc was right. The sweetest and saddest sentence in architecture. Right, and nearly ignored.)", condition = "pivot_relieved" },

        { speaker = "arch", expression = "concerned", text = "One conversation at a mixer. One nephew. One nod from a CEO. That's enough to threaten an architecture I spent two weeks designing. The power asymmetry between architecture and politics is the oldest problem in software.", condition = "pivot_angry" },
        { speaker = "arch", expression = "concerned", text = "(The anger is architectural. It says: build systems that survive pivots. Build abstractions that bend without breaking. Design for the nephew you haven't met yet.)", condition = "pivot_angry" },

        { speaker = "arch", expression = "neutral", text = "Pivot assessment. Authentication: survives. User model: survives. Content feed: needs abstraction layer. Storage: needs complete replacement. API: needs async capability. Total refactoring cost: 40% of the codebase.", condition = "pivot_pragmatic" },
        { speaker = "arch", expression = "concerned", text = "(40%. If video happens, 40% of the architecture needs rebuilding. That's the number. The real number. Not the number Priya wants. The number the system requires.)", condition = "pivot_pragmatic" },

        { speaker = "arch", expression = "concerned", text = "(Day 9. Demo day. The architecture survived the demo. Now it needs to survive the politics.)" },

        { text = "", goto = "day10" }
    }
}
