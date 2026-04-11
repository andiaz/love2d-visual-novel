return {
    title = "Day 15",
    subtitle = "The End",
    narration = "The sprints are over. The Jira board remains. The risk register is closed.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "pm", expression = "neutral", text = "The project is over. The sprints are done. The Jira board is still a mess." },
        { speaker = "pm", expression = "neutral", text = "Fifteen days. I came in as the new PM. I'm leaving as... what?" },
        { speaker = "pm", expression = "stressed", text = "(I guess that depends on whose calendar I protected and whose I didn't.)" },

        { text = "", goto = "$ending" }
    }
}
