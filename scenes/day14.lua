return {
    title = "Day 14 — Friday",
    subtitle = "Last Day",
    narration = "The final standup. The last words. Fifteen days compressed into goodbye.",

    bg = "office_day",
    bgm = "theme",

    dialogue = {
        { speaker = "ux", expression = "neutral", text = "Friday. The last day of the project. Two sprints. Fifteen days. A lifetime." },

        -- Final day scenes
        { speaker = "pm", expression = "neutral", text = "Last standup, everyone. For real this time." },
        { speaker = "dev", expression = "neutral", text = "Is it going to be 15 minutes?" },
        { speaker = "pm", expression = "neutral", text = "It's going to be however long it needs to be." },
        { speaker = "dev", expression = "neutral", text = "...that's actually the right answer." },

        -- Each character says their piece
        { speaker = "dev", expression = "neutral", text = "I want to say something. This project was a mess. But it was a good mess." },
        { speaker = "dev", expression = "neutral", text = "I've shipped products before where nobody talked to each other. At least here, we argued." },
        { speaker = "qa", expression = "neutral", text = "We argued a LOT." },
        { speaker = "dev", expression = "neutral", text = "Arguing means people care." },

        { speaker = "arch", expression = "neutral", text = "I owe the team an apology. I spent too much time on the 'right' architecture and not enough time on the architecture that ships." },
        { speaker = "dev", expression = "neutral", text = "Casey... that's the most practical thing you've ever said." },
        { speaker = "arch", expression = "neutral", text = "Don't get used to it. I still think we need microservices eventually." },

        { speaker = "qa", expression = "neutral", text = "I want to say: thank you for listening. Eventually. Most teams never do." },

        { speaker = "po", expression = "neutral", text = "I know I was... a lot. But Chimera is real now. It exists. That's because of all of you." },
        { speaker = "po", expression = "neutral", text = "And I promise — next sprint, I'll read the bug reports. All of them." },
        { speaker = "qa", expression = "neutral", text = "I'll believe it when I see it." },
        { speaker = "po", expression = "neutral", text = "Fair." },

        { speaker = "pm", expression = "neutral", text = "Alex? Final thoughts from our UX lead?" },

        { speaker = "ux", expression = "neutral", text = "This is it. The last thing I say to this team.",
            choices = {
                { text = "We built something real. Imperfect, but real. I'm proud of us.", set = {final_proud = true}, rel = {pm = 1, dev = 1, qa = 1, po = 1, arch = 1} },
                { text = "Next time, we start with users. Not decks. Not architecture. Users.", set = {final_users = true}, rel = {qa = 2, dev = 1} },
                { text = "I learned more in two weeks than in two years. Thank you, all of you.", set = {final_grateful = true}, rel = {pm = 1, dev = 1, qa = 1, po = 1, arch = 1} },
            }
        },

        { speaker = "pm", expression = "neutral", text = "Well said. This standup was 11 minutes. A miracle.", condition = "final_proud" },
        { speaker = "po", expression = "neutral", text = "Users first. I'm writing that on the whiteboard.", condition = "final_users" },
        { speaker = "arch", expression = "neutral", text = "My whiteboard?", condition = "final_users" },
        { speaker = "dev", expression = "neutral", text = "Don't make me cry in a standup, Alex.", condition = "final_grateful" },

        -- End of story
        { speaker = "ux", expression = "neutral", text = "Fifteen days. Six people. One product. Countless arguments." },
        { speaker = "ux", expression = "neutral", text = "Time to see how this ends." },

        { text = "", goto = "day15" }
    }
}
