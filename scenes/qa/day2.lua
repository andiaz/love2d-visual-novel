return {
    title = "Day 2 -- Tuesday",
    subtitle = "The First Standup",
    narration = "Standup. Jordan promised 15 minutes. The dev has a git repo. The PO has stock photos. You have a blank test plan and a question.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- PRE-STANDUP MORNING: Writing the first test plan
        { speaker = "qa", expression = "neutral", text = "(Tuesday. 8:09 AM. Early. The office is quiet. Perfect.)" },
        { speaker = "qa", expression = "neutral", text = "(Opens the test plan template. Version 1.0. Created: today. Author: me. Reviewers: TBD. That means nobody.)" },
        { speaker = "qa", expression = "neutral", text = "(Section 1: Scope. What are we testing? Answer: unknown. The requirements are a 47-slide deck with stock photos.)" },
        { speaker = "qa", expression = "neutral", text = "(I'm going to write the test plan anyway. You don't wait for the blueprint to check if the foundation is level.)" },
        { speaker = "qa", expression = "neutral", text = "(Section 2: Test Strategy. Approach: risk-based. Focus on integration points first, then UI, then edge cases.)" },
        { speaker = "qa", expression = "neutral", text = "(Section 3: Entry Criteria. Minimum viable conditions to begin testing. This section is satisfying to write. Clean logic. If X, then test. If not X, block.)" },
        { speaker = "qa", expression = "neutral", text = "(Section 4: Exit Criteria. When are we done? When every acceptance criterion has a passing test. Which requires acceptance criteria. Which we don't have.)" },
        { speaker = "qa", expression = "deadpan", text = "(Circular dependency detected. The test plan needs requirements. The requirements need the PO. The PO has a mood board.)" },
        { speaker = "qa", expression = "neutral", text = "(Section 5: Test Environment. Noting down what Sam set up. Node, linter, basic repo structure. No CI. No staging. Adding both to the 'needed' column.)" },
        { speaker = "qa", expression = "neutral", text = "(Section 6: Risk Register. Item one: no acceptance criteria. Item two: no CI pipeline. Item three: architect proposing seven microservices for an MVP.)" },
        { speaker = "qa", expression = "neutral", text = "(This is the part nobody reads. The risk register. I write it for future me, when someone asks 'why didn't anyone flag this?')" },
        { speaker = "qa", expression = "neutral", text = "(8:41 AM. The test plan is six pages. Clean. Methodical. It has more structure than the entire project.)" },
        { speaker = "qa", expression = "deadpan", text = "(Nobody will read it. Not today. Maybe not ever. But it exists. And when things go wrong, I'll have the receipts.)" },
        { speaker = "qa", expression = "neutral", text = "(Saves. Uploads to Confluence. Shares the link in '#chimera-general.' Watches the notification appear and sink below Casey's midnight architecture diagram.)" },
        { speaker = "qa", expression = "neutral", text = "(Standup soon. Let me review what everyone said in Slack overnight.)" },
        { speaker = "qa", expression = "neutral", text = "(Casey: architecture diagram, seven services. Priya: fire emojis. Sam: silence. Alex: user flow sketch. Jordan: three process announcements.)" },
        { speaker = "qa", expression = "deadpan", text = "(Observable pattern: the people who talk the most have produced the least testable output. Alex is the exception.)" },

        -- THE STANDUP
        { bg = "meeting_room" },
        { speaker = "pm", expression = "cheerful", text = "Good morning! Welcome to our first standup. Yesterday, today, blockers. Fifteen minutes." },
        { speaker = "qa", expression = "deadpan", text = "(I am professionally curious about the word 'blockers' in this room. Because I have a list.)" },
        { speaker = "qa", expression = "neutral", text = "(Opens notebook. New page. Header: 'Standup 1 Observations.' Date. Time. Attendees. Let's go.)" },
        { speaker = "dev", expression = "neutral", text = "Yesterday: created the repo, set up the linter, picked a stack. Today: depends on what I hear in this room." },
        { speaker = "qa", expression = "neutral", text = "(Sam. Eight-second update. Efficient. Honest. Also slightly terrifying for a PM to hear.)" },
        { speaker = "ux", expression = "neutral", text = "Yesterday I sketched user flows. Today I'm mapping the information architecture. No blockers." },
        { speaker = "qa", expression = "neutral", text = "(Alex. Clean update. Actually producing artifacts I can work with. Noting that.)" },
        { speaker = "arch", expression = "whiteboarding", text = "I started the architecture doc. Posted three options in Slack. We need to discuss the data model before Sam goes too far." },
        { speaker = "dev", expression = "frustrated", text = "I literally just made a git repo." },
        { speaker = "arch", expression = "whiteboarding", text = "Right, but the FOUNDATION matters. I've been thinking about microservices..." },
        { speaker = "qa", expression = "deadpan", text = "(Tangent one. Timestamp: 9:07. Casey reached for the whiteboard marker. Jordan intervened. Noting the response time: 43 seconds. Slow.)" },
        { speaker = "pm", expression = "neutral", text = "Let's take that offline. Riley?" },
        { speaker = "qa", expression = "neutral", text = "I'm writing the test plan. Which is hard because we don't have requirements yet." },
        { speaker = "po", expression = "defensive", text = "I sent the whole deck!" },
        { speaker = "qa", expression = "deadpan", text = "That's a mood board, Priya. Slide eight is literally a stock photo of people fist-bumping over laptops." },
        { speaker = "po", expression = "defensive", text = "Those photos represent the emotional journey of the user!" },
        { speaker = "qa", expression = "deadpan", text = "(I said the quiet part out loud. Again. One of these days this habit will get me in trouble.)" },
        { speaker = "qa", expression = "deadpan", text = "(But half the deck is vibes and stock photos. That's not a requirement. That's a mood board.)" },
        { speaker = "po", expression = "defensive", text = "It's a GREAT mood board." },
        { speaker = "qa", expression = "neutral", text = "(Tangent two. Priya vs. me. Timestamp: 9:11. Jordan hasn't intervened yet. Noting that.)" },
        { speaker = "arch", expression = "concerned", text = "About the data model. If we separate the auth layer from the content layer early..." },
        { speaker = "qa", expression = "neutral", text = "(Tangent three. Casey's going again. Architecture discussion in standup. This is not standup. This is a planning meeting that thinks it's standup.)" },
        { speaker = "pm", expression = "stressed", text = "Let's... let's keep moving. We're at 24 minutes." },
        { speaker = "qa", expression = "neutral", text = "(24 minutes. For five status updates. That's 4.8 minutes per person. The target was 3 minutes per person. 60 percent over budget.)" },
        { speaker = "pm", expression = "neutral", text = "Riley, what do you actually need to start writing tests?" },

        -- THE CHOICE
        { speaker = "qa", expression = "neutral", text = "(Three honest answers.)",
            choices = {
                { text = "I want to interview the actual users. Find out what 'works' even means for them.", set = {pushed_interviews = true}, rel = {ux = 2, dev = 1, po = -1, pm = -1} },
                { text = "Give me the deck. I'll start writing test cases against the screenshots.", set = {started_wireframes = true}, rel = {po = 1, pm = 1, dev = -1} },
                { text = "I need acceptance criteria. Real ones. Until then I can't test anything.", set = {needs_requirements = true}, rel = {dev = 2, arch = 1, po = -1, pm = -1} },
            }
        },

        -- Interviews path (= research)
        { speaker = "qa", expression = "neutral", text = "I want to talk to five users this week. Find out what they actually use today and what breaks.", condition = "pushed_interviews" },
        { speaker = "pm", expression = "stressed", text = "Riley, that's not really QA's job...", condition = "pushed_interviews" },
        { speaker = "qa", expression = "deadpan", text = "If nobody else is doing it, it becomes my job. Five interviews. Three days. The test plan will write itself after.", condition = "pushed_interviews" },
        { speaker = "ux", expression = "excited", text = "I'll join you. We can combine the UX research with test case discovery.", condition = "pushed_interviews" },
        { speaker = "qa", expression = "neutral", text = "(Alex gets it. Test cases come from real users, not stock photos.)", condition = "pushed_interviews" },
        { speaker = "po", expression = "defensive", text = "I already did user research. It's in the deck. Slides 5 through 8.", condition = "pushed_interviews" },
        { speaker = "qa", expression = "deadpan", text = "Priya, I read slides 5 through 8. The personas are named 'Adventurous Amy' and 'Thoughtful Tom.' I need real people.", condition = "pushed_interviews" },
        { speaker = "qa", expression = "neutral", text = "(That was harsh. But accurate. I'll buy Priya a coffee later. Probably.)", condition = "pushed_interviews" },

        -- Test against screenshots
        { speaker = "po", expression = "excited", text = "Yes! The deck has all the screens! Test against those!", condition = "started_wireframes" },
        { speaker = "qa", expression = "neutral", text = "I'll start with the primary user flows from the deck. Login, dashboard, core action. I'll flag anything that doesn't have a defined behavior.", condition = "started_wireframes" },
        { speaker = "qa", expression = "deadpan", text = "(I just signed up to write test cases against stock photos. This is fine. This is what professionalism looks like.)", condition = "started_wireframes" },
        { speaker = "dev", expression = "neutral", text = "You're going to have a lot of flags.", condition = "started_wireframes" },
        { speaker = "qa", expression = "deadpan", text = "I know. The flag list IS the requirements gap analysis. Two outputs for the price of one.", condition = "started_wireframes" },
        { speaker = "qa", expression = "neutral", text = "(Turn the limitation into an artifact. Every undefined behavior is a question. Every question is a requirement waiting to be written.)", condition = "started_wireframes" },

        -- Acceptance criteria path
        { speaker = "qa", expression = "neutral", text = "I need acceptance criteria. 'It works' is not a test case. 'User can log in' is. 'User sees an error on wrong password' is.", condition = "needs_requirements" },
        { speaker = "po", expression = "defensive", text = "The vision IS the requirement!", condition = "needs_requirements" },
        { speaker = "dev", expression = "smiling", text = "Half the deck is stock photos and buzzwords.", condition = "needs_requirements" },
        { speaker = "qa", expression = "deadpan", text = "riley.test('delight') is going to fail every time. AssertionError: expected 'undefined' to equal 'delight.'", condition = "needs_requirements" },
        { speaker = "arch", expression = "neutral", text = "Riley's right. We need testable statements before we can build or validate anything.", condition = "needs_requirements" },
        { speaker = "pm", expression = "neutral", text = "Okay, requirements workshop. Tomorrow. Two hours. Everyone brings their questions.", condition = "needs_requirements" },
        { speaker = "qa", expression = "neutral", text = "(Good. A workshop. That's a structured environment. I can work with structure.)", condition = "needs_requirements" },
        { speaker = "qa", expression = "deadpan", text = "(I'll bring 47 questions. One for each slide.)", condition = "needs_requirements" },

        -- CONVERGE
        { speaker = "pm", expression = "neutral", text = "That's time, folks. Final count: 39 minutes. I'm choosing not to comment." },
        { speaker = "dev", expression = "smiling", text = "New record. Usually it's worse." },
        { speaker = "qa", expression = "deadpan", text = "(I'm starting a tracking spreadsheet. Standup 1. Duration: 38 minutes. Promise: 15. Variance: 153 percent. Tangents: 3. Decisions made: 0.)" },
        { speaker = "qa", expression = "deadpan", text = "(Actually, one decision was made. The decision that we need to make decisions. That's meta-progress.)" },

        -- POST-STANDUP: Noting what's testable
        { bg = "office_day" },
        { speaker = "qa", expression = "neutral", text = "(Back at the desk. 9:44 AM. Opens the test plan. Adds a new section: 'Day 2 Observations.')" },
        { speaker = "qa", expression = "neutral", text = "(Testable artifacts produced so far. Sam's repo: exists, lintable, no tests. Alex's user flows: reviewable, mappable to test scenarios.)" },
        { speaker = "qa", expression = "neutral", text = "(Casey's architecture diagram: not testable yet, but implies integration points. Seven services means seven integration boundaries means seven places things can break.)" },
        { speaker = "qa", expression = "neutral", text = "(Priya's deck: not testable. But the personas on slide 6 could inform user acceptance testing. If they were real people.)" },
        { speaker = "qa", expression = "neutral", text = "(Jordan's Jira board: 12 tickets. Zero have acceptance criteria. Zero have test cases linked. It's a to-do list, not a backlog.)" },
        { speaker = "qa", expression = "neutral", text = "(Opens the standup tracking spreadsheet. Column A: date. Column B: promised duration. Column C: actual duration. Column D: tangent count. Column E: decisions made.)" },
        { speaker = "qa", expression = "neutral", text = "(Row 1: 2024-01-09, 15, 38, 3, 0. The data doesn't lie.)" },
        { speaker = "qa", expression = "neutral", text = "(I'll chart this at the end of the sprint. Show the trend. People respond to charts. Even POs.)" },
        { speaker = "qa", expression = "neutral", text = "(Slack notification. Sam. 'Hey, did you see the dev environment setup doc I wrote?' Opening it now.)" },
        { speaker = "qa", expression = "neutral", text = "(It's actually decent. Node version, dependencies, local setup steps. I can follow this. Adding it to the test plan as a reference.)" },
        { speaker = "qa", expression = "neutral", text = "(Types back: 'Read it. Step 4 has a typo. Otherwise solid.' Sam sends a thumbs-up.)" },
        { speaker = "qa", expression = "neutral", text = "(That's two productive interactions today. Sam and Alex. The builders. The people who produce artifacts I can verify.)" },
        { speaker = "qa", expression = "neutral", text = "(The test plan is now eight pages. Clean. Methodical. Documented. Nobody will read it until something breaks.)" },
        { speaker = "qa", expression = "deadpan", text = "(And something will break. It always does. The only question is whether we catch it before the users do.)" },
        { speaker = "qa", expression = "neutral", text = "(Day 2. No tests written. No test environment configured. But the plan exists. The observations are logged. The tracking spreadsheet has its first data point.)" },
        { speaker = "qa", expression = "deadpan", text = "(Tomorrow: standup 2. I'm predicting 32 minutes. Marginal improvement. The tangent count will hold at 3. Jordan will promise 15 again. Jordan is an optimist. I am not.)" },

        { text = "", goto = "day3" }
    }
}
