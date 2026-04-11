return {
    title = "Day 13 -- Monday",
    subtitle = "The Feedback",
    narration = "Demo done. The director sent feedback. The team is in the conference room. You brought the bug count.",

    bg = "meeting_room",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "qa", expression = "deadpan", text = "Monday. Coffee. The bug tracker is showing 14 open. Down from 47. I am cautiously not unhappy." },

        { speaker = "pm", expression = "neutral", text = "Team meeting. I have the feedback from leadership." },
        { speaker = "dev", expression = "neutral", text = "On a scale of 'fired' to 'promoted,' where are we?" },
        { speaker = "pm", expression = "cheerful", text = "They liked it. With caveats." },
        { speaker = "po", expression = "neutral", text = "What kind of caveats?" },

        { speaker = "pm", expression = "neutral", text = "They said the demo felt focused and professional. They want more depth next time.", condition = "polished_subset" },
        { speaker = "pm", expression = "neutral", text = "They appreciated the ambition. They noticed some rough edges. Specifically the search.", condition = "showed_everything" },
        { speaker = "pm", expression = "cheerful", text = "Direct quote: 'Finally, a team that tells us the truth.'", condition = "honest_demo" },

        { speaker = "qa", expression = "smirk", text = "(They liked the truth. The truth came from QA. I am writing this down.)" },

        -- Verdict
        { speaker = "pm", expression = "neutral", text = "Bottom line: greenlit for another sprint. Two more weeks." },
        { speaker = "po", expression = "excited", text = "Two more weeks! We can--" },
        { speaker = "dev", expression = "neutral", text = "Priya." },
        { speaker = "po", expression = "neutral", text = "Right. Retro first. Sorry." },

        -- Retro
        { speaker = "pm", expression = "neutral", text = "Retro time. What went well, what didn't, what changes." },

        { speaker = "dev", expression = "neutral", text = "What went well: we shipped something. What didn't: everything else." },
        { speaker = "arch", expression = "concerned", text = "What went well: the architecture held up. What didn't: I should have been more flexible." },
        { speaker = "ux", expression = "neutral", text = "What went well: the team eventually paired. What didn't: it took us three weeks." },
        { speaker = "po", expression = "excited", text = "What went well: the vision is alive! What didn't: I changed it too many times." },

        { speaker = "pm", expression = "neutral", text = "Riley?" },

        { speaker = "qa", expression = "neutral", text = "(QA at the retro. Asked. Listened to. Three honest answers.)",
            choices = {
                { text = "What didn't: QA was brought in too late. We need to be in design reviews from day one.", set = {retro_research = true}, rel = {dev = 1, ux = 1, arch = 1} },
                { text = "What didn't: process broke. We need a real bug triage cadence, not 'QA mentions it in standup.'", set = {retro_communication = true}, rel = {dev = 2, pm = 1, arch = 1} },
                { text = "What went well: this team. Genuinely. Best collaboration I've had. The trust got built.", set = {retro_trust = true}, rel = {pm = 1, ux = 1, po = 1, dev = 1, arch = 1} },
            }
        },

        { speaker = "pm", expression = "neutral", text = "QA in design reviews from day one. Booked.", condition = "retro_research" },
        { speaker = "dev", expression = "smiling", text = "Triage cadence. Twice a week. I'm in.", condition = "retro_communication" },
        { speaker = "po", expression = "neutral", text = "I'm framing that one.", condition = "retro_trust" },

        { speaker = "qa", expression = "deadpan", text = "(The retro. Where teams either learn or repeat.)" },

        { text = "", goto = "day14" }
    }
}
