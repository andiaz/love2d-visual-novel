return {
    title = "Day 13 -- Monday",
    subtitle = "The Feedback",
    narration = "The demo is done. Leadership has spoken. Time for the retro nobody wants.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- Morning: reading the email privately
        { speaker = "ux", expression = "neutral", text = "Monday morning. I'm at my desk. The director's email is sitting in my inbox. Subject: 'Re: Chimera Demo.'" },
        { speaker = "ux", expression = "thinking", text = "I hover over it for a full minute before clicking." },

        { bg = "meeting_room" },

        -- Team meeting: leadership feedback
        { speaker = "pm", expression = "neutral", text = "Alright, I have the feedback from leadership. Let's get into it." },
        { speaker = "dev", expression = "neutral", text = "Just tell us. Good or bad?" },
        { speaker = "pm", expression = "cheerful", text = "Good. With notes." },

        -- Conditional feedback based on demo approach
        { speaker = "pm", expression = "neutral", text = "They said the demo felt focused. Professional. They want to see more features next time, but they respect the discipline.", condition = "polished_subset" },
        { speaker = "pm", expression = "neutral", text = "They were impressed by the scope. But they flagged the search as rough. And the mobile view.", condition = "showed_everything" },
        { speaker = "pm", expression = "cheerful", text = "Direct quote: 'Refreshing to get a team that tells us what's real.' That came from the VP.", condition = "honest_demo" },

        -- Conditional callbacks
        { speaker = "ux", expression = "thinking", text = "(The research paid off. They could see the product was grounded in something real.)", condition = "wants_research" },
        { speaker = "ux", expression = "thinking", text = "(We fought for a smaller scope. And it showed. Clarity over ambition.)", condition = "fought_scope" },

        -- The verdict
        { speaker = "pm", expression = "neutral", text = "Bottom line: Chimera is greenlit for another sprint." },
        { speaker = "po", expression = "excited", text = "Another sprint! We could add the collaboration--" },
        { speaker = "qa", expression = "deadpan", text = "Retro first." },
        { speaker = "po", expression = "neutral", text = "...right." },

        { text = "..." },

        -- Retro: expanded, with callbacks
        { speaker = "pm", expression = "neutral", text = "Retro. What worked. What didn't. What changes." },

        -- Sam's retro (varies based on relationship)
        { speaker = "dev", expression = "neutral", text = "What worked: pairing with Alex. Turns out designers are useful when you let them see the code.", condition = "paired_with_dev" },
        { speaker = "ux", expression = "thinking", text = "(Sam saying 'useful' in front of the whole team. From Sam, that's practically a standing ovation.)", condition = "paired_with_dev" },
        { speaker = "dev", expression = "neutral", text = "What worked: we shipped. What didn't: I was in my own head for too long before asking for help.", condition = {paired_with_dev = nil} },
        { speaker = "ux", expression = "thinking", text = "(Sam admitting that publicly. I can see Jordan writing it down.)", condition = {paired_with_dev = nil} },
        { speaker = "dev", expression = "tired", text = "What I'd change: spike the unknowns before writing production code. Every time." },

        -- Riley's retro (varies based on how they were treated)
        { speaker = "qa", expression = "neutral", text = "What worked: someone finally listened when I said things were broken.", condition = "backed_riley" },
        { speaker = "ux", expression = "thinking", text = "(Riley looks at me when she says 'someone.' I know she means me. That small act of recognition costs her something. She's giving it anyway.)", condition = "backed_riley" },
        { speaker = "qa", expression = "deadpan", text = "What didn't work: being ignored for the first ten days.", condition = {backed_riley = nil} },
        { speaker = "ux", expression = "thinking", text = "(The room goes quiet. Riley is not wrong. I could have backed her sooner. I didn't.)", condition = {backed_riley = nil} },
        { speaker = "qa", expression = "neutral", text = "What I'd change: QA in the room from day one. Not as a gate. As a partner." },
        { speaker = "ux", expression = "thinking", text = "(Partner. Not gatekeeper. That distinction is everything. Good QA and good design share the same instinct -- care about the person using the thing.)" },

        -- Casey's retro
        { speaker = "arch", expression = "concerned", text = "What worked: the core architecture held. What didn't: I over-designed the edges." },
        { speaker = "arch", expression = "neutral", text = "What I'd change: fewer boxes on the whiteboard. More conversations at the desk." },
        { speaker = "ux", expression = "thinking", text = "(Casey admitting to over-design. That's like hearing a poet say they used too many metaphors. It costs something.)" },

        -- Priya's retro
        { speaker = "po", expression = "neutral", text = "What worked: the vision survived. Smaller than I imagined, but alive." },
        { speaker = "po", expression = "neutral", text = "What didn't: I treated the roadmap like a suggestion. Every pivot cost the team days they'll never get back." },
        { speaker = "ux", expression = "thinking", text = "(Priya's voice is quieter than usual. No exclamation marks. The retro has done something to her that two weeks of pushback couldn't.)" },

        { speaker = "pm", expression = "neutral", text = "Alex. Your turn." },

        { speaker = "ux", expression = "thinking", text = "(This is the retro that matters. Not the process. The people.)",
            choices = {
                { text = "We should have talked to users before designing anything. Research first, always.", set = {retro_research = true}, rel = {qa = 1, dev = 1} },
                { text = "Design and dev need to be in the same room from the start. Not at handoff.", set = {retro_communication = true}, rel = {dev = 2, arch = 1} },
                { text = "We're a good team. We just needed to trust each other sooner.", set = {retro_trust = true}, rel = {pm = 1, po = 1, qa = 1, dev = 1, arch = 1} },
            }
        },

        { speaker = "dev", expression = "smiling", text = "Research first. I'll spike with you next time.", condition = "retro_research" },
        { speaker = "ux", expression = "thinking", text = "(Sam volunteering for research. Two weeks ago, Sam thought user research was a delay tactic. People change. Not always. But sometimes.)", condition = "retro_research" },
        { speaker = "dev", expression = "smiling", text = "Same room. Every day. I'll clear my calendar.", condition = "retro_communication" },
        { speaker = "ux", expression = "thinking", text = "(Sam clearing a calendar. For design. I'm going to remember this moment the next time someone says developers don't care about collaboration.)", condition = "retro_communication" },
        { speaker = "pm", expression = "neutral", text = "Trust. That's the hardest thing to build and the easiest to break.", condition = "retro_trust" },
        { speaker = "ux", expression = "thinking", text = "(Jordan writes TRUST on the whiteboard in all caps. It looks like a motivational poster. It also looks true.)", condition = "retro_trust" },

        { speaker = "pm", expression = "neutral", text = "Good retro, team. Let's carry this into the next sprint." },
        { speaker = "ux", expression = "thinking", text = "(The room exhales. Retros are strange -- you spend an hour saying the hard things, and then you go get coffee as if nothing happened. But everything happened.)" },

        { text = "..." },

        -- Post-retro: 1-on-1 (conditional on highest relationship)
        { bg = "break_room", bgm = "late_night" },

        { speaker = "ux", expression = "neutral", text = "After the retro, I drift toward the break room. Need a minute." },
        { speaker = "ux", expression = "thinking", text = "(The retro surfaced things I hadn't said out loud. Things about how I work, how I listen, how I miss signals when I'm deep in Figma. The coffee machine doesn't judge. The coffee machine just makes terrible coffee.)" },

        -- High dev relationship
        { speaker = "dev", expression = "neutral", text = "Hey. Got a second?", condition = {rel_dev_gte = 5} },
        { speaker = "ux", expression = "neutral", text = "Always.", condition = {rel_dev_gte = 5} },
        { speaker = "dev", expression = "smiling", text = "Just wanted to say. The pairing sessions were the best part of this project for me.", condition = {rel_dev_gte = 5} },
        { speaker = "ux", expression = "thinking", text = "(That might be the nicest thing Sam has ever said to anyone.)", condition = {rel_dev_gte = 5} },
        { speaker = "ux", expression = "neutral", text = "For me too. Honestly.", condition = {rel_dev_gte = 5} },
        { speaker = "dev", expression = "neutral", text = "I never thought I'd say this, but watching someone design in real time changed how I think about code.", condition = {rel_dev_gte = 5} },
        { speaker = "ux", expression = "thinking", text = "(Sam is being vulnerable. In a break room. Without a laptop open. This is uncharted territory for both of us.)", condition = {rel_dev_gte = 5} },

        -- High QA relationship
        { speaker = "qa", expression = "neutral", text = "Alex. Quick word.", condition = {rel_qa_gte = 5, rel_dev_lt = 5} },
        { speaker = "ux", expression = "neutral", text = "Of course.", condition = {rel_qa_gte = 5, rel_dev_lt = 5} },
        { speaker = "qa", expression = "neutral", text = "Thank you for backing me. Not many designers care about the edge cases.", condition = {rel_qa_gte = 5, rel_dev_lt = 5} },
        { speaker = "ux", expression = "thinking", text = "(Edge cases are just users nobody planned for. Of course I care.)", condition = {rel_qa_gte = 5, rel_dev_lt = 5} },
        { speaker = "ux", expression = "neutral", text = "The edge cases are the whole point. The happy path designs itself. The edge cases are where design earns its keep.", condition = {rel_qa_gte = 5, rel_dev_lt = 5} },
        { speaker = "qa", expression = "neutral", text = "I wish more people on more teams understood that.", condition = {rel_qa_gte = 5, rel_dev_lt = 5} },
        { speaker = "ux", expression = "thinking", text = "(Riley and I sit in comfortable silence for a moment. Two people who care about the details other people skip. It's a small club.)", condition = {rel_qa_gte = 5, rel_dev_lt = 5} },

        -- Default: quiet moment alone
        { speaker = "ux", expression = "thinking", text = "The break room is empty. Just me and the hum of the coffee machine.", condition = {rel_dev_lt = 5, rel_qa_lt = 5} },
        { speaker = "ux", expression = "neutral", text = "Sometimes the best retro is the one you have with yourself.", condition = {rel_dev_lt = 5, rel_qa_lt = 5} },
        { speaker = "ux", expression = "thinking", text = "(I open my sketchbook to a blank page. Write three things I'd do differently. Close the book. The list is private. The lessons are permanent.)", condition = {rel_dev_lt = 5, rel_qa_lt = 5} },

        { text = "..." },

        -- Second choice: what to focus on
        { speaker = "ux", expression = "thinking", text = "One more sprint. What matters most?",
            choices = {
                { text = "Polish the core experience. Less is more.", set = {forward_cautious = true}, rel = {dev = 1, qa = 1} },
                { text = "Push for something ambitious. We've earned it.", set = {forward_ambitious = true}, rel = {po = 1, arch = 1} },
            }
        },

        { speaker = "ux", expression = "neutral", text = "(Polish. Get the details right. That's what users notice.)", condition = "forward_cautious" },
        { speaker = "ux", expression = "neutral", text = "(Ambition. Controlled ambition. We know what we're capable of now.)", condition = "forward_ambitious" },

        { text = "", goto = "day14" }
    }
}
