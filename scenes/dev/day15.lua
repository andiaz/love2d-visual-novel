return {
    title = "Day 15",
    subtitle = "The End",
    narration = "The sprints are over. The Jira board remains. The git history will outlive us all.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "dev", expression = "tired", text = "The project is over. The sprints are done. The Jira board is still a mess." },
        { speaker = "dev", expression = "neutral", text = "Fifteen days. I came in as the new dev. I'm leaving as... what?" },
        { speaker = "dev", expression = "tired", text = "(I guess that depends on which commits I'm proud of.)" },

        { text = "", goto = "$ending" }
    }
}
