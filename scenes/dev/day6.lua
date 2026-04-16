return {
    title = "Day 6 -- Tuesday",
    subtitle = "The Side Project Temptation",
    narration = "Solo day. The codebase is open. Your terminal is blinking. And so is a browser tab you should not have opened.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "dev", expression = "tired", text = "Tuesday. 8:31 AM. Remote day. The apartment is quiet. The codebase is not." },
        { speaker = "dev", expression = "neutral", text = "(Terminal open. VS Code open. Slack muted. Coffee number one. This is the good part of the job.)" },
        { speaker = "dev", expression = "thinking", text = "(Just me and the code. No standups. No deck reviews. No scope creep. Just the honest work of making things function.)" },

        -- Conditional: pushed_interviews
        { speaker = "dev", expression = "neutral", text = "(The spike results from last week are clean. I know what scales and what does not. The notification fan-out is a time bomb, but I know where the wires are.)", condition = "pushed_interviews" },
        { speaker = "dev", expression = "thinking", text = "(Having data makes the code feel purposeful. I am building toward something real, not just filling a Jira board.)", condition = "pushed_interviews" },

        -- Conditional: started_wireframes
        { speaker = "dev", expression = "tired", text = "(The scaffold is three days old and already rotting. The auth flow is duct tape. The schema needs a migration I have been putting off.)", condition = "started_wireframes" },
        { speaker = "dev", expression = "frustrated", text = "(I started building before we understood the problem. The code reflects that. Every function feels like a guess.)", condition = "started_wireframes" },

        -- Conditional: needs_requirements
        { speaker = "dev", expression = "neutral", text = "(We have requirements. Priya's 'living doc.' It updated twice since Friday. Both times at 11 PM. Both times adding scope.)", condition = "needs_requirements" },
        { speaker = "dev", expression = "thinking", text = "(At least there is a document. I have worked at places where the requirements were a Slack thread and a prayer.)", condition = "needs_requirements" },

        -- Morning coding session
        { speaker = "dev", expression = "neutral", text = "(I pull main. Eight commits since yesterday. Casey refactored the data layer. Alex updated the design tokens. Riley added test fixtures.)" },
        { speaker = "dev", expression = "neutral", text = "(I start on the content API. Endpoint one: create. Endpoint two: search. Endpoint three: the one Priya keeps changing her mind about.)" },
        { speaker = "dev", expression = "tired", text = "(Forty minutes in. The create endpoint works. The search endpoint is fighting me. Full-text search on a document store with no index strategy. Classic.)" },

        -- Slack messages
        { speaker = "dev", expression = "neutral", text = "(Slack unmutes itself at 9:45. The world has opinions.)" },

        -- Slack from Priya
        { speaker = "po", expression = "excited", text = "[Slack] Sam! Can the content API also support drafts? Like auto-save every 30 seconds? Users hate losing work!" },
        { speaker = "dev", expression = "frustrated", text = "(Auto-save. Every 30 seconds. On a content API I built yesterday. With no draft schema. No conflict resolution. No versioning.)" },
        { speaker = "dev", expression = "neutral", text = "(I type 'That is a feature, not a bug fix. Let me scope it.' Send. The diplomatic version of 'no.')" },

        -- Slack from Casey
        { speaker = "arch", expression = "neutral", text = "[Slack] Sam, the data layer refactor is done. Can you rebase? Also, I changed the query interface. Sorry." },
        { speaker = "dev", expression = "frustrated", text = "(Casey changed the query interface. Which means my search endpoint is now broken. Which means the last forty minutes were a warm-up exercise.)" },
        { speaker = "dev", expression = "tired", text = "(I rebase. Three conflicts. All in the search module. I fix them in silence. This is the job.)" },

        -- Slack from Jordan
        { speaker = "pm", expression = "stressed", text = "[Slack] Sam, status check -- are we on track for the demo build by Thursday?" },
        { speaker = "dev", expression = "thinking", text = "(Am I on track? The create endpoint works. The search endpoint is half-broken. The draft feature does not exist. The schema needs a migration.)" },
        { speaker = "dev", expression = "neutral", text = "(I type 'On track with caveats. Will flag by EOD if anything shifts.' Honest enough. Vague enough.)" },

        -- The side project temptation - unique scene
        { speaker = "dev", expression = "neutral", text = "(11:15 AM. I alt-tab to check Hacker News. Force of habit. And there it is.)" },
        { speaker = "dev", expression = "neutral", text = "(A job posting. 'Senior Full-Stack Engineer -- Seed-stage startup. Remote. Greenfield codebase. No legacy. No decks. Ship fast.')" },
        { speaker = "dev", expression = "thinking", text = "(Greenfield. The word every developer dreams about. No tech debt. No scope surprises. No compromises.)" },
        { speaker = "dev", expression = "neutral", text = "(The stack is Rust and TypeScript. The product is developer tools. The salary is... competitive. The equity is real.)" },
        { speaker = "dev", expression = "thinking", text = "(I could leave. I could be writing clean code in a clean repo for people who understand what 'scope' means.)" },
        { speaker = "dev", expression = "neutral", text = "(I open the application form. I do not fill it in. I just look at it. The fields are simple. Name. Email. GitHub. 'Why do you want to join?')" },
        { speaker = "dev", expression = "thinking", text = "(Why do I want to join? Because I am tired of building things that might be wrong. Because the codebase smells like compromise.)" },
        { speaker = "dev", expression = "thinking", text = "(But also: because running is easier than fixing. And I have run before. And the next place always has its own version of Priya and its own version of the deck.)" },
        { speaker = "dev", expression = "tired", text = "(The grass is not greener. It is just a different color of brown. I know this. I have lived this.)" },
        { speaker = "dev", expression = "thinking", text = "(I scroll through their GitHub. Clean commit history. Thoughtful PR descriptions. Tests on every merge. The engineering culture I dream about.)" },
        { speaker = "dev", expression = "neutral", text = "(But I have seen clean repos before. They do not stay clean. They get stakeholders. They get decks. They get scope changes. Every codebase ages into the same mess.)" },
        { speaker = "dev", expression = "tired", text = "(I close the GitHub tab. I open the Chimera repo. My repo. The one with the duct tape and the search endpoint that does not work yet.)" },
        { speaker = "dev", expression = "thinking", text = "(There is something honest about staying with a broken thing and trying to fix it. Something that leaving does not teach you.)" },
        { speaker = "dev", expression = "neutral", text = "(The application form is still open in another tab. I do not close it. I do not fill it in. It just sits there, like a question I am not ready to answer.)" },

        -- Scope creep conditional
        { speaker = "dev", expression = "frustrated", text = "(Yesterday I agreed to absorb scope I knew was wrong. And now I am looking at job postings. Coincidence? No.)", condition = "absorbed_scope" },
        { speaker = "dev", expression = "thinking", text = "(Yesterday I fought the scope creep. That felt good. That felt like ownership. Maybe this place is worth staying for.)", condition = "fought_scope" },
        { speaker = "dev", expression = "neutral", text = "(The commenting compromise from yesterday was sensible. Not exciting. Sensible. Sensible keeps projects alive.)", condition = "compromised_scope" },

        -- The choice
        { speaker = "dev", expression = "neutral", text = "(12:40 PM. The application tab is still open. The codebase is still broken. The choice is not about the job posting. It is about what I believe about this project.)" },
        { speaker = "dev", expression = "thinking", text = "(Do I believe the data? Do I believe the deck? Or do I believe we can thread the needle?)",
            choices = {
                { text = "(Follow the data. Build only what is validated. If the project fails, at least the code was honest.)", set = {followed_data = true}, rel = {po = -2, qa = 2, ux = 2, arch = 1} },
                { text = "(Follow the vision. Build what Priya wants. Ship the demo. Survive the sprint. Think later.)", set = {followed_vision = true}, rel = {po = 2, pm = 1, qa = -2} },
                { text = "(Find the middle. Scope the implementation to what is validated. Keep the vision as the north star but build the road with data.)", set = {found_middle = true}, rel = {pm = 2, arch = 1, ux = 1} },
            }
        },

        -- Data path
        { speaker = "dev", expression = "neutral", text = "(I close the job posting tab. I open the search endpoint. I rewrite it against the interview data, not the deck.)", condition = "followed_data" },
        { speaker = "dev", expression = "thinking", text = "(If I am going to stay, I am going to build something real. Not a demo. Not a fantasy. Something users will actually touch.)", condition = "followed_data" },
        { speaker = "dev", expression = "neutral", text = "(The application form can wait. This code cannot.)", condition = "followed_data" },
        { speaker = "dev", expression = "thinking", text = "(I delete the bookmark. Not because the opportunity is bad. Because I chose this one.)", condition = "followed_data" },

        -- Vision path
        { speaker = "dev", expression = "tired", text = "(I close the job posting tab. I open Priya's spec. I build what is on the page. No questions. No pushback.)", condition = "followed_vision" },
        { speaker = "dev", expression = "thinking", text = "(This is the path of least resistance. The code will ship. The demo will work. Whether it solves a real problem is not my department.)", condition = "followed_vision" },
        { speaker = "dev", expression = "tired", text = "(I save the job posting to my bookmarks. Just in case. Just in case this goes the way I think it will.)", condition = "followed_vision" },
        { speaker = "dev", expression = "frustrated", text = "(I hate that I am already planning my exit while writing the code. But here we are.)", condition = "followed_vision" },

        -- Middle path
        { speaker = "dev", expression = "neutral", text = "(I close the job posting. I open both tabs: the spec and the interview data. Side by side.)", condition = "found_middle" },
        { speaker = "dev", expression = "thinking", text = "(Vision sets the destination. Engineering picks the route. I said that once. Time to mean it.)", condition = "found_middle" },
        { speaker = "dev", expression = "neutral", text = "(I scope the search endpoint to what users actually search for. I keep the create endpoint aligned with the deck. The hybrid approach.)", condition = "found_middle" },
        { speaker = "dev", expression = "thinking", text = "(Not glamorous. Not pure. But it ships, it works, and it is built on something real.)", condition = "found_middle" },

        -- Closing reflection
        { speaker = "dev", expression = "tired", text = "(6:12 PM. Four pull requests. One schema migration. Zero Slack messages in the last hour. The good kind of silence.)" },
        { speaker = "dev", expression = "thinking", text = "(Solo days are when the real engineering happens. Not in meetings. Not in sprint planning. In the hours between interruptions.)" },
        { speaker = "dev", expression = "neutral", text = "(The job posting is gone from my tabs. The codebase is a little less broken than it was this morning. That is enough.)" },
        { speaker = "dev", expression = "thinking", text = "(Tomorrow the team will review what I built. They will have opinions. But tonight, the code compiles. And that is mine.)" },

        { text = "", goto = "day7" }
    }
}
