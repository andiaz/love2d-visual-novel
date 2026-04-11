return {
    title = "Day 1 -- Monday",
    subtitle = "The Test Plan Begins",
    narration = "A new project. Nothing's been built yet, which means nothing's broken yet. Treasure this feeling. It will not last.",
    bg = "meeting_room",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "qa", expression = "neutral", text = "(New project. Already drafting the test plan in my head.)" },
        { speaker = "pm", expression = "cheerful", text = "Good morning everyone! Welcome to the kickoff for Project Chimera." },
        { speaker = "pm", expression = "cheerful", text = "I'm Jordan, your PM. Quick round of intros -- name and role." },
        { speaker = "ux", expression = "neutral", text = "Alex, UX Design." },
        { speaker = "dev", expression = "neutral", text = "Sam. Developer. I write the code that makes the things do the stuff." },
        { speaker = "arch", expression = "neutral", text = "Casey, Architecture." },
        { speaker = "po", expression = "excited", text = "Priya, Product Owner! 47-slide deck incoming!" },
        { speaker = "pm", expression = "neutral", text = "Riley, you're up. QA lead." },
        { speaker = "qa", expression = "neutral", text = "Riley. QA. I break things so users don't have to.",
            choices = {
                { text = "Ask about the testing strategy and timeline upfront.", set = {qa_asked_strategy = true}, rel = {arch = 1, pm = -1} },
                { text = "Stay quiet. Watch. Take notes.", set = {qa_stayed_quiet = true}, rel = {qa = 1} },
                { text = "Push for QA to be in the design reviews.", set = {qa_pushed_early = true}, rel = {ux = 2, dev = -1} },
            }
        },

        -- Strategy path
        { speaker = "qa", expression = "neutral", text = "Quick question -- when does QA come in? Day one or after dev hands off?", condition = "qa_asked_strategy" },
        { speaker = "pm", expression = "stressed", text = "We'll figure that out as we go.", condition = "qa_asked_strategy" },
        { speaker = "qa", expression = "deadpan", text = "(Translation: 'after dev hands off.' Cool.)", condition = "qa_asked_strategy" },

        -- Quiet path
        { speaker = "qa", expression = "neutral", text = "(Just listen for now. The bugs will introduce themselves.)", condition = "qa_stayed_quiet" },

        -- Early path
        { speaker = "qa", expression = "neutral", text = "I'd like to be in the design reviews. Cheaper to catch issues there than in QA.", condition = "qa_pushed_early" },
        { speaker = "ux", expression = "excited", text = "Yes please.", condition = "qa_pushed_early" },
        { speaker = "dev", expression = "neutral", text = "Sure. More eyes is fine.", condition = "qa_pushed_early" },

        -- Converge
        { speaker = "arch", expression = "neutral", text = "Quick question -- web, mobile, both?" },
        { speaker = "pm", expression = "cheerful", text = "Both! MVP in 6 weeks." },
        { speaker = "dev", expression = "frustrated", text = "Six weeks. Web AND mobile. MVP." },
        { speaker = "qa", expression = "deadpan", text = "(Two platforms. Six weeks. The regression matrix is going to be a wall.)" },
        { speaker = "pm", expression = "cheerful", text = "Alright team! Standup tomorrow, 9 AM. 15 minutes!" },
        { speaker = "qa", expression = "neutral", text = "Sure, Jordan." },
        { speaker = "qa", expression = "deadpan", text = "(I'm starting a bug log right now. Title: 'standup duration estimate.')" },

        { text = "", goto = "day2" }
    }
}
