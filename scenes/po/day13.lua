return {
    title = "Day 13 -- Monday",
    subtitle = "The Feedback",
    narration = "Demo done. Leadership has spoken. The director sent you an email. You haven't opened it. You're afraid.",

    bg = "meeting_room",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "po", expression = "neutral", text = "Monday. Coffee. Inbox. Director's email at the top." },
        { speaker = "po", expression = "defensive", text = "(Six months of work. One reply. One verdict. Open it.)" },

        { speaker = "pm", expression = "neutral", text = "Team meeting. I have the feedback from leadership." },
        { speaker = "dev", expression = "neutral", text = "On a scale of 'fired' to 'promoted,' where are we?" },
        { speaker = "pm", expression = "cheerful", text = "They liked it. With caveats." },
        { speaker = "po", expression = "neutral", text = "(They liked it. THEY LIKED IT.)" },

        -- Reactions per demo style
        { speaker = "pm", expression = "neutral", text = "They said the demo felt focused and professional. They want more depth next time.", condition = "polished_subset" },
        { speaker = "pm", expression = "neutral", text = "They appreciated the ambition. But they noticed some rough edges.", condition = "showed_everything" },
        { speaker = "pm", expression = "cheerful", text = "Direct quote: 'Finally, a team that tells us the truth.'", condition = "honest_demo" },

        -- Verdict
        { speaker = "pm", expression = "neutral", text = "Bottom line: Project Chimera is greenlit for another sprint. Two more weeks." },
        { speaker = "po", expression = "excited", text = "Two more weeks! We can--" },
        { speaker = "dev", expression = "neutral", text = "Priya." },
        { speaker = "po", expression = "neutral", text = "Right. Retro first. Sorry." },
        { speaker = "po", expression = "neutral", text = "(I am LITERALLY learning in real time. This is humbling. This is also growth.)" },

        -- Retro
        { speaker = "pm", expression = "neutral", text = "Retro time. What went well, what didn't, what changes." },

        { speaker = "dev", expression = "neutral", text = "What went well: we shipped something. What didn't: everything else." },
        { speaker = "qa", expression = "neutral", text = "What went well: we found 47 bugs before the demo. What didn't: 12 of them are still there." },
        { speaker = "arch", expression = "concerned", text = "What went well: the architecture held up. Barely. What didn't: I should have been flexible earlier." },
        { speaker = "ux", expression = "neutral", text = "What went well: the team eventually paired. What didn't: it took us three weeks." },

        { speaker = "pm", expression = "neutral", text = "Priya?" },
        { speaker = "po", expression = "neutral", text = "(Honest. The team is asking me to be honest.)",
            choices = {
                { text = "I changed the requirements too much. I should have committed to scope earlier.", set = {retro_research = true}, rel = {dev = 2, qa = 1, arch = 1} },
                { text = "I should have been in the design and dev rooms more. I assumed the deck was enough.", set = {retro_communication = true}, rel = {ux = 2, dev = 1, arch = 1} },
                { text = "Best team I've ever worked with. The product is better because of all of you.", set = {retro_trust = true}, rel = {pm = 1, ux = 1, qa = 1, dev = 1, arch = 1} },
            }
        },

        { speaker = "pm", expression = "neutral", text = "Good retro. Let's carry this into the final sprint.", condition = "retro_research" },
        { speaker = "ux", expression = "excited", text = "If you're in the design room, I can keep you aligned. Deal.", condition = "retro_communication" },
        { speaker = "dev", expression = "smiling", text = "I'm going to put that on a sticky note above my monitor.", condition = "retro_trust" },

        { speaker = "po", expression = "neutral", text = "(The retro. Where teams either learn or repeat.)" },

        { text = "", goto = "day14" }
    }
}
