return {
    title = "Day 1 -- Monday",
    subtitle = "Sketching the System",
    narration = "A new project. A blank whiteboard. Six weeks. Somewhere between today and the demo, this all has to become a system that doesn't collapse under its own weight.",
    bg = "meeting_room",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "arch", expression = "neutral", text = "(New project. Blank whiteboard. The most dangerous time.)" },
        { speaker = "pm", expression = "cheerful", text = "Good morning everyone! Welcome to the kickoff for Project Chimera." },
        { speaker = "pm", expression = "cheerful", text = "I'm Jordan, your PM. Quick intros -- name and role." },
        { speaker = "ux", expression = "neutral", text = "Alex, UX Design." },
        { speaker = "dev", expression = "neutral", text = "Sam, dev. I write the code that makes the things do the stuff." },
        { speaker = "qa", expression = "neutral", text = "Riley, QA. I break things." },
        { speaker = "po", expression = "excited", text = "Priya, Product Owner! 47-slide deck inbound!" },
        { speaker = "pm", expression = "neutral", text = "Casey, you're our architect -- want to say hi?" },
        { speaker = "arch", expression = "neutral", text = "Casey. Architecture. I'll be looking at the system design and making sure we don't paint ourselves into a corner.",
            choices = {
                { text = "Walk to the whiteboard. Start drawing the high-level boxes.", set = {arch_drew_boxes = true}, rel = {dev = 2, po = -1} },
                { text = "Ask Priya for the data model implications first.", set = {arch_asked_data = true}, rel = {po = 1, dev = 1} },
                { text = "Hold off. Listen first, design later.", set = {arch_held_off = true}, rel = {qa = 1} },
            }
        },

        -- Whiteboard path
        { speaker = "arch", expression = "whiteboarding", text = "Three boxes. Frontend, API, data store. Everything we discuss needs to fit into one of these three.", condition = "arch_drew_boxes" },
        { speaker = "dev", expression = "smiling", text = "Finally. Words I understand.", condition = "arch_drew_boxes" },
        { speaker = "po", expression = "defensive", text = "Can we do the boxes after the vision? I have slides.", condition = "arch_drew_boxes" },

        -- Data path
        { speaker = "arch", expression = "neutral", text = "Quick question Priya -- at the core, what shape is the data? Documents? Graphs? Time series?", condition = "arch_asked_data" },
        { speaker = "po", expression = "excited", text = "Uhh... all of them? It's flexible!", condition = "arch_asked_data" },
        { speaker = "arch", expression = "concerned", text = "(That's not flexibility. That's nothing.)", condition = "arch_asked_data" },

        -- Hold off path
        { speaker = "arch", expression = "neutral", text = "(Don't draw yet. You don't know what you're drawing. Listen.)", condition = "arch_held_off" },

        -- Converge
        { speaker = "arch", expression = "neutral", text = "Web, mobile, both?" },
        { speaker = "pm", expression = "cheerful", text = "Both! MVP in 6 weeks." },
        { speaker = "arch", expression = "concerned", text = "Six weeks. Two platforms. Shared backend, presumably." },
        { speaker = "dev", expression = "frustrated", text = "Six weeks." },
        { speaker = "arch", expression = "neutral", text = "(Three sprints from now we will be making decisions we cannot unmake. Today is when I draw the lines.)" },
        { speaker = "pm", expression = "cheerful", text = "Alright team! Standup tomorrow, 9 AM. 15 minutes!" },
        { speaker = "arch", expression = "neutral", text = "(I'll bring the whiteboard markers.)" },

        { text = "", goto = "day2" }
    }
}
