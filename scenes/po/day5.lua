return {
    title = "Day 5 -- Monday",
    subtitle = "The Weekend Idea",
    narration = "It's Monday. You had a thought over the weekend. The team is going to hate it. You're going to pitch it anyway.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "po", expression = "excited", text = "Monday morning. I had the BEST idea Saturday at 2 PM. I have been waiting all weekend to tell the team." },
        { speaker = "pm", expression = "cheerful", text = "Quick standup! 15 minutes, I promise!" },
        { speaker = "dev", expression = "neutral", text = "(It won't be 15 minutes.)" },

        { speaker = "po", expression = "excited", text = "So, I had a thought over the weekend..." },
        { speaker = "dev", expression = "frustrated", text = "(There it is.)" },
        { speaker = "po", expression = "excited", text = "What if Chimera also had real-time collaboration? Like Google Docs but in the knowledge base!" },
        { speaker = "arch", expression = "concerned", text = "Real-time collab is an entire product. Operational transforms, conflict resolution--" },
        { speaker = "po", expression = "defensive", text = "Can we just add it? How hard can it be?" },
        { speaker = "dev", expression = "frustrated", text = "'Can we just.' Three words that have launched a thousand rewrites." },

        -- Jordan tries to mediate
        { speaker = "pm", expression = "stressed", text = "Priya, is this a must-have for the demo?" },
        { speaker = "po", expression = "neutral", text = "Leadership mentioned 'collaboration' last week. I just want us covered." },
        { speaker = "po", expression = "neutral", text = "(They mentioned the word in passing. I built a feature around it. That's... what I do.)" },

        { speaker = "po", expression = "neutral", text = "(The team is staring at me. I have to choose what kind of PO I am, in this moment.)",
            choices = {
                { text = "Push it through. Real-time collab, full version. Sam will figure it out.", set = {absorbed_scope = true}, rel = {dev = -2, qa = -1, arch = -1, pm = 1} },
                { text = "Pull it back. Park it for next sprint. The team is right -- this is too much.", set = {fought_scope = true}, rel = {dev = 2, qa = 1, arch = 1, pm = -1} },
                { text = "Reframe it. Comments instead of co-editing. Smaller scope, same story for leadership.", set = {compromised_scope = true}, rel = {dev = 1, arch = 1, pm = 2, ux = 1} },
            }
        },

        -- Push through
        { speaker = "po", expression = "excited", text = "We're doing it. Sam, scope the work. I'll handle leadership.", condition = "absorbed_scope" },
        { speaker = "dev", expression = "frustrated", text = "Three more screens. Real-time sync. No backend.", condition = "absorbed_scope" },
        { speaker = "po", expression = "defensive", text = "(He doesn't see what I see. Six months from now, this feature will be the reason we exist.)", condition = "absorbed_scope" },

        -- Pull back
        { speaker = "po", expression = "neutral", text = "Forget I said anything. Park it. Next sprint. The team is too thin already." },
        { speaker = "po", expression = "neutral", text = "(That cost me. The deck just lost its centerpiece. But the team will still be here on Friday.)", condition = "fought_scope" },
        { speaker = "dev", expression = "smiling", text = "Did... did Priya just say no? To herself?", condition = "fought_scope" },
        { speaker = "qa", expression = "smirk", text = "Mark the calendar.", condition = "fought_scope" },

        -- Reframe
        { speaker = "po", expression = "neutral", text = "Counter-offer. Comments. Threaded comments. Same story, smaller build. Sam, can you do that?", condition = "compromised_scope" },
        { speaker = "arch", expression = "neutral", text = "Comments are reasonable. The infrastructure is manageable.", condition = "compromised_scope" },
        { speaker = "dev", expression = "neutral", text = "I can build a comment system. That's fine.", condition = "compromised_scope" },
        { speaker = "po", expression = "neutral", text = "Can we at least add emoji reactions?", condition = "compromised_scope" },
        { speaker = "dev", expression = "smiling", text = "Sure. Emoji reactions. The cornerstone of enterprise software.", condition = "compromised_scope" },

        -- End of day
        { speaker = "pm", expression = "neutral", text = "Great standup everyone! That was only... 42 minutes." },
        { speaker = "po", expression = "neutral", text = "(Scope creep. The disease that kills sprints. I am, allegedly, the disease.)" },

        { text = "", goto = "day6" }
    }
}
