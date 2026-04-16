return {
    title = "Day 6 -- Tuesday",
    subtitle = "The Status Report",
    narration = "Solo day. Leadership wants a status update by 4 PM. The truth is uncomfortable. The lie is dangerous. The middle is an art form.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "pm", expression = "stressed", text = "Tuesday. 8:15 AM. The office is almost empty. A calendar invite from the Director sits in my inbox like a parking ticket." },
        { speaker = "pm", expression = "stressed", text = "(Subject: 'Chimera Status Update -- Due by 4 PM.' No greeting. No context. Just the deadline.)" },
        { speaker = "pm", expression = "thinking", text = "(The status report. The PM's confessional. Or their best fiction. Today I have to decide which one to write.)" },

        -- Conditional: pushed_interviews
        { speaker = "pm", expression = "stressed", text = "(We have user research. Alex's interviews paint a clear picture: users want search, not a creation platform. The deck and the data disagree.)", condition = "pushed_interviews" },
        { speaker = "pm", expression = "thinking", text = "(Do I tell leadership that? 'Hey, the thing we pitched might be solving the wrong problem.' That sentence has ended careers.)", condition = "pushed_interviews" },

        -- Conditional: started_wireframes
        { speaker = "pm", expression = "stressed", text = "(We have wireframes. We do not have validated assumptions. The build is progressing toward a destination nobody has confirmed is correct.)", condition = "started_wireframes" },
        { speaker = "pm", expression = "thinking", text = "(How do you write a status report that says 'we are on schedule to arrive at potentially the wrong place'?)", condition = "started_wireframes" },

        -- Conditional: needs_requirements
        { speaker = "pm", expression = "neutral", text = "(We have requirements from the workshop. Real ones. The build is grounded. But 'grounded' and 'right' are different words.)", condition = "needs_requirements" },
        { speaker = "pm", expression = "thinking", text = "(The requirements tell me what the team agreed to build. They do not tell me if it is what users need.)", condition = "needs_requirements" },

        -- Morning deep work
        { speaker = "pm", expression = "stressed", text = "(I open a blank Google Doc. Title: 'Chimera Sprint 2 Status.' The cursor blinks. I blink back.)" },
        { speaker = "pm", expression = "thinking", text = "(Section one: Progress. Section two: Risks. Section three: Next steps. The template is easy. The content is the problem.)" },
        { speaker = "pm", expression = "stressed", text = "(What do I actually know? The build exists. Barely. The team has doubts. The scope expanded yesterday. The deadline has not moved.)" },
        { speaker = "pm", expression = "thinking", text = "(What does leadership want to hear? 'On track. Vision intact. Demo ready by Friday.' Seven words. All of them somewhere between hopeful and dishonest.)" },

        -- Slack messages
        { speaker = "pm", expression = "neutral", text = "(Slack starts up at 9:30. The team has things to say.)" },

        -- Slack from Alex
        { speaker = "ux", expression = "thinking", text = "[Slack] Jordan, I am restructuring some of the Figma flows today. Might affect the demo walkthrough. Heads up." },
        { speaker = "pm", expression = "stressed", text = "('Restructuring.' In PM language that means 'changing direction.' In status report language that means 'risk.')" },
        { speaker = "pm", expression = "neutral", text = "(I type 'Thanks for the heads up. Keep me posted.' The PM's autopilot response. Acknowledges without committing.)" },

        -- Slack from Sam
        { speaker = "dev", expression = "tired", text = "[Slack] Jordan, the search endpoint is fighting me. Casey's refactor broke my module. Rebasing now. Might lose a few hours." },
        { speaker = "pm", expression = "stressed", text = "(Lost hours. On day six of ten. The schedule just got tighter and I have not started the status report.)" },
        { speaker = "pm", expression = "thinking", text = "(Do I put this in the report? 'Developer lost time due to internal refactor.' True. Also sounds like we do not have our act together.)" },

        -- Slack from Riley
        { speaker = "qa", expression = "deadpan", text = "[Slack] Jordan, regression suite found 14 issues overnight. Three are blockers. Filing now." },
        { speaker = "pm", expression = "stressed", text = "(Three blockers. Day six. The risk section of the status report just wrote itself. The question is whether I include it.)" },

        -- Slack from Priya
        { speaker = "po", expression = "excited", text = "[Slack] Jordan! For the status report -- make sure to highlight the collaboration feature! Leadership will love it!" },
        { speaker = "pm", expression = "frustrated", text = "(The collaboration feature that is actually a comment system. That we agreed to yesterday as a compromise. That Priya is already calling 'collaboration.')" },
        { speaker = "pm", expression = "thinking", text = "(Priya sees the status report as marketing. I see it as accountability. We are writing different documents.)" },

        -- Slack from Casey
        { speaker = "arch", expression = "concerned", text = "[Slack] Jordan, if you need a technical health rating for the report: 2.5 out of 5. Core is solid. Edges need work. Search needs a real implementation." },
        { speaker = "pm", expression = "stressed", text = "(2.5 out of 5. From the architect. That is the kind of number that makes a Director schedule a follow-up meeting.)" },
        { speaker = "pm", expression = "thinking", text = "(Do I include it? '2.5' is honest. 'Progressing well' is diplomatic. 'On track' is fiction. Pick one, Jordan.)" },

        -- The status report - unique scene
        { speaker = "pm", expression = "stressed", text = "(11:00 AM. The Google Doc is still mostly blank. I have typed and deleted four opening paragraphs.)" },
        { speaker = "pm", expression = "thinking", text = "(Paragraph one, attempt five. 'The Chimera project is...' is what? On track? At risk? Somewhere in between?)" },
        { speaker = "pm", expression = "stressed", text = "(I pull up the Jira board. 87 tickets. 23 in progress. 14 blocked. 50 in backlog. The numbers tell a story. Several stories, depending on which ones I highlight.)" },
        { speaker = "pm", expression = "thinking", text = "(The risk register has 11 entries. Two are red. Five are amber. Four are green. The greens are the ones nobody cares about.)" },
        { speaker = "pm", expression = "stressed", text = "(Coffee number three. The cursor is still blinking. The Director's meeting is at 4 PM. Five hours to decide what kind of PM I am.)" },
        { speaker = "pm", expression = "thinking", text = "(There are three versions of this report. Each one is true. Each one tells a different truth.)" },
        { speaker = "pm", expression = "stressed", text = "(I open last sprint's report for reference. It says 'Strong momentum. Team aligned. Vision clear.' That was also a Tuesday. That was also a lie.)" },
        { speaker = "pm", expression = "thinking", text = "(The PM's paradox: you are the person who knows the most about the project's real state. And the person least allowed to say it out loud.)" },
        { speaker = "pm", expression = "stressed", text = "(I check the team calendar. No meetings until 2 PM. Three hours to write a document that will shape the next week. No pressure.)" },

        -- Scope creep conditional
        { speaker = "pm", expression = "frustrated", text = "(And I absorbed more scope yesterday. The report now has to explain why we added features while behind schedule. Good luck, Jordan.)", condition = "absorbed_scope" },
        { speaker = "pm", expression = "neutral", text = "(At least I blocked the scope creep yesterday. The report can say 'scope controlled.' That is a real sentence a real PM can write.)", condition = "fought_scope" },
        { speaker = "pm", expression = "thinking", text = "(The compromise from yesterday gives me something to write about. 'Team identified a lightweight collaboration approach.' That plays well.)", condition = "compromised_scope" },

        -- The choice (this IS the main choice for PM)
        { speaker = "pm", expression = "stressed", text = "(1:30 PM. Two and a half hours until the meeting. The document has to exist. I have to choose a frame.)" },
        { speaker = "pm", expression = "thinking", text = "(Three versions. Honest. Optimistic. Strategic. Each one is a different bet on what leadership can handle.)",
            choices = {
                { text = "(Write the honest report. Three blockers. Team doubts. Scope risk. Request a re-scope conversation.)", set = {followed_data = true}, rel = {dev = 2, qa = 2, ux = 2, po = -2} },
                { text = "(Write the optimistic report. Vision intact. Schedule on track. Demo on rails. Sell the story.)", set = {followed_vision = true}, rel = {po = 2, dev = -1, qa = -2} },
                { text = "(Write the strategic report. 'Evolving alignment.' Hint at scope concerns. Plant seeds without setting alarms.)", set = {found_middle = true}, rel = {po = 0, dev = 1, ux = 1, pm = 0} },
            }
        },

        -- Honest path
        { speaker = "pm", expression = "stressed", text = "(I type it. All of it. The blockers. The research contradictions. The scope risk. The team's doubts. Every uncomfortable truth.)", condition = "followed_data" },
        { speaker = "pm", expression = "thinking", text = "(Section two -- Risks: 'User research suggests a potential misalignment between the product vision and validated user needs. Recommend a scope review before demo.')", condition = "followed_data" },
        { speaker = "pm", expression = "stressed", text = "(The Director is going to read this and schedule a meeting about the meeting. That is how leadership processes bad news.)", condition = "followed_data" },
        { speaker = "pm", expression = "neutral", text = "(But the team needs me to tell the truth. If I lie upward, I lose them. And losing the team is worse than losing the Director's goodwill.)", condition = "followed_data" },

        -- Optimistic path
        { speaker = "pm", expression = "neutral", text = "(I type the version Priya wants. Vision intact. Collaboration feature in progress. Schedule on track. Demo confidence: high.)", condition = "followed_vision" },
        { speaker = "pm", expression = "stressed", text = "(Every sentence is technically true. The way a horoscope is technically true. Vague enough to survive contact with reality.)", condition = "followed_vision" },
        { speaker = "pm", expression = "thinking", text = "(The Director will read this and move on. No follow-up meeting. No hard questions. That is the point.)", condition = "followed_vision" },
        { speaker = "pm", expression = "frustrated", text = "(But if the demo fails, this report is evidence that I knew and said nothing. Status reports are receipts. I just wrote a bad one.)", condition = "followed_vision" },

        -- Strategic path
        { speaker = "pm", expression = "thinking", text = "(I type the diplomatic version. 'Strong directional progress. Team iterating on scope based on emerging user insights. Recommend brief alignment check pre-demo.')", condition = "found_middle" },
        { speaker = "pm", expression = "neutral", text = "('Emerging user insights.' The PM's way of saying 'the research disagrees with the deck' without actually saying it.)", condition = "found_middle" },
        { speaker = "pm", expression = "thinking", text = "(The Director will read this as 'mostly fine, minor course correction.' Which is close enough to the truth without being the whole truth.)", condition = "found_middle" },
        { speaker = "pm", expression = "neutral", text = "(Diplomacy. The PM's love language. The art of being honest enough to sleep at night and vague enough to survive the morning.)", condition = "found_middle" },

        -- Closing reflection
        { speaker = "pm", expression = "stressed", text = "(3:47 PM. Report sent. Thirteen minutes early. The cursor stopped blinking. My pulse has not.)" },
        { speaker = "pm", expression = "thinking", text = "(Solo days are when the real PM work happens. Not in standups. Not in retros. In the silence between the team's truth and leadership's expectations.)" },
        { speaker = "pm", expression = "stressed", text = "(The risk register now has 12 entries. I added one: 'PM credibility -- dependent on status report framing.' Severity: unknown.)" },
        { speaker = "pm", expression = "thinking", text = "(Tomorrow the team will ask how the update went. I will say 'fine.' That word does a lot of heavy lifting in project management.)" },
        { speaker = "pm", expression = "stressed", text = "(Coffee count: 4. Jira tickets: 87. Status report drafts deleted: 4. The one that shipped: the one I could live with.)" },

        { text = "", goto = "day7" }
    }
}
