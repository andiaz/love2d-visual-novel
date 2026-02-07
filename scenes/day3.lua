return {
    title = "Day 3 — Wednesday",
    subtitle = "The Demo Bomb",
    narration = "Yesterday's choices are settling in. Then a message from leadership drops.",

    bg = "office_day",
    bgm = "theme",

    dialogue = {
        { speaker = "ux", expression = "neutral", text = "Wednesday. The middle of the week. The middle of everything." },

        -- If player pushed for interviews
        { speaker = "ux", expression = "neutral", text = "I've done three user interviews so far. The findings are... illuminating.", condition = "pushed_interviews" },
        { speaker = "qa", expression = "neutral", text = "Illuminating good or illuminating bad?", condition = "pushed_interviews" },
        { speaker = "ux", expression = "neutral", text = "Turns out nobody wants a 'knowledge-sharing platform.' They want their existing tools to stop being terrible.", condition = "pushed_interviews" },
        { speaker = "po", expression = "neutral", text = "That's... not what the deck says.", condition = "pushed_interviews" },

        -- If player started wireframing
        { speaker = "ux", expression = "neutral", text = "I finished the first round of wireframes for the social feed.", condition = "started_wireframes" },
        { speaker = "arch", expression = "neutral", text = "Alex, we need to talk about these wireframes. You've designed real-time notifications.", condition = "started_wireframes" },
        { speaker = "ux", expression = "neutral", text = "...yes?", condition = "started_wireframes" },
        { speaker = "arch", expression = "neutral", text = "Do you have any idea what kind of infrastructure that requires? WebSockets, a message queue, push notification services—", condition = "started_wireframes" },
        { speaker = "dev", expression = "neutral", text = "Casey, it's a wireframe. It literally says 'notification bell' with an arrow.", condition = "started_wireframes" },

        -- If player asked for requirements
        { speaker = "pm", expression = "neutral", text = "Alright, requirements workshop time! I've booked a 2-hour slot.", condition = "needs_requirements" },
        { speaker = "po", expression = "neutral", text = "I have some new ideas actually. What if we add a marketplace?", condition = "needs_requirements" },
        { speaker = "dev", expression = "neutral", text = "A marketplace. On top of the knowledge platform. In 6 weeks.", condition = "needs_requirements" },
        { speaker = "po", expression = "neutral", text = "Think of it as a phase 1.5!", condition = "needs_requirements" },
        { speaker = "ux", expression = "neutral", text = "(We haven't even agreed on phase 1.)", condition = "needs_requirements" },

        -- Shared: The Slack Incident
        { speaker = "pm", expression = "neutral", text = "Hey team, quick Slack update — leadership wants a demo in two weeks." },
        { speaker = "dev", expression = "neutral", text = "A demo of WHAT? We have a git repo and some wireframes." },
        { speaker = "pm", expression = "neutral", text = "They want to 'see progress.' It doesn't have to be functional." },
        { speaker = "arch", expression = "neutral", text = "So a mockup demo? That's Alex's territory." },

        { speaker = "ux", expression = "neutral", text = "Suddenly all eyes are on me.",
            choices = {
                { text = "I can put together a clickable prototype.", set = {made_prototype = true}, rel = {pm = 2, po = 1, dev = -1} },
                { text = "I need Sam's help to make it look real.", set = {collab_with_dev = true}, rel = {dev = 2, pm = 1} },
                { text = "A demo in 2 weeks with no requirements is a recipe for disaster.", set = {pushed_back_demo = true}, rel = {pm = -2, qa = 2} },
            }
        },

        -- Prototype path
        { speaker = "pm", expression = "neutral", text = "Perfect! You're a lifesaver, Alex.", condition = "made_prototype" },
        { speaker = "dev", expression = "neutral", text = "Cool. So I'll just... keep setting up the repo I guess.", condition = "made_prototype" },
        { speaker = "ux", expression = "neutral", text = "(Great. Now I'm building a beautiful lie.)", condition = "made_prototype" },

        -- Collab path
        { speaker = "dev", expression = "neutral", text = "Actually, yeah. I can throw together a quick frontend. Give me your designs and I'll make them clickable.", condition = "collab_with_dev" },
        { speaker = "ux", expression = "neutral", text = "Really? That would be amazing.", condition = "collab_with_dev" },
        { speaker = "dev", expression = "smiling", text = "Don't get used to it. I'm doing this so Casey doesn't turn the demo into an architecture lecture.", condition = "collab_with_dev" },

        -- Push back path
        { speaker = "pm", expression = "neutral", text = "Alex, I hear you, but leadership asked. We can't say no.", condition = "pushed_back_demo" },
        { speaker = "qa", expression = "neutral", text = "We COULD say no. We just won't.", condition = "pushed_back_demo" },
        { speaker = "ux", expression = "neutral", text = "Fine. But I want it on record that this demo will set false expectations.", condition = "pushed_back_demo" },
        { speaker = "pm", expression = "neutral", text = "Noted. I'll add it to the meeting minutes that nobody reads.", condition = "pushed_back_demo" },

        -- End of day
        { speaker = "ux", expression = "neutral", text = "Day 3. We have no requirements, a demo deadline, and a 47-slide mood board." },
        { speaker = "ux", expression = "neutral", text = "But hey — at least the Jira board is empty. Because nobody's using it." },

        { text = "", goto = "day4" }
    }
}
