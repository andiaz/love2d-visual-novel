return {
    title = "Day 14 -- Friday",
    subtitle = "Last Day",
    narration = "The final standup. Last words. Fifteen days, six people, one product. You held the room together. Or you didn't.",

    bg = "break_room",
    bgm = "late_night",

    dialogue = {
        { speaker = "pm", expression = "stressed", text = "Friday. Last day of the project. Two sprints. Fifteen days. Forty-three meetings. A lifetime." },

        { speaker = "pm", expression = "cheerful", text = "Last standup, everyone. For real this time." },
        { speaker = "dev", expression = "neutral", text = "Is it going to be 15 minutes?" },
        { speaker = "pm", expression = "neutral", text = "It's going to be however long it needs to be." },
        { speaker = "dev", expression = "smiling", text = "...that's actually the right answer." },
        { speaker = "pm", expression = "cheerful", text = "(Took me fifteen days to learn it.)" },

        -- Each character says their piece
        { speaker = "dev", expression = "neutral", text = "I want to say something. This project was a mess. But it was a good mess." },
        { speaker = "dev", expression = "smiling", text = "I've shipped products before where nobody talked to each other. At least here, we argued." },
        { speaker = "qa", expression = "neutral", text = "We argued a LOT." },
        { speaker = "dev", expression = "neutral", text = "Arguing means people care." },

        { speaker = "arch", expression = "concerned", text = "I owe the team an apology. I spent too much time on the 'right' architecture and not enough on the architecture that ships." },
        { speaker = "dev", expression = "smiling", text = "Casey... that's the most practical thing you've ever said." },
        { speaker = "arch", expression = "whiteboarding", text = "Don't get used to it. I still think we need microservices eventually." },

        { speaker = "qa", expression = "neutral", text = "I want to say: thank you for listening. Eventually. Most teams never do." },
        { speaker = "ux", expression = "neutral", text = "Best collaboration I've had. The pair sessions saved me." },

        { speaker = "po", expression = "excited", text = "I know I was a lot. But Chimera is real now. That's because of all of you." },
        { speaker = "po", expression = "neutral", text = "And I promise -- next sprint, I'll read the bug reports. All of them." },
        { speaker = "qa", expression = "smirk", text = "I'll believe it when I see it." },
        { speaker = "po", expression = "neutral", text = "Fair." },

        { speaker = "dev", expression = "neutral", text = "Jordan? You're up. PM gets the last word." },

        { speaker = "pm", expression = "neutral", text = "(Five faces. Ten weeks. The right thing to say is somewhere in there.)",
            choices = {
                { text = "We built something real. Imperfect, but real. I'm proud of all of you.", set = {final_proud = true}, rel = {dev = 1, ux = 1, qa = 1, po = 1, arch = 1} },
                { text = "Next time, the team comes first. Process serves people, not the other way around.", set = {final_users = true}, rel = {dev = 1, qa = 2, ux = 1} },
                { text = "I learned more about leading a team in 15 days than in 15 sprints. Thank you.", set = {final_grateful = true}, rel = {dev = 1, ux = 1, qa = 1, po = 1, arch = 1} },
            }
        },

        { speaker = "dev", expression = "smiling", text = "This standup was 11 minutes. A miracle.", condition = "final_proud" },
        { speaker = "qa", expression = "smirk", text = "Process serves people. I'm writing that down.", condition = "final_users" },
        { speaker = "ux", expression = "excited", text = "Don't make me cry in a standup, Jordan.", condition = "final_grateful" },

        { speaker = "pm", expression = "stressed", text = "(Fifteen days. Six people. One product. About 47 risk register entries. We hit one of them.)" },
        { speaker = "pm", expression = "neutral", text = "(Time to see how this ends.)" },

        { text = "", goto = "day15" }
    }
}
