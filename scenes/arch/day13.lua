return {
    title = "Day 13 -- Monday",
    subtitle = "The Feedback",
    narration = "Demo done. The director sent feedback. Time for a retro. Time for the architect to admit which lines on the diagram were honest and which weren't.",

    bg = "meeting_room",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "arch", expression = "concerned", text = "Monday. Coffee. The architecture diagram is on my second monitor. I have spent the weekend revising it. Three lines moved. Two boxes split." },

        { speaker = "pm", expression = "neutral", text = "Team meeting. I have the feedback from leadership." },
        { speaker = "dev", expression = "neutral", text = "On a scale of 'fired' to 'promoted,' where are we?" },
        { speaker = "pm", expression = "cheerful", text = "They liked it. With caveats." },

        -- Reactions
        { speaker = "pm", expression = "neutral", text = "They said the demo felt focused and professional. They want more depth next time.", condition = "polished_subset" },
        { speaker = "pm", expression = "neutral", text = "They appreciated the ambition. They noticed some rough edges.", condition = "showed_everything" },
        { speaker = "pm", expression = "cheerful", text = "Direct quote: 'Finally, a team that tells us the truth.'", condition = "honest_demo" },

        -- Verdict
        { speaker = "pm", expression = "neutral", text = "Bottom line: greenlit for another sprint. Two more weeks." },
        { speaker = "po", expression = "excited", text = "Two more weeks! We can--" },
        { speaker = "dev", expression = "neutral", text = "Priya." },
        { speaker = "po", expression = "neutral", text = "Right. Retro first. Sorry." },

        -- Retro
        { speaker = "pm", expression = "neutral", text = "Retro time. What went well, what didn't, what changes." },

        { speaker = "dev", expression = "neutral", text = "What went well: we shipped. What didn't: everything else." },
        { speaker = "qa", expression = "neutral", text = "What went well: we found 47 bugs. What didn't: 12 of them are still there." },
        { speaker = "po", expression = "excited", text = "What went well: vision is alive! What didn't: I changed it too many times." },
        { speaker = "ux", expression = "neutral", text = "What went well: the team eventually paired. What didn't: it took us three weeks." },

        { speaker = "pm", expression = "neutral", text = "Casey?" },
        { speaker = "arch", expression = "concerned", text = "(My retro. The architect's hardest sentence is 'I was wrong about this.')",
            choices = {
                { text = "I should have validated my assumptions instead of drawing from intuition. Architecture is a science, not an art.", set = {retro_research = true}, rel = {dev = 2, qa = 1, ux = 1} },
                { text = "I should have communicated the architecture in formats other than diagrams nobody reads. ADRs. Plain English. Whiteboard sessions with everyone.", set = {retro_communication = true}, rel = {dev = 1, ux = 2, pm = 1} },
                { text = "I learned that the architecture that ships is more valuable than the architecture I dreamed of. The team taught me that.", set = {retro_trust = true}, rel = {dev = 1, ux = 1, qa = 1, pm = 1, po = 1} },
            }
        },

        { speaker = "pm", expression = "neutral", text = "Validate first. We're going to start writing decision records.", condition = "retro_research" },
        { speaker = "dev", expression = "smiling", text = "ADRs. About time.", condition = "retro_communication" },
        { speaker = "qa", expression = "smirk", text = "Casey is reformed. Mark the calendar.", condition = "retro_trust" },

        { speaker = "arch", expression = "concerned", text = "(The retro. Where teams either learn or repeat. Where architects either grow or calcify.)" },

        { text = "", goto = "day14" }
    }
}
