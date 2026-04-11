return {
    title = "Day 11 -- Thursday",
    subtitle = "The Breaking Point",
    narration = "One day left. Sam is going to attack the architecture in front of the whole team. He's right. He's also wrong. Both can be true.",

    bg = "office_day",
    bgm = "tension",

    dialogue = {
        { speaker = "arch", expression = "concerned", text = "Thursday. One day before the demo. I have a feeling Sam is about to argue with my architecture in public. I have rehearsed three responses." },

        { speaker = "pm", expression = "neutral", text = "Morning standup. 15 minutes. I actually mean it this time." },
        { speaker = "dev", expression = "tired", text = "Fixed 9 bugs last night. Three new ones appeared. Code whack-a-mole." },
        { speaker = "qa", expression = "smirk", text = "Search now works. Returns results in random order." },

        -- Casey speaks up
        { speaker = "arch", expression = "concerned", text = "I need to bring something up. We're building this wrong." },
        { speaker = "dev", expression = "frustrated", text = "Casey. Not now." },
        { speaker = "arch", expression = "whiteboarding", text = "If we'd used the architecture I proposed in week one, we wouldn't have these scaling issues." },
        { speaker = "dev", expression = "frustrated", text = "If we'd used your architecture, we'd still be configuring Kubernetes." },
        { speaker = "arch", expression = "concerned", text = "(Ouch. He's not wrong. He's also not right. The microservices proposal was overkill. The current architecture is undercooked. There is a true middle nobody has named.)" },
        { speaker = "arch", expression = "concerned", text = "That's not fair--" },
        { speaker = "dev", expression = "frustrated", text = "What's not fair is redesigning the foundation the day before the demo!" },
        { speaker = "pm", expression = "stressed", text = "Okay, okay. Let's take a breath--" },

        { speaker = "po", expression = "neutral", text = "Can I just say something? I know I've changed requirements a lot--" },
        { speaker = "qa", expression = "deadpan", text = "A lot." },
        { speaker = "po", expression = "defensive", text = "But it's because I CARE!" },
        { speaker = "qa", expression = "deadpan", text = "Amazing would be nice. Functional would be a start." },

        { speaker = "qa", expression = "deadpan", text = "Actually, you know what? I'm done being polite." },
        { speaker = "qa", expression = "deadpan", text = "I've filed 47 bugs. Forty-seven. Same number as Priya's slides. Nobody listens to QA until everything's on fire." },
        { speaker = "qa", expression = "deadpan", text = "And now it's on fire and you're all surprised." },

        { speaker = "pm", expression = "neutral", text = "..." },
        { speaker = "arch", expression = "concerned", text = "(Riley said the quiet part. The room went quiet. Sam is quiet because Sam is wrong about Riley. I am quiet because I am wrong about Sam.)" },

        { speaker = "arch", expression = "neutral", text = "(Three options. The architect's response shapes how the team handles every conflict from here.)",
            choices = {
                { text = "Back Riley publicly. 'She's been right about edge cases since week one. We should have listened.'", set = {backed_riley = true}, rel = {qa = 3, ux = 1, dev = 1} },
                { text = "Refocus the room. 'Postmortems later. Right now, what does the architecture need to survive tomorrow?'", set = {refocused_team = true}, rel = {dev = 2, pm = 2, qa = 1} },
                { text = "Take it on myself. 'My architecture proposal in week one was wrong. The current one is also wrong. I should have proposed the middle. I'm sorry.'", set = {owned_mistakes = true}, rel = {dev = 2, qa = 1, ux = 1, pm = 1, po = 1} },
            }
        },

        -- Backed
        { speaker = "arch", expression = "neutral", text = "Riley has been right about edge cases since week one. The architecture should have been listening.", condition = "backed_riley" },
        { speaker = "qa", expression = "smirk", text = "...thank you, Casey.", condition = "backed_riley" },

        -- Refocused
        { speaker = "arch", expression = "neutral", text = "Postmortems later. Right now: what does the architecture need to survive tomorrow? List, please.", condition = "refocused_team" },
        { speaker = "dev", expression = "neutral", text = "Cache layer patch. Search index rebuild. Two database indexes.", condition = "refocused_team" },
        { speaker = "arch", expression = "neutral", text = "I'll write the migrations.", condition = "refocused_team" },

        -- Owned
        { speaker = "arch", expression = "concerned", text = "My week-one proposal was wrong. The current architecture is also wrong. I should have proposed the middle. I am sorry to all of you. Especially you, Sam.", condition = "owned_mistakes" },
        { speaker = "dev", expression = "neutral", text = "...Casey. I am framing this moment.", condition = "owned_mistakes" },
        { speaker = "arch", expression = "concerned", text = "(That was the hardest sentence I have ever said in a standup. I have said many sentences in many standups.)", condition = "owned_mistakes" },

        -- End
        { speaker = "pm", expression = "neutral", text = "That standup was 28 minutes. New record. For real this time." },
        { speaker = "arch", expression = "concerned", text = "(Tomorrow is demo day. The architecture is bruised. The team is honest. That trade is worth more than I knew.)" },

        { text = "", goto = "day12" }
    }
}
