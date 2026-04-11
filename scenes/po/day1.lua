return {
    title = "Day 1 -- Monday",
    subtitle = "The Vision",
    narration = "Forty-seven slides. Six months of work. One conference room. Today is the day Chimera becomes real -- if you can make them see it.",
    bg = "meeting_room",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "po", expression = "excited", text = "(Today's the day. Six months of pitching, and we finally have the team. Don't blow it.)" },
        { speaker = "pm", expression = "cheerful", text = "Good morning everyone! Welcome to the kickoff for Project Chimera." },
        { speaker = "pm", expression = "cheerful", text = "I'm Jordan, your PM. Quick intros first -- name and role." },
        { speaker = "ux", expression = "neutral", text = "Alex, UX. Glad to be here." },
        { speaker = "dev", expression = "neutral", text = "Sam, developer. I write the code that makes the things do the stuff." },
        { speaker = "qa", expression = "neutral", text = "Riley, QA. I break things." },
        { speaker = "arch", expression = "neutral", text = "Casey, Architecture." },
        { speaker = "pm", expression = "cheerful", text = "And our visionary -- Priya, take it away." },
        { speaker = "po", expression = "excited", text = "Hi everyone! I'm Priya. I am SO excited about this one. I have a 47-slide deck about the vision.",
            choices = {
                { text = "Open with the elevator pitch -- get them excited fast.", set = {po_pitched_short = true}, rel = {pm = 1, dev = 1} },
                { text = "Walk through every slide. They need the full picture.", set = {po_pitched_full = true}, rel = {dev = -2, qa = -1} },
                { text = "Skip the deck. Tell them the story of why this matters.", set = {po_told_story = true}, rel = {ux = 2, qa = 1} },
            }
        },

        -- Short pitch path
        { speaker = "po", expression = "excited", text = "One sentence: Chimera is a knowledge-sharing platform that makes companies actually share knowledge.", condition = "po_pitched_short" },
        { speaker = "dev", expression = "neutral", text = "Okay. That I can work with.", condition = "po_pitched_short" },

        -- Full deck path
        { speaker = "po", expression = "excited", text = "Slide 1: the problem space. Slide 2: the user personas. Slide 3 -- ", condition = "po_pitched_full" },
        { speaker = "dev", expression = "frustrated", text = "(I am going to die in this room.)", condition = "po_pitched_full" },
        { speaker = "po", expression = "defensive", text = "(They're not getting it. Push through. They will get it.)", condition = "po_pitched_full" },

        -- Story path
        { speaker = "po", expression = "neutral", text = "My last company had so much knowledge locked in people's heads. When they left, it walked out the door with them.", condition = "po_told_story" },
        { speaker = "ux", expression = "neutral", text = "Yeah. That hits.", condition = "po_told_story" },
        { speaker = "po", expression = "excited", text = "(Got them.)", condition = "po_told_story" },

        -- Converge
        { speaker = "arch", expression = "neutral", text = "Quick scoping question -- web, mobile, both?" },
        { speaker = "pm", expression = "cheerful", text = "Both! MVP in 6 weeks." },
        { speaker = "dev", expression = "frustrated", text = "Six weeks. Web AND mobile." },
        { speaker = "po", expression = "excited", text = "We can do it! I believe in this team!" },
        { speaker = "po", expression = "neutral", text = "(They look skeptical. They always look skeptical at the start. They'll come around.)" },
        { speaker = "pm", expression = "cheerful", text = "Alright team! Standup tomorrow, 9 AM. 15 minutes." },

        { text = "", goto = "day2" }
    }
}
