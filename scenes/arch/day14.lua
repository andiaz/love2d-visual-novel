return {
    title = "Day 14 -- Friday",
    subtitle = "Last Day",
    narration = "The final standup. Last words. Fifteen days, six people, one architecture diagram nobody read in time. But somebody did, eventually.",

    bg = "break_room",
    bgm = "late_night",

    dialogue = {
        { speaker = "arch", expression = "concerned", text = "Friday. Last day of the project. Two sprints. Fifteen days. The architecture diagram has 11 boxes now. I started with 14. Subtraction is harder than addition." },

        { speaker = "pm", expression = "cheerful", text = "Last standup, everyone. For real this time." },
        { speaker = "dev", expression = "neutral", text = "Is it going to be 15 minutes?" },
        { speaker = "pm", expression = "neutral", text = "It's going to be however long it needs to be." },
        { speaker = "dev", expression = "smiling", text = "...that's actually the right answer." },

        { speaker = "dev", expression = "neutral", text = "I want to say something. This project was a mess. But it was a good mess." },
        { speaker = "dev", expression = "smiling", text = "I've shipped products before where nobody talked to each other. At least here, we argued." },
        { speaker = "qa", expression = "neutral", text = "We argued a LOT." },
        { speaker = "dev", expression = "neutral", text = "Arguing means people care." },

        { speaker = "qa", expression = "neutral", text = "I want to say: thank you for listening. Eventually. Most teams never do." },

        { speaker = "po", expression = "excited", text = "I know I was a lot. But Chimera is real now. That's because of all of you." },

        { speaker = "ux", expression = "neutral", text = "Best collaboration I've had. The pair sessions saved me." },

        { speaker = "pm", expression = "neutral", text = "Casey? Final thoughts from the architect?" },
        { speaker = "arch", expression = "concerned", text = "(I get the floor. The architect always wants the floor. The architect never knows what to do with it.)" },

        { speaker = "arch", expression = "neutral", text = "(Three options. Make it count.)",
            choices = {
                { text = "I owe the team an apology. I spent too much time on the right architecture and not enough on the architecture that ships.", set = {final_proud = true}, rel = {dev = 2, qa = 1, ux = 1, pm = 1, po = 1} },
                { text = "Next time, I draw less and listen more. The whiteboard is not the answer.", set = {final_users = true}, rel = {dev = 2, qa = 2, ux = 1} },
                { text = "Best team I've ever architected for. Sam, you challenged me. Riley, you grounded me. I'm grateful.", set = {final_grateful = true}, rel = {dev = 1, qa = 1, ux = 1, pm = 1, po = 1} },
            }
        },

        { speaker = "dev", expression = "smiling", text = "Casey... that's the most practical thing you've ever said.", condition = "final_proud" },
        { speaker = "arch", expression = "whiteboarding", text = "Don't get used to it. I still think we need microservices eventually.", condition = "final_proud" },
        { speaker = "qa", expression = "smirk", text = "I am writing 'Casey listens now' on the wall.", condition = "final_users" },
        { speaker = "dev", expression = "smiling", text = "Don't make me cry in a standup, Casey.", condition = "final_grateful" },

        { speaker = "arch", expression = "concerned", text = "(Fifteen days. Six people. One product. Eleven architectural boxes. Three of them I am proud of. The other eight, I am writing decision records for.)" },
        { speaker = "arch", expression = "concerned", text = "(Time to see how this ends.)" },

        { text = "", goto = "day15" }
    }
}
