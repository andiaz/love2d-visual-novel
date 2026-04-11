return {
    title = "Day 13 -- Monday",
    subtitle = "The Feedback",
    narration = "Demo done. Email from the director sitting at the top of your inbox. Subject: 'Re: Chimera Demo.'",

    bg = "meeting_room",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "pm", expression = "neutral", text = "Monday. Coffee. Email open. Director's reply at the top." },
        { speaker = "pm", expression = "stressed", text = "(I have not opened it yet. I am gathering courage.)" },

        { speaker = "pm", expression = "cheerful", text = "Team meeting. I have the feedback from leadership." },
        { speaker = "dev", expression = "neutral", text = "On a scale of 'fired' to 'promoted,' where are we?" },
        { speaker = "pm", expression = "cheerful", text = "They liked it. With caveats." },
        { speaker = "po", expression = "neutral", text = "What kind of caveats?" },

        -- Reactions per demo style
        { speaker = "pm", expression = "neutral", text = "They said the demo felt focused and professional. They want more depth next time.", condition = "polished_subset" },
        { speaker = "pm", expression = "neutral", text = "They appreciated the ambition. But they noticed some rough edges.", condition = "showed_everything" },
        { speaker = "pm", expression = "cheerful", text = "Direct quote: 'Finally, a team that tells us the truth.'", condition = "honest_demo" },

        -- Verdict
        { speaker = "pm", expression = "neutral", text = "Bottom line: Project Chimera is greenlit for another sprint. Two more weeks." },
        { speaker = "po", expression = "excited", text = "Two more weeks! We can--" },
        { speaker = "dev", expression = "neutral", text = "Priya." },
        { speaker = "po", expression = "neutral", text = "Right. Retro first. Sorry." },

        -- Retro
        { speaker = "pm", expression = "neutral", text = "Retro time. What went well, what didn't, what changes." },

        { speaker = "dev", expression = "neutral", text = "What went well: we shipped something. What didn't: everything else." },
        { speaker = "qa", expression = "neutral", text = "What went well: we found 47 bugs before the demo. What didn't: 12 of them are still there." },
        { speaker = "arch", expression = "concerned", text = "What went well: the architecture held up. Barely. What didn't: I should have been more flexible." },
        { speaker = "po", expression = "excited", text = "What went well: the vision is alive! What didn't: I changed the vision too many times." },
        { speaker = "ux", expression = "neutral", text = "What went well: we eventually paired. What didn't: it took us three weeks to get there." },

        { speaker = "pm", expression = "neutral", text = "(My turn. The PM retro is the hardest. Everyone else delivered an artifact. I delivered... a process.)",
            choices = {
                { text = "I should have protected the team from scope earlier.", set = {retro_research = true}, rel = {dev = 2, qa = 1, ux = 1} },
                { text = "I should have brought design and dev into the same room from day one.", set = {retro_communication = true}, rel = {dev = 1, ux = 2, arch = 1} },
                { text = "Best team I've worked with. Process is rebuildable. Trust is what got us here.", set = {retro_trust = true}, rel = {pm = 1, ux = 1, qa = 1, po = 1, arch = 1, dev = 1} },
            }
        },

        { speaker = "pm", expression = "neutral", text = "Next sprint, scope is locked at sprint planning. No mid-sprint additions.", condition = "retro_research" },
        { speaker = "ux", expression = "excited", text = "Pairing every other day. Booked.", condition = "retro_communication" },
        { speaker = "dev", expression = "smiling", text = "That might be the best thing you've said all sprint.", condition = "retro_trust" },

        { speaker = "pm", expression = "stressed", text = "(The retro. Where teams either learn or repeat.)" },

        { text = "", goto = "day14" }
    }
}
