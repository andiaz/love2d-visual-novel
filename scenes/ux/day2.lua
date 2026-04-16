return {
    title = "Day 2 -- Tuesday",
    subtitle = "The First Standup",
    narration = "Jordan promised 15 minutes. The repo exists. The requirements do not.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- Pre-standup morning
        { speaker = "ux", expression = "neutral", text = "Tuesday. I get in at 8:47. The office is that specific kind of quiet where you can hear someone's mechanical keyboard three rows away." },
        { speaker = "ux", expression = "thinking", text = "My desk still smells like new furniture. I open Slack before I open my coffee." },
        { speaker = "ux", expression = "neutral", text = "The #chimera channel has 61 new messages since yesterday evening. Priya pinged at 7:14 AM: 'Quick thought -- what if we added a small social component?'" },
        { speaker = "ux", expression = "thinking", text = "(A small addition. From Priya. Those words have never once meant a small addition.)" },
        { speaker = "ux", expression = "neutral", text = "Casey posted an article about microservices at 11:02 PM. The message just says 'food for thought.' It's a 45-minute read." },
        { speaker = "ux", expression = "thinking", text = "(Casey was up at 11 PM thinking about our architecture. On day one. That's either dedication or a warning sign.)" },
        { speaker = "ux", expression = "neutral", text = "Riley's only message is a reply to Priya: 'Can we define the core features before we add social?' No emoji. No softening." },
        { speaker = "ux", expression = "thinking", text = "Sam posted nothing. Zero messages. The ghost of #chimera." },
        { speaker = "ux", expression = "neutral", text = "(The Slack channel is already a personality test. Priya floods, Casey overthinks, Riley pushes back, Sam lurks. And Jordan reacted to everything with a thumbs up.)" },

        { text = "..." },

        -- The standup
        { bg = "meeting_room" },

        { speaker = "pm", expression = "cheerful", text = "Morning team! Welcome to our first standup. Let's keep these tight -- fifteen minutes, in and out." },
        { speaker = "ux", expression = "thinking", text = "(I'm setting a mental timer.)" },
        { speaker = "pm", expression = "cheerful", text = "Format is simple. What did you do yesterday, what are you doing today, any blockers. Sam, kick us off." },

        { speaker = "dev", expression = "neutral", text = "Yesterday I set up the repo, configured the CI pipeline, and picked a framework. Today I'm scaffolding the project structure. No blockers." },
        { speaker = "pm", expression = "cheerful", text = "Great. Eight seconds. That's how standup updates should work. Casey?" },

        { speaker = "arch", expression = "neutral", text = "I started the architecture doc. Spent most of yesterday mapping out the data model and thinking about how we handle real-time sync." },
        { speaker = "arch", expression = "whiteboarding", text = "We need to talk about the approach before Sam goes too far with the scaffolding. I've been thinking about a microservices pattern for the--" },
        { speaker = "dev", expression = "neutral", text = "I literally created a git repo and a README. There's nothing to go too far with." },
        { speaker = "arch", expression = "whiteboarding", text = "Right, but the FOUNDATION matters. If we start monolithic and need to refactor later--" },
        { speaker = "dev", expression = "frustrated", text = "Casey, it's an MVP. We ship a monolith, we learn, we refactor if it survives. That's how software works." },
        { speaker = "arch", expression = "concerned", text = "That's how TECHNICAL DEBT works. I've seen this movie before." },
        { speaker = "pm", expression = "neutral", text = "Okay, let's take the architecture debate offline. You two can hash it out after this. Priya?" },

        { speaker = "po", expression = "excited", text = "Yesterday I refined the vision deck based on the kickoff feedback. Added three new slides about the social component." },
        { speaker = "dev", expression = "neutral", text = "Three MORE slides?" },
        { speaker = "po", expression = "defensive", text = "They're important slides, Sam. The social feed is what makes Chimera different from every other knowledge tool." },
        { speaker = "qa", expression = "deadpan", text = "Speaking of which -- I spent yesterday trying to write a test plan. Which brings me to my update." },

        { speaker = "pm", expression = "neutral", text = "Go ahead, Riley." },
        { speaker = "qa", expression = "neutral", text = "Yesterday I reviewed the deck and started the test plan. Today I'm continuing the test plan. My blocker is that we don't have requirements." },
        { speaker = "po", expression = "defensive", text = "The deck IS the requirement! Slide 12 has the feature list." },
        { speaker = "qa", expression = "deadpan", text = "Slide 12 says 'AI-powered delight engine.' That's not a requirement, Priya. That's a motivational poster." },
        { speaker = "ux", expression = "thinking", text = "(Riley is not wrong. I checked slide 12. There's a stock photo of a woman laughing at a salad.)" },
        { speaker = "po", expression = "defensive", text = "The intent is clear! Teams need a better way to share knowledge, and we're building something that makes it joyful." },
        { speaker = "arch", expression = "neutral", text = "Joyful is not a technical specification." },

        { speaker = "pm", expression = "neutral", text = "Alright, let's keep moving. Alex, what about you?" },

        -- The choice
        { speaker = "ux", expression = "thinking", text = "(Okay. Second day, first real contribution. Everyone's watching. What's my play?)",
            choices = {
                { text = "I want to run user interviews this week before we design anything.", set = {pushed_interviews = true}, rel = {qa = 1, po = -1, pm = -1} },
                { text = "I'll start wireframing based on the vision deck.", set = {started_wireframes = true}, rel = {po = 1, pm = 1} },
                { text = "We need clearer requirements before I can design responsibly.", set = {needs_requirements = true}, rel = {dev = 1, arch = 1, po = -1} },
            }
        },

        -- Interview path
        { speaker = "pm", expression = "stressed", text = "Interviews? Alex, we've got six weeks. Interviews eat into that.", condition = "pushed_interviews" },
        { speaker = "ux", expression = "neutral", text = "Five interviews. Three days. Thirty minutes each. I can run them remote, back to back.", condition = "pushed_interviews" },
        { speaker = "ux", expression = "neutral", text = "If we skip research and guess wrong, we burn weeks building features nobody wants. Three days now saves us three weeks later.", condition = "pushed_interviews" },
        { speaker = "qa", expression = "neutral", text = "I'd rather test something users actually asked for.", condition = "pushed_interviews" },
        { speaker = "pm", expression = "neutral", text = "...fine. Three days. But I want a summary by Thursday, and I'm putting a Jira ticket on it so it's tracked.", condition = "pushed_interviews" },

        -- Wireframe path
        { speaker = "po", expression = "excited", text = "Yes! I love that energy. Start with the social feed -- that's the hero feature, the thing that makes Chimera sing.", condition = "started_wireframes" },
        { speaker = "arch", expression = "concerned", text = "Please don't design a social feed without talking to me first. The real-time sync, the notification system, the content moderation -- these have backend implications.", condition = "started_wireframes" },
        { speaker = "po", expression = "defensive", text = "Casey, let Alex cook. We can figure out the tech constraints later.", condition = "started_wireframes" },
        { speaker = "dev", expression = "neutral", text = "Famous last words.", condition = "started_wireframes" },
        { speaker = "ux", expression = "thinking", text = "(Design first, argue about feasibility later. I've played this game before. It usually ends with me redoing wireframes at midnight.)", condition = "started_wireframes" },

        -- Requirements path
        { speaker = "po", expression = "defensive", text = "The vision IS the requirement! Everything you need is in the deck!", condition = "needs_requirements" },
        { speaker = "dev", expression = "smiling", text = "Half the deck is stock photos and buzzwords.", condition = "needs_requirements" },
        { speaker = "ux", expression = "neutral", text = "I'm not trying to slow us down, Priya. But if I start designing without knowing what users actually need, I'm just drawing pretty rectangles.", condition = "needs_requirements" },
        { speaker = "arch", expression = "neutral", text = "I agree with Alex. We need to scope this properly before anyone builds or designs anything.", condition = "needs_requirements" },
        { speaker = "pm", expression = "neutral", text = "Okay, let's schedule a requirements workshop for tomorrow afternoon. But we are still shipping in six weeks. The date doesn't move.", condition = "needs_requirements" },

        -- Converge
        { speaker = "pm", expression = "cheerful", text = "Great standup everyone. Really productive." },
        { speaker = "pm", expression = "neutral", text = "That was... let me check. Thirty-eight minutes." },
        { speaker = "dev", expression = "smiling", text = "New record. Usually the first one's worse." },
        { speaker = "pm", expression = "cheerful", text = "We'll get faster. Tomorrow for real." },
        { speaker = "ux", expression = "thinking", text = "(Sure, Jordan.)" },

        { text = "..." },

        -- Post-standup 1-on-1: varies by choice
        { bg = "office_day" },

        -- Interview path: Riley approaches
        { speaker = "qa", expression = "neutral", text = "Hey Alex, got a sec?", condition = "pushed_interviews" },
        { speaker = "ux", expression = "neutral", text = "Sure, what's up?", condition = "pushed_interviews" },
        { speaker = "qa", expression = "neutral", text = "Your interview plan. If you want, I can help you think through test scenarios based on whatever you find. Edge cases, failure modes, that kind of thing.", condition = "pushed_interviews" },
        { speaker = "ux", expression = "neutral", text = "That would actually be really helpful. I'll share the interview script with you tonight.", condition = "pushed_interviews" },
        { speaker = "qa", expression = "neutral", text = "Cool. And for what it's worth -- I think you made the right call. We're building blind otherwise.", condition = "pushed_interviews" },
        { speaker = "ux", expression = "thinking", text = "(Riley gets it. At least someone on this team wants to build the right thing before building the thing right.)", condition = "pushed_interviews" },

        -- Wireframe path: Priya drops by
        { speaker = "po", expression = "excited", text = "Alex! Before you start wireframing, I pulled some inspiration.", condition = "started_wireframes" },
        { speaker = "ux", expression = "neutral", text = "Priya appears at my desk with her laptop open. Seventeen browser tabs.", condition = "started_wireframes" },
        { speaker = "po", expression = "excited", text = "Look at this app -- the way they handle the feed. And this one has this amazing onboarding flow. Oh, and this dashboard? Chef's kiss.", condition = "started_wireframes" },
        { speaker = "ux", expression = "thinking", text = "(Three completely different products with three completely different design languages. Sure, I'll just combine all of them.)", condition = "started_wireframes" },
        { speaker = "ux", expression = "neutral", text = "These are great references, Priya. I'll pull what works and adapt it to our context.", condition = "started_wireframes" },
        { speaker = "po", expression = "excited", text = "I knew you'd get it. We're going to make something beautiful.", condition = "started_wireframes" },

        -- Requirements path: Sam stops by
        { speaker = "dev", expression = "neutral", text = "Alex.", condition = "needs_requirements" },
        { speaker = "ux", expression = "neutral", text = "Sam appears at the edge of my desk. First time Sam has initiated a conversation.", condition = "needs_requirements" },
        { speaker = "dev", expression = "smiling", text = "Good call in there. Demanding specs before you start. Most designers just start making things pretty and hand me something I can't build.", condition = "needs_requirements" },
        { speaker = "ux", expression = "neutral", text = "I've been burned before. No point designing a Ferrari if the engine can only handle a bicycle.", condition = "needs_requirements" },
        { speaker = "dev", expression = "neutral", text = "Exactly. If you need technical constraints for the workshop tomorrow, ping me. I'll tell you what's actually possible in six weeks.", condition = "needs_requirements" },
        { speaker = "ux", expression = "thinking", text = "(Sam speaks in code and short sentences, but that was practically a speech. I think I just earned some respect.)", condition = "needs_requirements" },

        -- Closing monologue
        { text = "..." },

        { speaker = "ux", expression = "thinking", text = "I stare at my screen for a moment. The Figma file is still blank. The Slack channel now has 94 messages." },
        { speaker = "ux", expression = "neutral", text = "(Two days in and the dynamics are already crystallizing. Casey and Sam will fight about architecture until one of them quits or the project ships.)" },
        { speaker = "ux", expression = "thinking", text = "(Priya has vision but no edges. Everything is a priority, which means nothing is. Riley sees the gaps but doesn't have the authority to fill them.)" },
        { speaker = "ux", expression = "neutral", text = "(And Jordan thinks enthusiasm and Jira tickets can hold this together.)" },
        { speaker = "ux", expression = "thinking", text = "(Day 2. The fault lines are already showing. The question is whether they crack open or whether we build something real on top of them.)" },

        { text = "", goto = "day3" }
    }
}
