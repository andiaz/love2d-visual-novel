return {
    title = "Day 1 -- Monday",
    subtitle = "The Test Plan Begins",
    narration = "A new project. Nothing's been built yet, which means nothing's broken yet. Treasure this feeling. It will not last.",
    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- PRE-MEETING: Writing test plan on a napkin
        { speaker = "qa", expression = "neutral", text = "(New project. Conference room in twenty minutes. Already thinking about edge cases.)" },
        { speaker = "qa", expression = "neutral", text = "(Napkin from the coffee station. Good enough. First test plan draft doesn't need to be pretty.)" },
        { speaker = "qa", expression = "deadpan", text = "(Item one: does the login work. Item two: does the login work on mobile. Item three: does the login work when someone types their password wrong six times.)" },
        { speaker = "qa", expression = "neutral", text = "(I don't even know what we're building yet, and I already have twelve test scenarios.)" },
        { speaker = "qa", expression = "deadpan", text = "(That's not a problem. That's a skill.)" },
        { speaker = "qa", expression = "neutral", text = "(The product owner sent a 47-slide deck last night. I read it. All of it.)" },
        { speaker = "qa", expression = "deadpan", text = "(Slide 23 says 'delight' in 72-point font. That is not a testable requirement.)" },
        { speaker = "qa", expression = "neutral", text = "(Slides 12 through 38 are supposedly the PRD. Fourteen of those slides are diagrams with no labels.)" },
        { speaker = "qa", expression = "neutral", text = "(The developer, Sam. Developers either love QA or tolerate QA. The good ones love it.)" },
        { speaker = "qa", expression = "neutral", text = "(Casey, the architect. Architects think in systems. I think in failure modes. We'll either clash or click.)" },
        { speaker = "qa", expression = "deadpan", text = "(Alex, UX. If design reviews include QA, half the bugs die before they're born. If they don't, I find them later. More expensively.)" },
        { speaker = "qa", expression = "neutral", text = "(Priya, the PO. Enthusiastic. That can mean visionary or it can mean scope creep. We'll see.)" },
        { speaker = "qa", expression = "neutral", text = "(Jordan's the PM. PMs set the pace. Good PMs protect the timeline. Bad PMs protect the stakeholders.)" },
        { speaker = "qa", expression = "deadpan", text = "(Napkin's full. Time to go hear the pitch.)" },

        -- KICKOFF MEETING
        { speaker = "pm", expression = "cheerful", text = "Happy Monday, team! Welcome to the Project Chimera kickoff.", bg = "meeting_room" },
        { speaker = "pm", expression = "cheerful", text = "I'm Jordan, your PM. Quick round of intros, name and role." },
        { speaker = "qa", expression = "neutral", text = "(Scanning the room. Body language says a lot on day one.)" },
        { speaker = "ux", expression = "neutral", text = "Alex, UX Design." },
        { speaker = "qa", expression = "neutral", text = "(Alex brought a notebook. Already sketching. Good sign.)" },
        { speaker = "dev", expression = "neutral", text = "Sam. Developer. I write the code that makes the things do the stuff." },
        { speaker = "qa", expression = "deadpan", text = "(Self-deprecating humor. Either humble or deflecting. Filing that away.)" },
        { speaker = "arch", expression = "neutral", text = "Casey, Architecture." },
        { speaker = "qa", expression = "neutral", text = "(Two words. Casey says exactly what's needed and nothing more. Respect.)" },
        { speaker = "po", expression = "excited", text = "Priya, Product Owner! Vision deck incoming!" },
        { speaker = "qa", expression = "deadpan", text = "(She's proud of the slide count. That's... a choice.)" },
        { speaker = "pm", expression = "neutral", text = "Riley, you're up. QA lead." },

        -- THE CHOICE
        { speaker = "qa", expression = "neutral", text = "Riley. QA. I break things so users don't have to.",
            choices = {
                { text = "Ask about the testing strategy and timeline upfront.", set = {qa_asked_strategy = true}, rel = {arch = 1, pm = -1} },
                { text = "Stay quiet. Watch. Take notes.", set = {qa_stayed_quiet = true}, rel = {qa = 1} },
                { text = "Push for QA to be in the design reviews from day one.", set = {qa_pushed_early = true}, rel = {ux = 2, dev = -1} },
            }
        },

        -- STRATEGY PATH
        { speaker = "qa", expression = "neutral", text = "Quick question before we go further. When does QA come in? Day one, or after dev hands off?", condition = "qa_asked_strategy" },
        { speaker = "pm", expression = "stressed", text = "We'll figure out the exact process as we go.", condition = "qa_asked_strategy" },
        { speaker = "qa", expression = "deadpan", text = "(Translation: 'after dev hands off.' Every time.)", condition = "qa_asked_strategy" },
        { speaker = "arch", expression = "neutral", text = "That's a fair question. Testing should inform the architecture, not bolt onto it.", condition = "qa_asked_strategy" },
        { speaker = "qa", expression = "neutral", text = "(Casey gets it. That's one ally in the room.)", condition = "qa_asked_strategy" },
        { speaker = "po", expression = "excited", text = "We're all in this together! QA is part of the team from the start!", condition = "qa_asked_strategy" },
        { speaker = "qa", expression = "deadpan", text = "(Enthusiasm is not a process. But I'll take the sentiment.)", condition = "qa_asked_strategy" },

        -- QUIET PATH
        { speaker = "qa", expression = "neutral", text = "(Don't talk yet. Just listen. The bugs will introduce themselves.)", condition = "qa_stayed_quiet" },
        { speaker = "qa", expression = "neutral", text = "(Priya's talking fast. Jordan's nodding. Sam's looking at the table. Casey's already drawing something.)", condition = "qa_stayed_quiet" },
        { speaker = "qa", expression = "neutral", text = "(Alex is sketching in the notebook. Not the deck. Something else. Wireframes, maybe.)", condition = "qa_stayed_quiet" },
        { speaker = "qa", expression = "deadpan", text = "(Nobody's mentioned testing, requirements, or acceptance criteria. We're eleven minutes in.)", condition = "qa_stayed_quiet" },
        { speaker = "qa", expression = "neutral", text = "(That's fine. Day one is always like this. The reality check comes on day three.)", condition = "qa_stayed_quiet" },

        -- PUSH EARLY PATH
        { speaker = "qa", expression = "neutral", text = "One request. I want QA in the design reviews. Not after the designs are done. During.", condition = "qa_pushed_early" },
        { speaker = "ux", expression = "excited", text = "Yes. Please. Fresh eyes catch things I miss.", condition = "qa_pushed_early" },
        { speaker = "dev", expression = "neutral", text = "That's going to slow down the review cycle.", condition = "qa_pushed_early" },
        { speaker = "qa", expression = "neutral", text = "It's cheaper to catch a bad flow in a wireframe than in a pull request.", condition = "qa_pushed_early" },
        { speaker = "pm", expression = "neutral", text = "Fair point. Let's try it and see how the velocity looks.", condition = "qa_pushed_early" },
        { speaker = "qa", expression = "smirk", text = "(Design reviews with QA. Small win, but it matters.)", condition = "qa_pushed_early" },

        -- CONVERGENCE: Scope reveal
        { speaker = "arch", expression = "neutral", text = "Quick question. Web, mobile, both?" },
        { speaker = "pm", expression = "cheerful", text = "Both! MVP in 6 weeks." },
        { speaker = "dev", expression = "frustrated", text = "Six weeks. Web AND mobile. MVP." },
        { speaker = "qa", expression = "deadpan", text = "(Two platforms. Six weeks. The regression matrix is going to be a wall.)" },
        { speaker = "qa", expression = "neutral", text = "(Web plus mobile means two sets of test cases, two sets of device configurations, two sets of everything.)" },
        { speaker = "po", expression = "excited", text = "The MVP is focused. Core search, profiles, and the contribution flow." },
        { speaker = "qa", expression = "neutral", text = "(Search is deceptively complex to test. Edge cases on edge cases. Empty states, partial matches, special characters...)" },
        { speaker = "arch", expression = "concerned", text = "Shared backend, presumably. That helps with consistency." },
        { speaker = "qa", expression = "neutral", text = "(Shared backend means shared failure points. One bug, two platforms. Efficient, in a way.)" },
        { speaker = "pm", expression = "cheerful", text = "Alright team! Standup tomorrow, 9 AM!" },
        { speaker = "qa", expression = "neutral", text = "Sure, Jordan." },

        -- POST-MEETING: Back at desk
        { speaker = "qa", expression = "neutral", text = "(Back at the desk. Napkin's still here. Time to upgrade to a real document.)", bg = "office_day" },
        { speaker = "qa", expression = "neutral", text = "(What do I know: two platforms, six weeks, three core features. Search, profiles, contributions.)" },
        { speaker = "qa", expression = "neutral", text = "(What don't I know: the data model, the auth flow, the API contract, the deployment pipeline, the definition of done.)" },
        { speaker = "qa", expression = "deadpan", text = "(So. Almost everything.)" },
        { speaker = "qa", expression = "neutral", text = "(Priya's passionate but the requirements are still vapor. Can't write acceptance criteria for a mood board.)" },
        { speaker = "qa", expression = "neutral", text = "(Sam seems solid. Good developers make QA's job easier. Bad ones make it a career.)" },
        { speaker = "qa", expression = "neutral", text = "(Casey's already thinking about systems. That's good. Testable architecture starts with clear boundaries.)" },
        { speaker = "qa", expression = "neutral", text = "(Let me check Slack. Maybe someone posted something useful.)" },
        { speaker = "qa", expression = "deadpan", text = "(Priya shared the deck in the channel. Three emoji reactions. Zero comments.)" },
        { speaker = "qa", expression = "neutral", text = "(Starting the test scenario doc now. Skeleton only. Login flow, search, profile CRUD, contribution workflow.)" },
        { speaker = "qa", expression = "deadpan", text = "(Column headers: scenario, expected result, actual result, status. The 'actual result' column will be empty for weeks.)" },
        { speaker = "qa", expression = "neutral", text = "(Tomorrow's standup. I'll have questions. Whether anyone has answers is a different problem.)" },

        { text = "", goto = "day2" }
    }
}
