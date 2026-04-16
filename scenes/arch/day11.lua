return {
    title = "Day 11 -- Thursday",
    subtitle = "The Breaking Point",
    narration = "One day left. Sam is going to attack the architecture in front of the whole team. He's right. He's also wrong. Both can be true.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "arch", expression = "concerned", text = "Thursday. One day before the demo. I have a feeling Sam is about to argue with my architecture in public. I have rehearsed three responses." },
        { speaker = "arch", expression = "concerned", text = "I slept four hours. The staging patches held overnight. The system diagram I redrew at 2 AM is pinned to my monitor." },

        { speaker = "pm", expression = "neutral", text = "Morning standup. Let's keep it tight." },
        { speaker = "dev", expression = "tired", text = "Fixed 9 bugs last night. Three new ones appeared. Code whack-a-mole." },
        { speaker = "qa", expression = "smirk", text = "Search now works. Returns results in random order." },
        { speaker = "arch", expression = "concerned", text = "(The search index I added last night fixed the crashes. It did not fix the sorting. That is Sam's code. I did not mention this.)" },

        { bgm = "tension" },

        -- Casey speaks up
        { speaker = "arch", expression = "concerned", text = "I need to bring something up. We're building this wrong." },
        { speaker = "dev", expression = "frustrated", text = "Casey. Not now." },
        { speaker = "arch", expression = "concerned", text = "The architecture I proposed in week one accounted for this kind of load. We chose not to use it." },
        { speaker = "dev", expression = "frustrated", text = "Your microservices proposal would have eaten the whole sprint in setup alone." },
        { speaker = "arch", expression = "concerned", text = "(Ouch. He's not wrong. He's also not right. The microservices proposal was overkill. The current architecture is undercooked. There is a true middle nobody has named.)" },
        { speaker = "arch", expression = "concerned", text = "That's not fair--" },
        { speaker = "dev", expression = "frustrated", text = "What's not fair is redesigning the foundation the day before the demo!" },
        { speaker = "arch", expression = "concerned", text = "(Sam is yelling. I do not yell. I process. These are two different ways of being hurt by the same architecture.)" },
        { speaker = "pm", expression = "stressed", text = "Okay, okay. Let's take a breath--" },

        { speaker = "po", expression = "neutral", text = "Look, I realize I've shifted the requirements more than once--" },
        { speaker = "qa", expression = "deadpan", text = "A lot." },
        { speaker = "po", expression = "defensive", text = "But it's because I CARE!" },
        { speaker = "qa", expression = "deadpan", text = "Functional first. We can worry about impressive once it stops crashing." },

        { speaker = "qa", expression = "deadpan", text = "Actually? I'm finished being diplomatic about this." },
        { speaker = "qa", expression = "deadpan", text = "I've filed 47 bugs. Forty-seven. Same number as Priya's slides. Nobody takes QA seriously until the system is down." },
        { speaker = "qa", expression = "deadpan", text = "The system is down. Are you surprised? Because I'm not." },

        { speaker = "pm", expression = "neutral", text = "..." },
        { speaker = "arch", expression = "concerned", text = "(Riley said the quiet part. The room went quiet. Sam is quiet because Sam is wrong about Riley. I am quiet because I am wrong about Sam.)" },
        { speaker = "arch", expression = "concerned", text = "(The architecture is under stress. So is every person in this room. Systems and humans fail the same way -- at the weakest joint, under maximum load.)" },

        -- Callback: took_ownership (day 8)
        { speaker = "arch", expression = "concerned", text = "(I owned the architectural failures on Day 8. That admission cost me. It also bought Riley's trust. I can feel that trust in the room right now.)", condition = "took_ownership" },

        -- Callback: rallied_team (day 10)
        { speaker = "arch", expression = "neutral", text = "(Last night I triaged instead of refactoring. Pragmatism. The architectural debt log has 14 items. That is honesty, not failure.)", condition = "rallied_team" },

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
        { speaker = "arch", expression = "neutral", text = "(The edge cases Riley filed mapped exactly to the architectural weak points. I should have correlated them. I was too busy drawing diagrams.)", condition = "backed_riley" },

        -- Refocused
        { speaker = "arch", expression = "neutral", text = "Postmortems later. Right now: what does the architecture need to survive tomorrow? List, please.", condition = "refocused_team" },
        { speaker = "dev", expression = "neutral", text = "Cache layer patch. Search index rebuild. Two database indexes.", condition = "refocused_team" },
        { speaker = "arch", expression = "neutral", text = "I'll write the migrations.", condition = "refocused_team" },
        { speaker = "arch", expression = "neutral", text = "(The list is short. The list is honest. The architecture can survive one more day on patches and willpower.)", condition = "refocused_team" },

        -- Owned
        { speaker = "arch", expression = "concerned", text = "My week-one proposal was wrong. The current architecture is also wrong. I should have proposed the middle. I am sorry to all of you. Especially you, Sam.", condition = "owned_mistakes" },
        { speaker = "dev", expression = "neutral", text = "...Casey. I am framing this moment.", condition = "owned_mistakes" },
        { speaker = "arch", expression = "concerned", text = "(That was the hardest sentence I have ever said in a standup. I have said many sentences in many standups.)", condition = "owned_mistakes" },
        { speaker = "arch", expression = "neutral", text = "(The middle architecture would have been a modular monolith. Simpler than microservices. More structured than what we have. I will propose it in the retro.)", condition = "owned_mistakes" },

        -- Extended aftermath: architecture under stress
        { speaker = "arch", expression = "whiteboarding", text = "After standup I go to the whiteboard. The system diagram needs updating. The patches from last night changed three data flows." },
        { speaker = "arch", expression = "concerned", text = "(The diagram no longer matches the system. The system no longer matches the proposal. The proposal never matched reality. This is software.)" },
        { speaker = "arch", expression = "whiteboarding", text = "I redraw. Version 15. This one includes the async patches, the connection pool fix, and the index Sam did not know I added." },
        { speaker = "arch", expression = "neutral", text = "(The architecture is ugly. Functional, ugly, and honest. I am learning to prefer honest over elegant.)" },

        -- Post-crisis quiet moment
        { bg = "break_room", bgm = "late_night" },

        { speaker = "arch", expression = "concerned", text = "Break room. 3 PM. The whiteboard marker smell is still on my fingers. Three diagrams today." },

        { speaker = "dev", expression = "tired", text = "Sam sits down. 'Casey. I'm sorry I yelled this morning.'", condition = "backed_riley" },
        { speaker = "arch", expression = "neutral", text = "You were frustrated. The architecture was frustrating. Both things were true.", condition = "backed_riley" },
        { speaker = "dev", expression = "tired", text = "Both things. Yeah.", condition = "backed_riley" },

        { speaker = "dev", expression = "neutral", text = "Sam sits down. 'The migrations worked. Clean deploy.'", condition = "refocused_team" },
        { speaker = "arch", expression = "neutral", text = "(Sam complimenting my code. The standup shook something loose in all of us.)", condition = "refocused_team" },

        { speaker = "dev", expression = "tired", text = "Sam sits down across from me. Long pause.", condition = "owned_mistakes" },
        { speaker = "dev", expression = "neutral", text = "Casey. The apology. That took guts.", condition = "owned_mistakes" },
        { speaker = "arch", expression = "concerned", text = "(Sam acknowledged the apology. That is worth more than a correct architecture.)", condition = "owned_mistakes" },

        -- Choice 2: personal/emotional
        { speaker = "arch", expression = "concerned", text = "(I sit with my coffee. The system diagram is on my phone. I look at it the way other people look at photos of their families.)" },
        { speaker = "arch", expression = "concerned", text = "(The architecture held last night. It will hold tomorrow. Not because it is good. Because it is patched by people who care.)" },
        { speaker = "arch", expression = "neutral", text = "(What does this team need from the architect right now?)",
            choices = {
                { text = "Tell Sam: 'Your code is stronger than my diagrams. Tomorrow we'll prove it.' Bridge the gap.", set = {crisis_empathy = true}, rel = {dev = 1, qa = 1, ux = 1} },
                { text = "Write a one-page architecture survival guide for the demo. Every failure point, every failover. Prepare.", set = {crisis_pragmatism = true}, rel = {pm = 1, dev = 1} },
            }
        },

        { speaker = "arch", expression = "neutral", text = "I find Sam at his desk. 'Your code is stronger than my diagrams. Tomorrow we prove that to leadership.'", condition = "crisis_empathy" },
        { speaker = "dev", expression = "tired", text = "Casey. Are you... being nice to me?", condition = "crisis_empathy" },
        { speaker = "arch", expression = "neutral", text = "I am being accurate. The distinction matters to me. Not to you.", condition = "crisis_empathy" },
        { speaker = "dev", expression = "smiling", text = "Never change, Casey.", condition = "crisis_empathy" },

        { speaker = "arch", expression = "whiteboarding", text = "I write the guide. One page. Every failure point in the demo path. Every failover. Every 'if this breaks, do this.'", condition = "crisis_pragmatism" },
        { speaker = "arch", expression = "neutral", text = "I send it to the team. 'Demo Architecture Survival Guide. Read before tomorrow. Questions welcome.'", condition = "crisis_pragmatism" },
        { speaker = "pm", expression = "neutral", text = "Casey. This is the most useful document you have produced this sprint.", condition = "crisis_pragmatism" },
        { speaker = "arch", expression = "neutral", text = "(Jordan is right. Useful is better than comprehensive. I am learning this 15 diagrams too late.)", condition = "crisis_pragmatism" },

        -- End
        { speaker = "pm", expression = "neutral", text = "That standup was 28 minutes. New record. For real this time." },
        { speaker = "arch", expression = "concerned", text = "(Tomorrow is demo day. The architecture is bruised. The team is honest. That trade is worth more than I knew.)" },
        { speaker = "arch", expression = "concerned", text = "(Version 15 of the diagram is taped to the monitor. It is not the architecture I wanted. It is the architecture the team built. That is better.)" },

        { text = "", goto = "day12" }
    }
}
