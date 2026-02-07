return {
    title = "Day 1 — Monday",
    subtitle = "First Impressions",
    narration = "New team. New project. A 47-slide deck and six people in a conference room.",
    bg = "office_day",
    bgm = "theme",

    dialogue = {
        { speaker = "ux", expression = "neutral", text = "Monday morning. New team, new project. How bad can it be?" },
        { speaker = "pm", expression = "neutral", text = "Good morning everyone! Welcome to the kickoff for Project Chimera." },
        { speaker = "pm", expression = "neutral", text = "I'm Jordan, your PM. Let's do a quick round of intros — just name and role, 30 seconds each." },
        { speaker = "dev", expression = "neutral", text = "Sam. Developer. I write the code that makes the things do the stuff." },
        { speaker = "arch", expression = "neutral", text = "Casey, Architecture. I'll be looking at the system design and making sure we don't paint ourselves into a corner." },
        { speaker = "qa", expression = "neutral", text = "Riley. QA. I break things so users don't have to." },
        { speaker = "po", expression = "neutral", text = "Priya, Product Owner! I am SO excited about this one. I've got a 47-slide deck about the vision." },
        { speaker = "dev", expression = "neutral", text = "...forty-seven?" },
        { speaker = "pm", expression = "neutral", text = "We'll get to that. Alex, you're our UX lead — want to say hi?" },
        { speaker = "ux", expression = "neutral", text = "Hey everyone. Alex, UX Design. Looking forward to working with you all.",
            choices = {
                { text = "I'd love to start with some user research.", set = {wants_research = true}, rel = {qa = 1, po = -1} },
                { text = "Priya, tell us more about the vision.", set = {eager_for_vision = true}, rel = {po = 2} },
                { text = "So... what exactly are we building?", set = {asked_what = true}, rel = {dev = 1} },
            }
        },

        -- User research path
        { speaker = "po", expression = "neutral", text = "User research? We already know what users want. I talked to my cousin who uses apps.", condition = "wants_research" },
        { speaker = "qa", expression = "neutral", text = "I mean... actual research wouldn't hurt.", condition = "wants_research" },
        { speaker = "pm", expression = "neutral", text = "Let's table the research discussion. We have a tight timeline.", condition = "wants_research" },

        -- Vision path
        { speaker = "po", expression = "neutral", text = "Oh you're going to LOVE this. Picture a platform that's like Uber, but for... internal knowledge sharing.", condition = "eager_for_vision" },
        { speaker = "dev", expression = "neutral", text = "So... a wiki?", condition = "eager_for_vision" },
        { speaker = "po", expression = "neutral", text = "No no no. A SMART wiki. With AI. And gamification.", condition = "eager_for_vision" },

        -- Direct question path
        { speaker = "pm", expression = "neutral", text = "Great question! Priya, the elevator pitch?", condition = "asked_what" },
        { speaker = "po", expression = "neutral", text = "It's a knowledge-sharing platform. Think Confluence meets TikTok meets LinkedIn.", condition = "asked_what" },
        { speaker = "dev", expression = "neutral", text = "That is... a combination of words.", condition = "asked_what" },

        -- Converge
        { speaker = "arch", expression = "neutral", text = "Before we go further — are we building a web app? Mobile? Both?" },
        { speaker = "pm", expression = "neutral", text = "Both! MVP in 6 weeks." },
        { speaker = "dev", expression = "neutral", text = "Six weeks. Web AND mobile. MVP." },
        { speaker = "ux", expression = "neutral", text = "(This is going to be interesting.)" },
        { speaker = "pm", expression = "neutral", text = "Alright team! Let's regroup tomorrow for the first standup. 9 AM sharp!" },
        { speaker = "pm", expression = "neutral", text = "Oh, and it'll be quick. 15 minutes tops." },
        { speaker = "dev", expression = "neutral", text = "Sure, Jordan." },

        { text = "", goto = "day2" }
    }
}
