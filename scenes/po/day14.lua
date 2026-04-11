return {
    title = "Day 14 -- Friday",
    subtitle = "Last Day",
    narration = "The final standup. Last words. The team is letting their walls down. So are you.",

    bg = "break_room",
    bgm = "late_night",

    dialogue = {
        { speaker = "po", expression = "neutral", text = "Friday. Last day of the project. Two sprints. Fifteen days. The deck has 47 slides. The product has 9. I've learned a lot." },

        { speaker = "pm", expression = "cheerful", text = "Last standup, everyone. For real this time." },
        { speaker = "dev", expression = "neutral", text = "Is it going to be 15 minutes?" },
        { speaker = "pm", expression = "neutral", text = "It's going to be however long it needs to be." },
        { speaker = "dev", expression = "smiling", text = "...that's actually the right answer." },

        { speaker = "dev", expression = "neutral", text = "I want to say something. This project was a mess. But it was a good mess." },
        { speaker = "dev", expression = "smiling", text = "I've shipped products before where nobody talked to each other. At least here, we argued." },
        { speaker = "qa", expression = "neutral", text = "We argued a LOT." },
        { speaker = "dev", expression = "neutral", text = "Arguing means people care." },

        { speaker = "arch", expression = "concerned", text = "I owe the team an apology. I spent too much time on the 'right' architecture and not enough on the architecture that ships." },
        { speaker = "dev", expression = "smiling", text = "Casey, that's the most practical thing you've ever said." },

        { speaker = "qa", expression = "neutral", text = "I want to say: thank you for listening. Eventually. Most teams never do." },
        { speaker = "ux", expression = "neutral", text = "Best collaboration I've had. The pair sessions saved me." },

        { speaker = "pm", expression = "neutral", text = "Priya? You started this project six months ago with a deck. What do you want to say?" },

        { speaker = "po", expression = "neutral", text = "(They're handing me the floor. The whole team. After everything I put them through. I have to mean it.)",
            choices = {
                { text = "I know I was a lot. But Chimera is real now. That's because of all of you.", set = {final_proud = true}, rel = {dev = 1, ux = 1, qa = 1, pm = 1, arch = 1} },
                { text = "Next time, I bring you the problem first. The deck comes after we agree on the problem.", set = {final_users = true}, rel = {dev = 2, qa = 2, ux = 1} },
                { text = "I learned more about being a PO in 15 days than in 15 quarters. Thank you. Genuinely.", set = {final_grateful = true}, rel = {dev = 1, ux = 1, qa = 1, pm = 1, arch = 1} },
            }
        },

        { speaker = "qa", expression = "smirk", text = "I'm going to remember she said that.", condition = "final_proud" },
        { speaker = "dev", expression = "smiling", text = "Problem first. Deck after. I'm framing this.", condition = "final_users" },
        { speaker = "ux", expression = "excited", text = "Don't make me cry in a standup, Priya.", condition = "final_grateful" },

        { speaker = "po", expression = "neutral", text = "(Fifteen days. Six people. One product. The deck didn't ship. The team did. That has to mean something.)" },
        { speaker = "po", expression = "neutral", text = "(Time to see how this ends.)" },

        { text = "", goto = "day15" }
    }
}
