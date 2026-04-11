return {
    title = "Day 13 -- Monday",
    subtitle = "The Feedback",
    narration = "The demo is done. Leadership has spoken. Time to face the music.",

    bg = "meeting_room",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "dev", expression = "neutral", text = "Monday. The week after the demo. Two cups of coffee deep. Time to face the verdict." },

        { speaker = "pm", expression = "neutral", text = "Team meeting. I have the feedback from leadership." },
        { speaker = "dev", expression = "neutral", text = "On a scale of 'fired' to 'promoted,' where are we?" },
        { speaker = "pm", expression = "cheerful", text = "They liked it. With caveats." },
        { speaker = "po", expression = "neutral", text = "What kind of caveats?" },

        -- Reactions per demo style
        { speaker = "pm", expression = "neutral", text = "They said the demo felt focused and professional. They want more depth next time.", condition = "polished_subset" },
        { speaker = "pm", expression = "neutral", text = "They appreciated the ambition. But they noticed some rough edges. Specifically the search.", condition = "showed_everything" },
        { speaker = "pm", expression = "neutral", text = "They really appreciated the honesty. Direct quote: 'Finally, a team that tells us the truth.'", condition = "honest_demo" },

        -- Verdict
        { speaker = "pm", expression = "neutral", text = "Bottom line: Project Chimera is greenlit for another sprint. Two more weeks." },
        { speaker = "po", expression = "excited", text = "Two more weeks! We can add--" },
        { speaker = "dev", expression = "frustrated", text = "Priya." },
        { speaker = "po", expression = "neutral", text = "Right. Retro first. Sorry." },

        -- Retro
        { speaker = "pm", expression = "neutral", text = "Retro time. What went well, what didn't, what changes." },

        { speaker = "dev", expression = "neutral", text = "What went well: it didn't crash on stage. What didn't: I shipped 30 bugs and Riley caught 47." },
        { speaker = "qa", expression = "neutral", text = "Plus the 12 still in the backlog." },
        { speaker = "dev", expression = "tired", text = "Plus those." },
        { speaker = "arch", expression = "concerned", text = "What went well: the architecture held up. Barely. What didn't: I should have been more flexible early on." },
        { speaker = "ux", expression = "neutral", text = "What went well: the team eventually paired. What didn't: it took until week three." },
        { speaker = "po", expression = "excited", text = "What went well: vision is alive! What didn't: I changed it too many times." },

        { speaker = "pm", expression = "neutral", text = "Sam, your retro?" },
        { speaker = "dev", expression = "neutral", text = "(Honest. Be honest.)",
            choices = {
                { text = "I should have spiked the unknowns before writing a line of production code.", set = {retro_research = true}, rel = {arch = 1, qa = 1} },
                { text = "Design and dev need to be in the same room. Constantly. Not at handoff.", set = {retro_communication = true}, rel = {ux = 2, arch = 1} },
                { text = "We're a good team. We just need to trust each other earlier.", set = {retro_trust = true}, rel = {pm = 1, ux = 1, qa = 1, po = 1, arch = 1} },
            }
        },

        { speaker = "pm", expression = "neutral", text = "Good retro. Let's carry this into the final sprint.", condition = "retro_research" },
        { speaker = "ux", expression = "excited", text = "Pairing sessions every other day. Done. I'll book the room.", condition = "retro_communication" },
        { speaker = "pm", expression = "neutral", text = "That might be the most important thing anyone's said in this project.", condition = "retro_trust" },

        { speaker = "dev", expression = "tired", text = "(The retro. Where teams either learn or repeat.)" },

        { text = "", goto = "day14" }
    }
}
