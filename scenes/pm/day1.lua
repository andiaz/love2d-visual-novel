return {
    title = "Day 1 -- Monday",
    subtitle = "Wrangling the Room",
    narration = "New project. Six personalities. One conference room. Your job: get them aligned before the timeline eats you alive.",
    bg = "meeting_room",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "pm", expression = "cheerful", text = "(Deep breath. New team, new project. Set the tone in the first ten minutes.)" },
        { speaker = "pm", expression = "cheerful", text = "Good morning everyone! Welcome to the kickoff for Project Chimera." },
        { speaker = "pm", expression = "cheerful", text = "I'm Jordan, your PM. Let's do quick intros -- name and role, 30 seconds each.",
            choices = {
                { text = "Open with the timeline so everyone knows the stakes.", set = {pm_led_with_timeline = true}, rel = {dev = -1, po = 1} },
                { text = "Open with the team -- people first, plan second.", set = {pm_led_with_team = true}, rel = {ux = 1, qa = 1} },
                { text = "Hand it straight to Priya -- let the vision do the talking.", set = {pm_handed_to_po = true}, rel = {po = 2, dev = -1} },
            }
        },

        -- Timeline path
        { speaker = "pm", expression = "stressed", text = "Just so we're all on the same page: MVP in six weeks. That's the bar.", condition = "pm_led_with_timeline" },
        { speaker = "dev", expression = "frustrated", text = "Six weeks for what, exactly?", condition = "pm_led_with_timeline" },
        { speaker = "pm", expression = "neutral", text = "(Started with the rod. They're already pushing back.)", condition = "pm_led_with_timeline" },

        -- Team path
        { speaker = "pm", expression = "cheerful", text = "Before we dive in -- I want to know who's in this room. Quick round.", condition = "pm_led_with_team" },
        { speaker = "ux", expression = "neutral", text = "Alex, UX. Glad to be here.", condition = "pm_led_with_team" },
        { speaker = "qa", expression = "neutral", text = "Riley, QA. Nice to meet you.", condition = "pm_led_with_team" },

        -- Po path
        { speaker = "pm", expression = "cheerful", text = "Priya -- you're up. Tell us about Chimera.", condition = "pm_handed_to_po" },
        { speaker = "po", expression = "excited", text = "Buckle up. I have a 47-slide deck.", condition = "pm_handed_to_po" },
        { speaker = "pm", expression = "stressed", text = "(Forty. Seven. Slides.)", condition = "pm_handed_to_po" },

        -- Converge: rest of intros
        { speaker = "dev", expression = "neutral", text = "Sam, dev. I write the code that makes the things do the stuff." },
        { speaker = "arch", expression = "neutral", text = "Casey. Architecture. I'm here to keep us out of trouble." },
        { speaker = "po", expression = "excited", text = "And I'm Priya! Product Owner! This is going to be HUGE." },
        { speaker = "arch", expression = "neutral", text = "Quick question -- web, mobile, both?" },
        { speaker = "pm", expression = "cheerful", text = "Both! MVP in 6 weeks." },
        { speaker = "dev", expression = "frustrated", text = "Six weeks. Web AND mobile." },
        { speaker = "pm", expression = "stressed", text = "(Risk register entry number one. Already.)" },
        { speaker = "pm", expression = "cheerful", text = "Alright team! Standup tomorrow, 9 AM sharp. 15 minutes." },
        { speaker = "pm", expression = "cheerful", text = "(Lock the room down to a hard 15 and these things stay manageable. Right?)" },

        { text = "", goto = "day2" }
    }
}
