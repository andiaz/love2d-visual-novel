return {
    bg = "office_day",
    bgm = "theme",

    dialogue = {
        { speaker = "ux", expression = "neutral", text = "Monday. The week after the demo. Time to face the music." },

        -- Leadership feedback arrives
        { speaker = "pm", expression = "neutral", text = "Team meeting. I have the feedback from leadership." },
        { speaker = "dev", expression = "neutral", text = "On a scale of 'fired' to 'promoted,' where are we?" },
        { speaker = "pm", expression = "neutral", text = "They liked it. With caveats." },
        { speaker = "po", expression = "neutral", text = "What kind of caveats?" },

        -- Different reactions based on demo approach
        { speaker = "pm", expression = "neutral", text = "They said the demo felt focused and professional. They want more depth next time.", condition = "polished_subset" },
        { speaker = "pm", expression = "neutral", text = "They appreciated the ambition. But they noticed some rough edges. Specifically the search.", condition = "showed_everything" },
        { speaker = "pm", expression = "neutral", text = "They really appreciated the honesty. Direct quote: 'Finally, a team that tells us the truth.'", condition = "honest_demo" },

        -- The verdict
        { speaker = "pm", expression = "neutral", text = "Bottom line: Project Chimera is greenlit for another sprint. We have two more weeks." },
        { speaker = "po", expression = "neutral", text = "Two more weeks! We can add so much—" },
        { speaker = "dev", expression = "neutral", text = "Priya." },
        { speaker = "po", expression = "neutral", text = "Right. Retrospective first. Sorry." },

        -- Retrospective
        { speaker = "pm", expression = "neutral", text = "So. Retro time. What went well? What didn't? What do we change?" },

        { speaker = "dev", expression = "neutral", text = "What went well: we shipped something. What didn't: everything else." },
        { speaker = "qa", expression = "neutral", text = "What went well: we found 47 bugs before the demo. What didn't: 12 of them are still there." },
        { speaker = "arch", expression = "neutral", text = "What went well: the architecture held up. Barely. What didn't: I should have been more flexible early on." },
        { speaker = "po", expression = "neutral", text = "What went well: the vision is alive! What didn't: I changed the vision too many times." },
        { speaker = "pm", expression = "neutral", text = "Alex? Your retro?" },

        { speaker = "ux", expression = "neutral", text = "Honest reflection time.",
            choices = {
                { text = "I should have fought harder for user research from day one.", set = {retro_research = true}, rel = {qa = 1, dev = 1} },
                { text = "We need better communication between design and dev.", set = {retro_communication = true}, rel = {dev = 2, arch = 1} },
                { text = "We're a good team. We just need to trust each other more.", set = {retro_trust = true}, rel = {pm = 1, po = 1, qa = 1, dev = 1, arch = 1} },
            }
        },

        { speaker = "pm", expression = "neutral", text = "Good retro, everyone. Let's carry this into the final sprint.", condition = "retro_research" },
        { speaker = "dev", expression = "neutral", text = "Agreed. Pairing sessions every other day.", condition = "retro_communication" },
        { speaker = "pm", expression = "neutral", text = "That might be the most important thing anyone's said in this project.", condition = "retro_trust" },

        { speaker = "ux", expression = "neutral", text = "The retro. Where teams either learn or repeat." },

        { text = "", goto = "day14" }
    }
}
