return {
    title = "Day 14 -- Friday",
    subtitle = "Last Day",
    narration = "The final standup. The last words. Fifteen days compressed into goodbye.",

    bg = "break_room",
    bgm = "late_night",

    dialogue = {
        { speaker = "dev", expression = "tired", text = "Friday. Last day of the project. Two sprints. Fifteen days. About 12,000 lines of code. A lifetime." },

        { speaker = "pm", expression = "cheerful", text = "Last standup, everyone. For real this time." },
        { speaker = "dev", expression = "neutral", text = "Is it going to be 15 minutes?" },
        { speaker = "pm", expression = "neutral", text = "It's going to be however long it needs to be." },
        { speaker = "dev", expression = "smiling", text = "...that's actually the right answer." },

        -- Each character says their piece
        { speaker = "ux", expression = "neutral", text = "I want to say something. I came in expecting to fight for users. I ended up fighting for tradeoffs." },
        { speaker = "ux", expression = "neutral", text = "Sam, thank you for explaining the canyon. Casey, thank you for the diagrams. Even the ones I didn't read." },

        { speaker = "arch", expression = "concerned", text = "I owe the team an apology. I spent too much time on the 'right' architecture and not enough on the architecture that ships." },
        { speaker = "dev", expression = "smiling", text = "Casey... that's the most practical thing you've ever said." },
        { speaker = "arch", expression = "whiteboarding", text = "Don't get used to it. I still think we need microservices eventually." },

        { speaker = "qa", expression = "neutral", text = "I want to say: thank you for listening. Eventually. Most teams never do." },

        { speaker = "po", expression = "excited", text = "I know I was a lot. But Chimera is real now. That's because of all of you." },
        { speaker = "po", expression = "neutral", text = "And I promise -- next sprint, I'll read the bug reports. All of them." },
        { speaker = "qa", expression = "smirk", text = "I'll believe it when I see it." },
        { speaker = "po", expression = "neutral", text = "Fair." },

        { speaker = "pm", expression = "neutral", text = "Sam? Final thoughts from our lead dev?" },

        { speaker = "dev", expression = "neutral", text = "(One last thing. Make it count.)",
            choices = {
                { text = "We shipped something real. Imperfect. Held together. But real. I'm proud of us.", set = {final_proud = true}, rel = {pm = 1, ux = 1, qa = 1, po = 1, arch = 1} },
                { text = "Next time, we spike the unknowns first. Always. No exceptions.", set = {final_users = true}, rel = {qa = 2, arch = 1} },
                { text = "Best team I've worked with. I learned more in two weeks than in the last two years.", set = {final_grateful = true}, rel = {pm = 1, ux = 1, qa = 1, po = 1, arch = 1} },
            }
        },

        { speaker = "pm", expression = "neutral", text = "Well said. This standup was 11 minutes. A miracle.", condition = "final_proud" },
        { speaker = "arch", expression = "neutral", text = "Spikes first. Carved into the wall.", condition = "final_users" },
        { speaker = "ux", expression = "excited", text = "Don't make me cry in a standup, Sam.", condition = "final_grateful" },

        { speaker = "dev", expression = "tired", text = "(Fifteen days. Six people. One product. About 47 arguments. A few of them mattered.)" },
        { speaker = "dev", expression = "neutral", text = "(Time to see how this ends.)" },

        { text = "", goto = "day15" }
    }
}
