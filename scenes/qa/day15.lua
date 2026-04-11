return {
    title = "Day 15",
    subtitle = "The End",
    narration = "The sprints are over. The bug log remains. The bug log is closed at 18 open. That's the lowest it's ever been.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "qa", expression = "deadpan", text = "The project is over. The sprints are done. The bug log is at 18 open. I am almost happy." },
        { speaker = "qa", expression = "neutral", text = "Fifteen days. I came in as the new QA. I'm leaving as... what?" },
        { speaker = "qa", expression = "deadpan", text = "(I guess that depends on how many of those 18 cockroaches were the user's fault.)" },

        { text = "", goto = "$ending" }
    }
}
