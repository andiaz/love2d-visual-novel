return {
    title = "Day 14 -- Friday",
    subtitle = "Last Day",
    narration = "The final standup. Last words. Fifteen days. You filed 47 bugs. They actually listened to a few.",

    bg = "break_room",
    bgm = "late_night",

    dialogue = {
        { speaker = "qa", expression = "deadpan", text = "Friday. Last day of the project. Two sprints. Fifteen days. Filed bugs: 89. Closed: 71. The 18 still open are the cockroaches." },

        { speaker = "pm", expression = "cheerful", text = "Last standup, everyone. For real this time." },
        { speaker = "dev", expression = "neutral", text = "Is it going to be 15 minutes?" },
        { speaker = "pm", expression = "neutral", text = "It's going to be however long it needs to be." },
        { speaker = "qa", expression = "smirk", text = "(Right answer. Took 15 days.)" },

        { speaker = "dev", expression = "neutral", text = "I want to say something. This project was a mess. But it was a good mess." },
        { speaker = "dev", expression = "smiling", text = "I've shipped products before where nobody talked to each other. At least here, we argued." },
        { speaker = "qa", expression = "deadpan", text = "We argued a LOT." },
        { speaker = "dev", expression = "neutral", text = "Arguing means people care." },

        { speaker = "arch", expression = "concerned", text = "I owe the team an apology. I spent too much time on the 'right' architecture and not enough on the architecture that ships." },
        { speaker = "dev", expression = "smiling", text = "Casey, that's the most practical thing you've ever said." },

        { speaker = "po", expression = "excited", text = "I know I was a lot. But Chimera is real now. That's because of all of you." },
        { speaker = "po", expression = "neutral", text = "And I promise -- next sprint, I'll read the bug reports. All of them." },
        { speaker = "qa", expression = "smirk", text = "I'll believe it when I see it." },
        { speaker = "po", expression = "neutral", text = "Fair." },

        { speaker = "pm", expression = "neutral", text = "Riley? Final thoughts from the conscience of the project?" },
        { speaker = "qa", expression = "deadpan", text = "(QA gets the last word. They are giving QA the last word. I am going to be normal about this.)" },

        { speaker = "qa", expression = "neutral", text = "(One thing. Make it count.)",
            choices = {
                { text = "Thank you for listening. Eventually. Most teams never do.", set = {final_proud = true}, rel = {dev = 1, ux = 1, pm = 1, po = 1, arch = 1} },
                { text = "Next time, QA from day one. Not as a stage gate. As a teammate.", set = {final_users = true}, rel = {dev = 2, ux = 1, pm = 1} },
                { text = "Best team I've ever broken things for. I'll miss this.", set = {final_grateful = true}, rel = {dev = 1, ux = 1, pm = 1, po = 1, arch = 1} },
            }
        },

        { speaker = "ux", expression = "excited", text = "Riley. Don't make me cry in a standup.", condition = "final_proud" },
        { speaker = "dev", expression = "smiling", text = "QA from day one. I'm putting it in the team charter.", condition = "final_users" },
        { speaker = "po", expression = "neutral", text = "I'm going to remember this.", condition = "final_grateful" },

        { speaker = "qa", expression = "deadpan", text = "(Fifteen days. Six people. One product. Forty-seven bugs that became 89 that became closed. Time to see how this ends.)" },

        { text = "", goto = "day15" }
    }
}
