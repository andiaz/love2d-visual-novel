return {
    title = "Day 11 -- Thursday",
    subtitle = "The Breaking Point",
    narration = "One day left. The cracks are showing. Someone is about to say what everyone is thinking.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "dev", expression = "tired", text = "Thursday. One day before the demo. The cracks are spreading." },
        { speaker = "dev", expression = "tired", text = "I slept three hours. Maybe four. My eyes feel like they have been sanded." },

        { speaker = "pm", expression = "neutral", text = "Morning standup. Let's keep it tight." },
        { speaker = "dev", expression = "tired", text = "I fixed 9 bugs last night. Three new ones appeared. It's like code whack-a-mole." },
        { speaker = "qa", expression = "smirk", text = "The search now works, but it returns results in random order." },
        { speaker = "dev", expression = "tired", text = "It's alphabetical. In a language I don't recognize." },
        { speaker = "dev", expression = "tired", text = "(I wrote that sorting function at 2 AM. At 2 AM I was a different programmer. A worse one.)" },

        { bgm = "tension" },

        -- The breaking point
        { speaker = "arch", expression = "concerned", text = "I need to bring something up. We're building this wrong." },
        { speaker = "dev", expression = "frustrated", text = "Casey. Not now." },
        { speaker = "arch", expression = "concerned", text = "If we'd gone with the architecture I proposed in week one, half these scaling problems wouldn't exist." },
        { speaker = "dev", expression = "frustrated", text = "We'd still be stuck in infrastructure setup if we'd gone your route, Casey." },
        { speaker = "arch", expression = "concerned", text = "That's not fair--" },
        { speaker = "dev", expression = "frustrated", text = "What's not fair is redesigning the foundation the day before the demo!" },
        { speaker = "dev", expression = "frustrated", text = "(I am yelling at Casey. I know he is partially right. I am yelling anyway because I am tired and the build was red until 3 AM and my bracket cost us two days.)" },
        { speaker = "pm", expression = "stressed", text = "Okay, okay. Let's take a breath--" },

        { speaker = "po", expression = "neutral", text = "I know, I know -- the requirements have been a moving target. But hear me out--" },
        { speaker = "qa", expression = "deadpan", text = "A lot." },
        { speaker = "po", expression = "defensive", text = "But it's because I CARE about this product! I want it to be amazing!" },
        { speaker = "qa", expression = "deadpan", text = "Let's aim for 'works at all' before we talk about 'works well.'" },

        { speaker = "qa", expression = "deadpan", text = "You know what? I'm done sugarcoating this." },
        { speaker = "qa", expression = "deadpan", text = "I've filed more bugs than I can count. Nobody reads a QA report until the build is broken." },
        { speaker = "qa", expression = "deadpan", text = "Well, the build is broken. Surprise." },

        { speaker = "pm", expression = "neutral", text = "..." },
        { speaker = "dev", expression = "tired", text = "(Riley has a point. A sharp, uncomfortable point. And I'm the one who wrote 30 of those bugs.)" },
        { speaker = "dev", expression = "tired", text = "(The bracket. The null catches. The sort function at 2 AM. Every shortcut I took is in Riley's bug tracker.)" },

        -- Callback: took_ownership (day 8)
        { speaker = "dev", expression = "tired", text = "(I owned the bugs once. Day 8. I said 'these are mine.' I meant it then. It's harder to mean it when there are 47 of them.)", condition = "took_ownership" },
        { speaker = "dev", expression = "tired", text = "(But I said it. And saying it changed something. Riley started triaging with me instead of against me.)", condition = "took_ownership" },

        -- Callback: rallied_team (day 10)
        { speaker = "dev", expression = "tired", text = "(Last night we split the work. Everyone took a slice. The slices came back. Not perfect, but done. That counts.)", condition = "rallied_team" },

        { speaker = "dev", expression = "tired", text = "(What do I say? Riley is staring at me. The room is staring at me. I wrote the bugs. I should say something.)",
            choices = {
                { text = "Riley's right. We need to listen to QA much earlier next sprint.", set = {backed_riley = true}, rel = {qa = 3, pm = 0, po = -1} },
                { text = "Everyone's frustrated. Let's focus on what we CAN ship by tomorrow.", set = {refocused_team = true}, rel = {pm = 2, ux = 1, qa = 1, arch = 1} },
                { text = "We all dropped balls. Me first. Let's own it and move forward.", set = {owned_mistakes = true}, rel = {qa = 1, ux = 1, pm = 1, po = 1, arch = 1} },
            }
        },

        -- Backed Riley
        { speaker = "qa", expression = "smirk", text = "...thank you, Sam.", condition = "backed_riley" },
        { speaker = "po", expression = "neutral", text = "I'm sorry, Riley. I should have read your bug reports.", condition = "backed_riley" },
        { speaker = "qa", expression = "neutral", text = "All 47 of them. Yes.", condition = "backed_riley" },
        { speaker = "dev", expression = "tired", text = "(Riley's face changed when I said that. Not a smile. Something quieter. Acknowledgment. Validation. Whatever QA engineers feel when someone finally listens.)", condition = "backed_riley" },

        -- Refocused
        { speaker = "pm", expression = "neutral", text = "Right. What can we actually demo tomorrow? List, please.", condition = "refocused_team" },
        { speaker = "dev", expression = "neutral", text = "Feed works. Content creation works. Search is optimistic. Profiles are off the table.", condition = "refocused_team" },
        { speaker = "ux", expression = "neutral", text = "I'll polish what works and grey out what doesn't.", condition = "refocused_team" },
        { speaker = "dev", expression = "tired", text = "(Optimistic. That's the word I'm using for 'works sometimes.' Demo vocabulary.)", condition = "refocused_team" },

        -- Owned mistakes
        { speaker = "dev", expression = "tired", text = "I should have written tests. I should have spoken up about scope earlier. I should have refactored the data layer when I had the chance.", condition = "owned_mistakes" },
        { speaker = "ux", expression = "neutral", text = "And I should have validated my designs against tech constraints earlier.", condition = "owned_mistakes" },
        { speaker = "arch", expression = "concerned", text = "I... may have over-complicated the architecture.", condition = "owned_mistakes" },
        { speaker = "po", expression = "neutral", text = "And I changed the requirements too much. Maybe.", condition = "owned_mistakes" },
        { speaker = "dev", expression = "tired", text = "(Everyone owning it. That is what this team needed. Not blame. Shared ownership of a shared mess.)", condition = "owned_mistakes" },

        -- Extended aftermath: merge conflicts
        { speaker = "dev", expression = "frustrated", text = "I open my laptop after standup. Three merge conflicts. Casey's staging fix, Alex's CSS, and my 2 AM search function all touched the same file." },
        { speaker = "dev", expression = "tired", text = "(Merge conflicts are the team's arguments expressed in code. Everyone changed the same thing because nobody talked to each other.)" },
        { speaker = "dev", expression = "tired", text = "I resolve them one by one. Casey's fix stays. Alex's CSS stays. My 2 AM code gets rewritten. It deserves it." },

        -- Post-crisis quiet moment
        { bg = "break_room", bgm = "late_night" },

        { speaker = "dev", expression = "tired", text = "3 PM. I take a break. The break room is empty. The coffee machine makes a sound like it's also exhausted." },
        { speaker = "dev", expression = "tired", text = "(Two weeks of code. Two weeks of arguments and fixes and late nights. Tomorrow it either works or it doesn't.)" },

        { speaker = "qa", expression = "neutral", text = "Riley walks in. Gets coffee. Sits down.", condition = "backed_riley" },
        { speaker = "qa", expression = "neutral", text = "Sam. For what it's worth. Your bug fixes from last night were clean. All nine verified.", condition = "backed_riley" },
        { speaker = "dev", expression = "tired", text = "(That is the first compliment Riley has given me in two weeks. I am going to hold onto it.)", condition = "backed_riley" },

        { speaker = "ux", expression = "neutral", text = "Alex sits down across from me. No laptop. Just coffee.", condition = "refocused_team" },
        { speaker = "ux", expression = "neutral", text = "We're going to be fine, Sam.", condition = "refocused_team" },
        { speaker = "dev", expression = "tired", text = "(I want to believe Alex. I am going to choose to believe Alex.)", condition = "refocused_team" },

        { speaker = "arch", expression = "neutral", text = "Casey sits down. Opens his notebook. Draws a small diagram.", condition = "owned_mistakes" },
        { speaker = "arch", expression = "neutral", text = "I owe you an apology. The week-one architecture was too much. You were right to push back.", condition = "owned_mistakes" },
        { speaker = "dev", expression = "tired", text = "And I was wrong to yell about it this morning. We're both right. We're both wrong.", condition = "owned_mistakes" },
        { speaker = "arch", expression = "neutral", text = "Both things can be true. The architecture does not care.", condition = "owned_mistakes" },

        -- Choice 2: personal/emotional
        { speaker = "dev", expression = "tired", text = "(I sit in the break room. Tomorrow is demo day. The code is as good as I can make it.)" },
        { speaker = "dev", expression = "tired", text = "(This team is bruised. But we're still sitting in the same break room, drinking the same bad coffee.)" },
        { speaker = "dev", expression = "tired", text = "(How do I walk back into that office?)",
            choices = {
                { text = "Find each person individually. A word. A nod. Rebuild the bridges.", set = {crisis_empathy = true}, rel = {qa = 1, ux = 1, arch = 1} },
                { text = "Head down. Fix the remaining bugs. The code is how I apologize.", set = {crisis_pragmatism = true}, rel = {pm = 1, dev = 1} },
            }
        },

        { speaker = "dev", expression = "neutral", text = "I find Casey first. 'Your staging fix last night saved us.' He nods. That is Casey's version of a hug.", condition = "crisis_empathy" },
        { speaker = "dev", expression = "neutral", text = "I find Alex next. 'The error states look great.' Alex smiles. Genuinely.", condition = "crisis_empathy" },
        { speaker = "dev", expression = "neutral", text = "I find Riley last. 'Tomorrow, file every bug you find. I'll fix them in real time.' Riley actually grins.", condition = "crisis_empathy" },
        { speaker = "dev", expression = "tired", text = "(Bridges rebuilt. Not perfect. But standing.)", condition = "crisis_empathy" },

        { speaker = "dev", expression = "tired", text = "I sit down. Open VS Code. 14 bugs remaining. I start with the worst one.", condition = "crisis_pragmatism" },
        { speaker = "dev", expression = "tired", text = "By 6 PM I have closed 8. Six remain. The remaining six are hard bugs. The kind that require thinking. I am barely capable of thinking.", condition = "crisis_pragmatism" },
        { speaker = "dev", expression = "tired", text = "(The code does not need my feelings. The code needs my focus. That is what I can give right now.)", condition = "crisis_pragmatism" },

        -- End of day
        { speaker = "pm", expression = "neutral", text = "Twenty-eight minutes. That's a new standup record and I'm not joking." },
        { speaker = "dev", expression = "tired", text = "(Tomorrow is demo day. At least we're being honest with each other now.)" },
        { speaker = "dev", expression = "tired", text = "(The build is green. The team is bruised. Both of those things have to be enough.)" },

        { text = "", goto = "day12" }
    }
}
