return {
    title = "Day 3 -- Wednesday",
    subtitle = "The Demo Bomb",
    narration = "You're three commits into a quiet morning when Slack explodes. Leadership wants a demo. In two weeks. Of a product that doesn't exist.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "dev", expression = "neutral", text = "(Slack notification. Jordan's name. The word 'urgent' in the preview. My coffee is suddenly irrelevant.)" },
        { speaker = "dev", expression = "frustrated", text = "Leadership demo. Two weeks. 'See progress.'" },
        { speaker = "dev", expression = "neutral", text = "(Progress. I have a scaffolded API with placeholder routes and a README that says 'TODO: everything.')" },

        -- If player did the spike
        { speaker = "dev", expression = "tired", text = "I've been head-down on the spike since yesterday. The findings are... informative.", condition = "pushed_interviews" },
        { speaker = "arch", expression = "neutral", text = "Informative good or informative bad?", condition = "pushed_interviews" },
        { speaker = "dev", expression = "neutral", text = "Real-time sync is going to eat us alive. We need WebSockets, a message broker, and conflict resolution. None of which exist yet.", condition = "pushed_interviews" },
        { speaker = "po", expression = "defensive", text = "But the deck has real-time as a core feature.", condition = "pushed_interviews" },
        { speaker = "dev", expression = "neutral", text = "The deck also has 'AI-powered' on slide 19. We're not building that either.", condition = "pushed_interviews" },
        { speaker = "dev", expression = "frustrated", text = "(And now someone wants me to demo the thing I just proved we can't build yet.)", condition = "pushed_interviews" },

        -- If player started scaffolding
        { speaker = "dev", expression = "neutral", text = "I scaffolded the API yesterday. Routes for content, users, comments. It compiles.", condition = "started_wireframes" },
        { speaker = "arch", expression = "concerned", text = "Sam, your routes assume a flat document model. The deck implies hierarchy.", condition = "started_wireframes" },
        { speaker = "dev", expression = "neutral", text = "The deck implies a lot of things, Casey.", condition = "started_wireframes" },
        { speaker = "ux", expression = "neutral", text = "Can I see what you scaffolded? I'd like to align my flows.", condition = "started_wireframes" },
        { speaker = "dev", expression = "neutral", text = "Yeah. Come over.", condition = "started_wireframes" },
        { speaker = "dev", expression = "frustrated", text = "(At least I have something. Whether it's the right something is a different question.)", condition = "started_wireframes" },

        -- If player held out for requirements
        { speaker = "pm", expression = "neutral", text = "Alright, requirements workshop. I've booked a 2-hour slot.", condition = "needs_requirements" },
        { speaker = "po", expression = "excited", text = "Oh good! I have some new ideas actually. What if we add a marketplace?", condition = "needs_requirements" },
        { speaker = "dev", expression = "frustrated", text = "A marketplace. On top of the knowledge platform. In 6 weeks.", condition = "needs_requirements" },
        { speaker = "po", expression = "excited", text = "Think of it as a phase 1.5!", condition = "needs_requirements" },
        { speaker = "dev", expression = "frustrated", text = "(I asked for requirements. I got more wishes.)", condition = "needs_requirements" },

        -- Sam's solo technical assessment
        { speaker = "dev", expression = "neutral", text = "(Before the meeting, I need five minutes alone with reality.)" },
        { speaker = "dev", expression = "thinking", text = "(What can actually ship in two weeks? Let me run the numbers.)" },
        { speaker = "dev", expression = "neutral", text = "(Frontend: static pages with hardcoded data. Two days. Maybe three if Alex's designs are complex.)" },
        { speaker = "dev", expression = "thinking", text = "(Backend: a single API endpoint that returns JSON. One day. No auth, no persistence beyond a seed file.)" },
        { speaker = "dev", expression = "neutral", text = "(Database: SQLite. In-memory. Dies when the server restarts. Nobody needs to know.)" },
        { speaker = "dev", expression = "frustrated", text = "(Integration: zero. There is nothing to integrate. We are two people pretending to be a platform.)" },
        { speaker = "dev", expression = "tired", text = "(Total honest estimate: I can build a convincing fake in five days. A real slice in ten. Neither will be the product.)" },

        -- Emergency meeting
        { bg = "meeting_room" },

        { speaker = "pm", expression = "stressed", text = "Okay everyone. Leadership demo. Two weeks. Not optional. What do we have?" },
        { speaker = "dev", expression = "frustrated", text = "A git repo and some opinions." },
        { speaker = "pm", expression = "stressed", text = "They want to 'see progress.' It doesn't have to be functional." },
        { speaker = "ux", expression = "neutral", text = "So a clickable mockup? That's my territory." },
        { speaker = "arch", expression = "concerned", text = "Whatever we show, we'll be expected to ship. I've seen this pattern before." },
        { speaker = "qa", expression = "deadpan", text = "A demo of vapor. Sounds great." },
        { speaker = "po", expression = "excited", text = "This is our chance to show the vision!" },
        { speaker = "dev", expression = "frustrated", text = "(The vision. Always the vision. I'd settle for a working login page.)" },

        { speaker = "pm", expression = "neutral", text = "Sam, you're closest to the code. What's realistic?" },

        { speaker = "dev", expression = "neutral", text = "(Everyone is looking at me. The dev with two weeks and no spec.)",
            choices = {
                { text = "I'll build a real working slice. Ugly but functional. One endpoint, one flow.", set = {made_prototype = true}, rel = {pm = 2, arch = 1, po = -1} },
                { text = "Alex builds the front, I'll wire up just enough backend to make it click.", set = {collab_with_dev = true}, rel = {ux = 2, pm = 1} },
                { text = "A demo this early sets false expectations. I'm pushing back.", set = {pushed_back_demo = true}, rel = {pm = -2, qa = 2, arch = 1} },
            }
        },

        -- Real slice path
        { speaker = "pm", expression = "cheerful", text = "A working slice would be amazing.", condition = "made_prototype" },
        { speaker = "dev", expression = "tired", text = "It will be ugly. It will be brittle. It will not be the product. Manage expectations.", condition = "made_prototype" },
        { speaker = "ux", expression = "neutral", text = "(Sam's about to disappear into the cave for two weeks.)", condition = "made_prototype" },
        { speaker = "arch", expression = "concerned", text = "Sam, what stack? I need to know if this slice becomes the foundation or gets thrown away.", condition = "made_prototype" },
        { speaker = "dev", expression = "neutral", text = "Thrown away. Express, SQLite, hardcoded seed data. It's a proof of concept, not a commitment.", condition = "made_prototype" },
        { speaker = "arch", expression = "neutral", text = "(Good. Disposable. I can live with disposable.)", condition = "made_prototype" },
        { speaker = "po", expression = "neutral", text = "Can it at least show the content flow? Browse, create, share?", condition = "made_prototype" },
        { speaker = "dev", expression = "tired", text = "Browse and create. Maybe. Share is a whole notification system. No.", condition = "made_prototype" },
        { speaker = "qa", expression = "neutral", text = "If it's real code, I can test it. That's more than I expected this sprint.", condition = "made_prototype" },
        { speaker = "dev", expression = "neutral", text = "(I just signed up for ten twelve-hour days. My past self would hate my present self.)", condition = "made_prototype" },

        -- Collab path
        { speaker = "ux", expression = "excited", text = "Yes please. Let me build the screens, you give me the seams to plug in.", condition = "collab_with_dev" },
        { speaker = "dev", expression = "smiling", text = "Deal. Anything to keep Casey from making the demo into an architecture lecture.", condition = "collab_with_dev" },
        { speaker = "arch", expression = "concerned", text = "I heard that.", condition = "collab_with_dev" },
        { speaker = "dev", expression = "neutral", text = "Alex, one rule. Nothing that needs a real backend. Static JSON, hardcoded responses. We fake it clean.", condition = "collab_with_dev" },
        { speaker = "ux", expression = "neutral", text = "Deal. Click-through, not dynamic. I'll keep the interactions simple.", condition = "collab_with_dev" },
        { speaker = "pm", expression = "cheerful", text = "I love this. I'm blocking your calendars for pairing sessions.", condition = "collab_with_dev" },
        { speaker = "dev", expression = "neutral", text = "(Pairing with Alex could actually work. Designers who understand constraints are rare. Let's see.)", condition = "collab_with_dev" },
        { speaker = "qa", expression = "neutral", text = "If there's real HTML, I can write a smoke test. Send me the repo link.", condition = "collab_with_dev" },
        { speaker = "po", expression = "neutral", text = "As long as the content library screen is in there, I'm happy.", condition = "collab_with_dev" },
        { speaker = "dev", expression = "neutral", text = "(She's never happy. But noted.)", condition = "collab_with_dev" },

        -- Push back path
        { speaker = "pm", expression = "neutral", text = "Sam, leadership asked. We can't say no.", condition = "pushed_back_demo" },
        { speaker = "dev", expression = "frustrated", text = "We CAN say no. We just won't. Fine. But I want it on record.", condition = "pushed_back_demo" },
        { speaker = "qa", expression = "smirk", text = "I'll log it as a bug. 'Demo scheduled before product exists.' Severity: existential.", condition = "pushed_back_demo" },
        { speaker = "arch", expression = "neutral", text = "Sam's right. Whatever we demo becomes the implicit spec. I've watched this happen three times.", condition = "pushed_back_demo" },
        { speaker = "po", expression = "defensive", text = "You're all overthinking this. It's just a demo.", condition = "pushed_back_demo" },
        { speaker = "dev", expression = "frustrated", text = "'Just a demo' is how you end up maintaining a prototype for eighteen months, Priya.", condition = "pushed_back_demo" },
        { speaker = "pm", expression = "stressed", text = "Noted. All of it. I'll frame the demo carefully. But it's happening.", condition = "pushed_back_demo" },
        { speaker = "dev", expression = "neutral", text = "(At least I said it. When this blows up, the meeting minutes will show I called it.)", condition = "pushed_back_demo" },
        { speaker = "qa", expression = "deadpan", text = "The meeting minutes that nobody reads.", condition = "pushed_back_demo" },
        { speaker = "dev", expression = "neutral", text = "Exactly.", condition = "pushed_back_demo" },

        -- Post-meeting processing
        { bg = "office_day" },

        { speaker = "dev", expression = "tired", text = "(Back at my desk. Terminal open. Cursor blinking. Nothing typed.)" },
        { speaker = "dev", expression = "neutral", text = "(I'm running the calculations again. Two weeks. Subtract meetings, standups, 'quick syncs.' That leaves maybe seven real coding days.)" },
        { speaker = "dev", expression = "thinking", text = "(Seven days to build something that looks like a product. For an audience that can't tell the difference between a prototype and production.)" },
        { speaker = "dev", expression = "neutral", text = "(The irony is, that's actually an advantage. They won't know it's held together with string and prayers.)" },

        { speaker = "arch", expression = "neutral", text = "Sam. Quick word?" },
        { speaker = "dev", expression = "neutral", text = "Yeah." },
        { speaker = "arch", expression = "concerned", text = "Whatever you build for this demo -- make it disposable. Don't let it become the foundation by accident." },
        { speaker = "dev", expression = "neutral", text = "Already planned. Separate branch. Separate repo if I have to." },
        { speaker = "arch", expression = "neutral", text = "Good. I've seen demo code become production code too many times." },
        { speaker = "dev", expression = "tired", text = "(Casey's not wrong. Demo code is like mold. It spreads.)" },

        { speaker = "dev", expression = "thinking", text = "(I should think about how I'm going to survive the next two weeks. Not the code. Me.)" },

        -- Second choice: emotional processing
        { speaker = "dev", expression = "neutral", text = "(How am I carrying this?)",
            choices = {
                { text = "(I'm going to crunch. Headphones on, world off. I'll sleep when the demo ships.)", set = {demo_stressed = true}, rel = {ux = -1, pm = 1} },
                { text = "(Challenge accepted. I'll build the cleanest throwaway code anyone's ever seen.)", set = {demo_determined = true}, rel = {arch = 1, ux = 1} },
                { text = "(Minimum viable demo. I'll scope it to what I can build in five days and spend the rest on real work.)", set = {demo_pragmatic = true}, rel = {qa = 1, arch = 1} },
            }
        },

        -- Stressed path
        { speaker = "dev", expression = "tired", text = "(Already planning the late nights. Monday through Friday, 8 AM to midnight. Weekend if needed.)", condition = "demo_stressed" },
        { speaker = "dev", expression = "frustrated", text = "(This is how it always goes. 'It doesn't have to be functional' turns into 'can you just add one more thing' turns into sleeping at my desk.)", condition = "demo_stressed" },
        { speaker = "dev", expression = "neutral", text = "(I'll order food delivery. Cancel my Thursday plans. The code won't write itself.)", condition = "demo_stressed" },
        { speaker = "dev", expression = "tired", text = "(Just... get through the next two weeks, Sam.)", condition = "demo_stressed" },

        -- Determined path
        { speaker = "dev", expression = "smiling", text = "(You know what? Fine. This is a puzzle. Two weeks, no spec, high stakes. Let's see how clean I can make it.)", condition = "demo_determined" },
        { speaker = "dev", expression = "neutral", text = "(I'll timebox every feature. If it takes more than a day, it's out of scope. Ruthless prioritization.)", condition = "demo_determined" },
        { speaker = "dev", expression = "thinking", text = "(And I'll document everything. So when they ask 'can we ship this,' I have a clear answer: no, and here's why, and here's what we need.)", condition = "demo_determined" },
        { speaker = "dev", expression = "neutral", text = "(Let's build something worth throwing away.)", condition = "demo_determined" },

        -- Pragmatic path
        { speaker = "dev", expression = "neutral", text = "(Five days of demo work. Five days of real architecture. That's the split.)", condition = "demo_pragmatic" },
        { speaker = "dev", expression = "thinking", text = "(The demo gets the minimum: one screen, one flow, hardcoded data. If they want more, they can wait for the real thing.)", condition = "demo_pragmatic" },
        { speaker = "dev", expression = "neutral", text = "(I'm not burning out over theatre. The real product matters more than the performance.)", condition = "demo_pragmatic" },
        { speaker = "dev", expression = "neutral", text = "(Sustainable pace. Novel concept in this industry.)", condition = "demo_pragmatic" },

        -- Closing
        { speaker = "dev", expression = "tired", text = "Day 3. Two weeks to a demo of a thing we haven't agreed on." },
        { speaker = "dev", expression = "neutral", text = "(I should buy more coffee. And maybe update my LinkedIn. Just in case.)" },
        { speaker = "dev", expression = "neutral", text = "(Kidding. Mostly.)" },

        { text = "", goto = "day4" }
    }
}
