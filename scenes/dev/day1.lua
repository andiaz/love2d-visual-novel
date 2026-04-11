return {
    title = "Day 1 -- Monday",
    subtitle = "Sizing the Unknown",
    narration = "New project. Forty-seven slides. And nobody can answer the only question that matters: what are we actually building?",
    bg = "meeting_room",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "dev", expression = "neutral", text = "(Monday. New stack, new team, new vague requirements. The usual.)" },
        { speaker = "pm", expression = "cheerful", text = "Good morning everyone! Welcome to the kickoff for Project Chimera." },
        { speaker = "pm", expression = "cheerful", text = "I'm Jordan, your PM. Let's do quick intros -- name and role, 30 seconds each." },
        { speaker = "ux", expression = "neutral", text = "Hi everyone. Alex, UX Design. Looking forward to working with you all." },
        { speaker = "arch", expression = "neutral", text = "Casey, Architecture. I'll be making sure we don't paint ourselves into a corner." },
        { speaker = "qa", expression = "neutral", text = "Riley. QA. I break things so users don't have to." },
        { speaker = "po", expression = "excited", text = "Priya, Product Owner! I am SO excited about this one. I've got a 47-slide deck about the vision." },
        { speaker = "pm", expression = "neutral", text = "Sam, you're our lead dev -- want to introduce yourself?" },
        { speaker = "dev", expression = "neutral", text = "Sam. Developer. I write the code that makes the things do the stuff.",
            choices = {
                { text = "Before we go further -- can someone show me the actual requirements?", set = {dev_wants_specs = true}, rel = {arch = 1, po = -1} },
                { text = "What's the existing codebase look like? Anything to inherit?", set = {dev_asked_codebase = true}, rel = {arch = 2} },
                { text = "Sure, sure. Let's hear the vision.", set = {dev_played_along = true}, rel = {po = 1} },
            }
        },

        -- Specs path
        { speaker = "po", expression = "defensive", text = "The deck IS the requirements. Slides 12 through 38 are basically a PRD.", condition = "dev_wants_specs" },
        { speaker = "arch", expression = "neutral", text = "Sam's right. I'd like to see something we can actually scope.", condition = "dev_wants_specs" },
        { speaker = "pm", expression = "stressed", text = "We'll get there. Let's not get bogged down on day one.", condition = "dev_wants_specs" },

        -- Codebase path
        { speaker = "arch", expression = "neutral", text = "Greenfield. New repo, new everything. I've got opinions, but I'm open to yours.", condition = "dev_asked_codebase" },
        { speaker = "dev", expression = "neutral", text = "(Greenfield. Either a gift or a trap. Usually both.)", condition = "dev_asked_codebase" },

        -- Played along path
        { speaker = "po", expression = "excited", text = "Oh you're going to LOVE this. Picture a platform that's like Uber, but for internal knowledge sharing.", condition = "dev_played_along" },
        { speaker = "dev", expression = "neutral", text = "(So. A wiki.)", condition = "dev_played_along" },

        -- Converge
        { speaker = "arch", expression = "neutral", text = "Are we building a web app? Mobile? Both?" },
        { speaker = "pm", expression = "cheerful", text = "Both! MVP in 6 weeks." },
        { speaker = "dev", expression = "frustrated", text = "Six weeks. Web AND mobile. MVP. With requirements that are still slides." },
        { speaker = "po", expression = "excited", text = "We move fast! That's the magic of this team!" },
        { speaker = "dev", expression = "neutral", text = "(I'm going to need a lot of coffee.)" },
        { speaker = "pm", expression = "cheerful", text = "Alright team! Let's regroup tomorrow for the first standup. 9 AM sharp! 15 minutes tops!" },
        { speaker = "dev", expression = "neutral", text = "Sure, Jordan." },
        { speaker = "dev", expression = "neutral", text = "(It is never 15 minutes.)" },

        { text = "", goto = "day2" }
    }
}
