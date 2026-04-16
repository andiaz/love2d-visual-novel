return {
    title = "Day 13 -- Monday",
    subtitle = "The Feedback",
    narration = "Demo done. The director sent feedback. The architecture diagram on your second monitor has been revised three times since Friday. Nobody asked you to revise it.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- Morning at desk: reading the email privately
        { speaker = "arch", expression = "concerned", text = "Monday morning. I'm at my desk. The architecture diagram is on my second monitor. I revised it twice over the weekend." },
        { speaker = "arch", expression = "neutral", text = "Three lines moved. Two boxes split. One entire service removed. Subtraction is harder than addition." },
        { speaker = "arch", expression = "concerned", text = "(The director's email is in my inbox. I'm reading it for technical feedback. There is none. Leadership does not think in boxes and arrows.)" },
        { speaker = "arch", expression = "neutral", text = "I open the debt log instead. Fourteen entries. I have written decision rationale for each one. The rationale is mostly 'we ran out of time.'" },

        { bg = "meeting_room" },

        -- Team meeting: leadership feedback
        { speaker = "pm", expression = "neutral", text = "Alright, team. Feedback from leadership." },
        { speaker = "dev", expression = "neutral", text = "On a scale of 'fired' to 'promoted,' where are we?" },
        { speaker = "pm", expression = "cheerful", text = "They liked it. With caveats." },
        { speaker = "po", expression = "neutral", text = "What kind of caveats?" },

        -- Conditional feedback based on demo approach
        { speaker = "pm", expression = "neutral", text = "They said the demo felt focused. Professional. They want more depth next time, but they respect the discipline.", condition = "polished_subset" },
        { speaker = "arch", expression = "neutral", text = "(Simple sold. The three-box diagram did more than the fourteen-box one ever could. There is a lesson in that.)", condition = "polished_subset" },

        { speaker = "pm", expression = "neutral", text = "They appreciated the ambition. But they flagged the rough edges. Specifically the search and loading times.", condition = "showed_everything" },
        { speaker = "arch", expression = "concerned", text = "(The rough edges are architectural. The search indexes are provisional. I knew this. I showed it anyway.)", condition = "showed_everything" },

        { speaker = "pm", expression = "cheerful", text = "Direct quote: 'Finally, a team that tells us the truth.'", condition = "honest_demo" },
        { speaker = "arch", expression = "neutral", text = "(The debt log was the truth. Documenting what you know is provisional -- that is the architect's version of honesty.)", condition = "honest_demo" },

        -- The verdict
        { speaker = "pm", expression = "neutral", text = "Good news: leadership approved a second sprint for Chimera. We've got two more weeks." },
        { speaker = "po", expression = "excited", text = "Another sprint! I already have ideas for--" },
        { speaker = "dev", expression = "neutral", text = "Priya." },
        { speaker = "po", expression = "neutral", text = "Fine. Retro. I'll hold my ideas." },
        { speaker = "arch", expression = "neutral", text = "(The impulse to plan before reflecting. I understand it. I have the same impulse. Mine just involves more diagrams.)" },

        { text = "..." },

        -- Retro: expanded, with callbacks
        { speaker = "pm", expression = "neutral", text = "Retro. What worked. What didn't. What changes." },

        -- Sam's retro (varies based on flags)
        { speaker = "dev", expression = "neutral", text = "What worked: Casey's architecture actually held when we pivoted. What didn't: we should have spiked earlier.", condition = "paired_with_dev" },
        { speaker = "dev", expression = "neutral", text = "What worked: we shipped. What didn't: too much time debating patterns instead of building.", condition = {paired_with_dev = nil} },

        -- Riley's retro
        { speaker = "qa", expression = "neutral", text = "What worked: someone listened when I filed the edge case bugs. What didn't: it took until week two.", condition = "backed_riley" },
        { speaker = "qa", expression = "deadpan", text = "What didn't work: QA was an afterthought for the first ten days. Again.", condition = {backed_riley = nil} },

        -- Alex's retro
        { speaker = "ux", expression = "neutral", text = "What worked: we found a pairing rhythm. What didn't: the handoff was rough for the first three weeks." },

        -- Priya's retro
        { speaker = "po", expression = "neutral", text = "What worked: the vision survived. What didn't: I changed it too many times. I own that." },

        { speaker = "pm", expression = "neutral", text = "Casey?" },

        { speaker = "arch", expression = "concerned", text = "(The architect's hardest sentence is 'I was wrong about this.' The second hardest is choosing which thing I was wrong about.)",
            choices = {
                { text = "I drew from intuition instead of validating. Architecture is a science, not an art. Research first.", set = {retro_research = true}, rel = {dev = 2, qa = 1, ux = 1} },
                { text = "I communicated in diagrams nobody read. Next time: ADRs, plain English, whiteboard sessions with everyone.", set = {retro_communication = true}, rel = {dev = 1, ux = 2, pm = 1} },
                { text = "The architecture that ships is more valuable than the architecture I dreamed of. This team taught me that.", set = {retro_trust = true}, rel = {dev = 1, ux = 1, qa = 1, pm = 1, po = 1} },
            }
        },

        { speaker = "pm", expression = "neutral", text = "Validate first. We're adding decision records to the process.", condition = "retro_research" },
        { speaker = "dev", expression = "smiling", text = "ADRs. Plain English. About time, Casey.", condition = "retro_communication" },
        { speaker = "qa", expression = "smirk", text = "Casey learned from the team. Mark the calendar.", condition = "retro_trust" },

        { text = "..." },

        -- Post-retro: 1-on-1 (conditional on relationship)
        { bg = "break_room", bgm = "late_night" },

        { speaker = "arch", expression = "concerned", text = "After the retro I drift to the break room. The whiteboard on the wall is blank. Someone erased my diagram." },
        { speaker = "arch", expression = "neutral", text = "(The architecture exists in code now. Not on the board. That is progress.)" },

        -- High dev relationship
        { speaker = "dev", expression = "neutral", text = "Casey. Got a minute?", condition = {rel_dev_gte = 5} },
        { speaker = "arch", expression = "neutral", text = "Always.", condition = {rel_dev_gte = 5} },
        { speaker = "dev", expression = "smiling", text = "The spike sessions were actually useful. Your patterns made the refactor possible.", condition = {rel_dev_gte = 5} },
        { speaker = "arch", expression = "neutral", text = "(Sam is complimenting my patterns. I should not explain why the patterns work. I should just say thank you.)", condition = {rel_dev_gte = 5} },
        { speaker = "arch", expression = "neutral", text = "Thank you. That means a lot coming from you.", condition = {rel_dev_gte = 5} },

        -- High QA relationship (fallback)
        { speaker = "qa", expression = "neutral", text = "Casey. Quick word.", condition = {rel_qa_gte = 5, rel_dev_lt = 5} },
        { speaker = "arch", expression = "neutral", text = "Of course.", condition = {rel_qa_gte = 5, rel_dev_lt = 5} },
        { speaker = "qa", expression = "neutral", text = "Your edge case handling improved after I filed those bugs. I noticed.", condition = {rel_qa_gte = 5, rel_dev_lt = 5} },
        { speaker = "arch", expression = "concerned", text = "(Riley noticed the architecture improved. QA sees what nobody else sees. I should have listened sooner.)", condition = {rel_qa_gte = 5, rel_dev_lt = 5} },

        -- Default: alone with the whiteboard
        { speaker = "arch", expression = "concerned", text = "The break room is empty. I stare at the blank whiteboard. My hand reaches for a marker.", condition = {rel_dev_lt = 5, rel_qa_lt = 5} },
        { speaker = "arch", expression = "neutral", text = "I put the marker down. The best architecture right now is rest.", condition = {rel_dev_lt = 5, rel_qa_lt = 5} },

        { text = "..." },

        -- Second choice: forward direction
        { speaker = "arch", expression = "concerned", text = "(One more sprint. What does the architecture need?)",
            choices = {
                { text = "Consolidate. Reduce the boxes. Make what exists robust before adding new ones.", set = {forward_cautious = true}, rel = {dev = 1, qa = 1} },
                { text = "Extend. The foundation is solid. Build the services we deferred.", set = {forward_ambitious = true}, rel = {po = 1, ux = 1} },
            }
        },

        { speaker = "arch", expression = "neutral", text = "(Fewer boxes. Stronger boundaries. Simplicity as a discipline, not a compromise.)", condition = "forward_cautious" },
        { speaker = "arch", expression = "whiteboarding", text = "(The deferred services are ready. The patterns are proven. Time to build.)", condition = "forward_ambitious" },

        { text = "", goto = "day14" }
    }
}
