return {
    title = "Day 6 -- Tuesday",
    subtitle = "The Diagram and the Code",
    narration = "Solo day. The whiteboard is full. The codebase is real. Today you find out how far apart they are.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "arch", expression = "concerned", text = "Tuesday. 7:58 AM. I am early. The whiteboard is still here. Both of them. The second one is still taped to the first." },
        { speaker = "arch", expression = "whiteboarding", text = "(Solo architecture days. The days when I stop drawing and start reading. Reading the code. Comparing it to the diagram. Finding the gap.)" },
        { speaker = "arch", expression = "concerned", text = "(There is always a gap. The question is how wide it is and whether it is growing.)" },

        -- Conditional: pushed_interviews
        { speaker = "arch", expression = "neutral", text = "(The data model spike paid off. The document store was the right call. The query patterns are clean. That part of the diagram is honest.)", condition = "pushed_interviews" },
        { speaker = "arch", expression = "concerned", text = "(But the rest of the diagram was drawn before the interviews. Before we knew what users actually do. The boxes are right. The arrows might be wrong.)", condition = "pushed_interviews" },

        -- Conditional: started_wireframes
        { speaker = "arch", expression = "whiteboarding", text = "(Sam started building against the diagram three days ago. The scaffold exists. It looks like the whiteboard. Sort of.)", condition = "started_wireframes" },
        { speaker = "arch", expression = "concerned", text = "(But 'sort of' in architecture is the difference between a load-bearing wall and a curtain. Both look like walls. One of them holds the roof up.)", condition = "started_wireframes" },

        -- Conditional: needs_requirements
        { speaker = "arch", expression = "neutral", text = "(The acceptance criteria gave the diagram guardrails. The boxes have labels now. The arrows have verbs. It is more honest than it was a week ago.)", condition = "needs_requirements" },
        { speaker = "arch", expression = "thinking", text = "(But guardrails only help if you are on the right road. The diagram assumes a road. The code is building the road. They should be the same road.)", condition = "needs_requirements" },

        -- The review begins - unique scene
        { speaker = "arch", expression = "whiteboarding", text = "(I open the repo. Main branch. Last commit: 11:47 PM from Sam. Commit message: 'fix search endpoint again.' The word 'again' tells a story.)" },
        { speaker = "arch", expression = "neutral", text = "(I pull up the architecture diagram on the whiteboard. Eleven boxes. Six arrows. Two dashed lines that mean 'we have not decided yet.')" },
        { speaker = "arch", expression = "concerned", text = "(Then I open the actual codebase. The directory structure. The modules. The imports. The real topology of the system.)" },
        { speaker = "arch", expression = "concerned", text = "(The diagram has eleven boxes. The code has seventeen modules. Six modules that do not exist on the whiteboard. Six decisions somebody made without telling me.)" },
        { speaker = "arch", expression = "whiteboarding", text = "(Box one: Auth service. The diagram shows a clean OAuth flow. The code has three auth middleware files, two of which are commented out. The third imports both.)" },
        { speaker = "arch", expression = "concerned", text = "(Box three: Content API. The diagram shows REST endpoints. The code has REST endpoints AND a GraphQL schema that Sam started and abandoned. The abandoned code is still in the build.)" },
        { speaker = "arch", expression = "thinking", text = "(Box seven: Search. The diagram shows full-text search with an index service. The code has a direct database query. No index. No service. Just a WHERE clause with LIKE.)" },
        { speaker = "arch", expression = "concerned", text = "(The gap. Right there. The diagram says 'search service.' The code says 'SQL LIKE.' That is not a gap. That is a canyon.)" },
        { speaker = "arch", expression = "whiteboarding", text = "(I count the discrepancies. Eleven boxes on the diagram. Four match the code. Three are approximations. Two are aspirational. Two do not exist.)" },
        { speaker = "arch", expression = "concerned", text = "(Four out of eleven. The diagram is 36 percent accurate. In architecture, that is not a plan. That is a suggestion.)" },

        -- Slack messages
        { speaker = "arch", expression = "neutral", text = "(9:40 AM. I have been comparing boxes to modules for over an hour. Slack interrupts with the world's opinions.)" },

        -- Slack from Sam
        { speaker = "dev", expression = "tired", text = "[Slack] Casey, your data layer refactor broke my search module. Rebasing now. What changed in the query interface?" },
        { speaker = "arch", expression = "concerned", text = "(I changed the query interface because the old one could not handle the pagination strategy. I told Sam on Friday. He did not read the message. This is how gaps are born.)" },
        { speaker = "arch", expression = "neutral", text = "(I type 'The query interface now expects a cursor, not an offset. Updated the docs in /architecture/decisions. Ping me if you need a walkthrough.')" },
        { speaker = "arch", expression = "thinking", text = "(Architecture decision records. The written version of the whiteboard. At least those are honest.)" },

        -- Slack from Jordan
        { speaker = "pm", expression = "stressed", text = "[Slack] Casey, for the status report -- how would you rate the technical health of the project? Scale of 1 to 5." },
        { speaker = "arch", expression = "concerned", text = "(Technical health. On a scale of 1 to 5. The diagram says 4. The code says 2. The average is 3. The average is a lie.)" },
        { speaker = "arch", expression = "neutral", text = "(I type '2.5. The core is solid. The edges need work. The search module needs a real implementation.' Honest. Painful. Necessary.)" },

        -- Slack from Priya
        { speaker = "po", expression = "excited", text = "[Slack] Casey, can the architecture support AI-powered suggestions in the content creation flow? Just a quick addition!" },
        { speaker = "arch", expression = "concerned", text = "('Quick addition.' In architecture, there is no such thing. Every addition is a load-bearing decision. AI suggestions need an inference endpoint, a model, a pipeline, and a latency budget.)" },
        { speaker = "arch", expression = "neutral", text = "(I type 'Not in the current architecture. That would require a new service and an API integration. Let me scope it properly.' The architect's version of 'no.')" },

        -- Slack from Riley
        { speaker = "qa", expression = "deadpan", text = "[Slack] Casey, the search is case-sensitive. Is that intentional?" },
        { speaker = "arch", expression = "concerned", text = "(Case-sensitive search. Because the code uses a raw LIKE query instead of the full-text index service that is on the whiteboard but not in the code.)" },
        { speaker = "arch", expression = "neutral", text = "(I type 'Not intentional. The search service in the diagram has not been implemented yet. Sam is using a placeholder. I will prioritize this.')" },
        { speaker = "arch", expression = "thinking", text = "(Every bug Riley finds is a symptom of the gap between the diagram and the code. The diagram is the plan. The code is the reality. They need to converge.)" },

        -- The reckoning
        { speaker = "arch", expression = "concerned", text = "(11:00 AM. I stand in front of the whiteboard. Marker in hand. The diagram stares back at me.)" },
        { speaker = "arch", expression = "thinking", text = "(I have two choices. Update the diagram to match the code. Or update the code to match the diagram. One is honest. The other is aspirational.)" },
        { speaker = "arch", expression = "concerned", text = "(The honest path: erase the boxes that do not exist. Draw what is real. Admit that the architecture has drifted.)" },
        { speaker = "arch", expression = "whiteboarding", text = "(The aspirational path: keep the diagram. Push the code toward it. Believe that the plan was right and the implementation just needs to catch up.)" },
        { speaker = "arch", expression = "thinking", text = "(Twenty years of architecture have taught me one thing: the code always wins. The diagram is a wish. The code is the truth.)" },

        -- Scope creep conditional
        { speaker = "arch", expression = "frustrated", text = "(And yesterday I agreed to expand the architecture for scope that should not exist. More boxes on a diagram that is already 64 percent fiction.)", condition = "absorbed_scope" },
        { speaker = "arch", expression = "neutral", text = "(At least I held the line on scope yesterday. Fewer boxes to lie about. The diagram stays manageable.)", condition = "fought_scope" },
        { speaker = "arch", expression = "thinking", text = "(The comment system from yesterday fits cleanly. One box. One arrow. The architecture absorbs it without distortion.)", condition = "compromised_scope" },

        -- The choice
        { speaker = "arch", expression = "concerned", text = "(12:30 PM. The whiteboard marker is uncapped. The diagram is unchanged. But my understanding of the code is different now.)" },
        { speaker = "arch", expression = "thinking", text = "(The question is not what the architecture should be. The question is what it IS. And what I do about the gap.)",
            choices = {
                { text = "(Validate. Erase the fiction. Redraw the diagram to match reality. Then plan the path from here to where we need to be.)", set = {followed_data = true}, rel = {ux = 2, dev = 2, qa = 2, po = -2} },
                { text = "(Commit. Keep the diagram. Push the code toward it. Trust that the plan was right.)", set = {followed_vision = true}, rel = {po = 2, dev = -1, qa = -2} },
                { text = "(Hybrid. Mark the honest boxes in green. Mark the aspirational boxes in yellow. Document the bets. Build toward the yellows.)", set = {found_middle = true}, rel = {pm = 2, dev = 1, ux = 1, qa = 1, arch = 1} },
            }
        },

        -- Data path
        { speaker = "arch", expression = "whiteboarding", text = "(I pick up the eraser. I wipe boxes 5, 8, and 11. They do not exist in the code. They do not belong on the diagram.)", condition = "followed_data" },
        { speaker = "arch", expression = "concerned", text = "(The diagram now has eight boxes. Four are real. Four are close. Zero are fiction. It is ugly. It is honest.)", condition = "followed_data" },
        { speaker = "arch", expression = "thinking", text = "(Twenty years of drawing. And the hardest thing is still erasing. Because erasing means admitting the drawing was wrong.)", condition = "followed_data" },
        { speaker = "arch", expression = "neutral", text = "(I take a photo of the new diagram. I post it to the architecture channel. Subject: 'Reality check. This is what we actually have.')", condition = "followed_data" },

        -- Vision path
        { speaker = "arch", expression = "whiteboarding", text = "(I cap the eraser. I leave the diagram. All eleven boxes. The aspiration stands.)", condition = "followed_vision" },
        { speaker = "arch", expression = "concerned", text = "(The code will catch up. Sam will build the search service. The auth will get cleaned up. The plan was right. The execution is behind.)", condition = "followed_vision" },
        { speaker = "arch", expression = "thinking", text = "(This is either faith or denial. In architecture, they feel identical until the load test.)", condition = "followed_vision" },
        { speaker = "arch", expression = "concerned", text = "(Riley will find the gaps. She always does. The question is whether she finds them before the demo or during it.)", condition = "followed_vision" },

        -- Middle path
        { speaker = "arch", expression = "whiteboarding", text = "(I pick up two markers. Green for real. Yellow for aspirational. I color-code every box on the diagram.)", condition = "found_middle" },
        { speaker = "arch", expression = "neutral", text = "(Four green. Four yellow. Three orange -- 'partially implemented.' The diagram is now a heat map of honesty.)", condition = "found_middle" },
        { speaker = "arch", expression = "thinking", text = "(Architecture decision records for every yellow box. What we assumed. What we bet. What we need to validate. The documentation of uncertainty.)", condition = "found_middle" },
        { speaker = "arch", expression = "neutral", text = "(Pragmatic Casey. The architect who draws in two colors. Because one color was never honest enough.)", condition = "found_middle" },

        -- Closing reflection
        { speaker = "arch", expression = "concerned", text = "(6:05 PM. The office is empty. The whiteboard is still here. The code is still in the repo. The gap between them is documented now.)" },
        { speaker = "arch", expression = "thinking", text = "(Solo architecture days are when the real work happens. Not in whiteboard sessions. Not in design reviews. In the quiet hours of reading code and admitting what you see.)" },
        { speaker = "arch", expression = "concerned", text = "(Tomorrow the team will look at the diagram. They will see something different than what was there yesterday. They will have questions.)" },
        { speaker = "arch", expression = "thinking", text = "(The architecture has eleven boxes. The code has seventeen modules. The gap is five modules wide and getting wider. But at least now, I know where it is.)" },

        { text = "", goto = "day7" }
    }
}
