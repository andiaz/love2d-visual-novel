return {
    title = "Day 11 -- Thursday",
    subtitle = "The Breaking Point",
    narration = "One day left. The team is at a low boil. Riley is about to say something. It's about you. Sort of.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "po", expression = "neutral", text = "Thursday. One day before the demo. The cracks are showing." },
        { speaker = "po", expression = "defensive", text = "(I rewrote the demo script last night. Cut it from 14 pages to 6. Every cut was a feature I championed. I am mourning them quietly.)" },

        { speaker = "pm", expression = "neutral", text = "Morning, everyone. Standup -- let's keep it under five minutes." },
        { speaker = "dev", expression = "tired", text = "Fixed 9 bugs last night. Three new ones appeared. Code whack-a-mole." },
        { speaker = "qa", expression = "smirk", text = "Search now works, but returns results in random order." },
        { speaker = "po", expression = "neutral", text = "(The search was going to have smart recommendations. Personalized. Context-aware. Now it can't even sort alphabetically.)" },

        { bgm = "tension" },

        { speaker = "arch", expression = "concerned", text = "Sorry, but I can't stay quiet. The way we're building this isn't right." },
        { speaker = "dev", expression = "frustrated", text = "Casey. Not now." },
        { speaker = "arch", expression = "concerned", text = "My week-one architecture would have handled this load. We went a different direction." },
        { speaker = "dev", expression = "frustrated", text = "Following your architecture, we wouldn't even have a working prototype yet." },
        { speaker = "po", expression = "neutral", text = "(Don't get involved. Don't get involved. Don't get-)" },

        { speaker = "po", expression = "neutral", text = "Can I just say something? I know I've changed requirements a lot--" },
        { speaker = "qa", expression = "deadpan", text = "A lot." },
        { speaker = "po", expression = "defensive", text = "But it's because I CARE about this product! I want it to be amazing!" },
        { speaker = "qa", expression = "deadpan", text = "The bar is not 'amazing,' Priya. The bar is 'doesn't crash on launch day.'" },
        { speaker = "po", expression = "defensive", text = "(That stung. Because it's true. I wanted amazing. I got functional-on-a-good-day.)" },

        { speaker = "qa", expression = "deadpan", text = "You know what, Priya? I'm done holding back." },
        { speaker = "qa", expression = "deadpan", text = "I've filed bugs every single day. Nobody reads them. Nobody responds. QA is invisible until the product breaks." },
        { speaker = "qa", expression = "deadpan", text = "The product broke. And somehow everyone's acting like this came out of nowhere." },

        { speaker = "pm", expression = "neutral", text = "..." },
        { speaker = "po", expression = "defensive", text = "(Riley just compared the bugs to my slides. The room got very quiet. They're all looking at me.)" },
        { speaker = "po", expression = "defensive", text = "(She did not plan that comparison. The universe did. The universe has notes.)" },

        -- Callback: took_ownership (day 8)
        { speaker = "po", expression = "neutral", text = "(On Day 8 I owned the scope changes. I said 'that's on me.' The team softened. Riley softened. That trust is still here.)", condition = "took_ownership" },

        -- Callback: rallied_team (day 10)
        { speaker = "po", expression = "neutral", text = "(Last night I locked the backlog. No new tickets. The team thanked me. For silence. The PO's most valuable contribution: nothing.)", condition = "rallied_team" },

        { speaker = "po", expression = "neutral", text = "(How I respond defines me as a PO. For everyone in this room. Forever.)",
            choices = {
                { text = "Back Riley publicly. 'You're right. I should have been reading your bug reports from day one.'", set = {backed_riley = true}, rel = {qa = 3, dev = 1, ux = 1} },
                { text = "Refocus the room. 'Feelings later. Right now, what can we ship tomorrow?'", set = {refocused_team = true}, rel = {pm = 2, dev = 1, qa = 1} },
                { text = "Own it. 'A lot of those 47 bugs trace back to my scope changes. That's on me. I'm sorry.'", set = {owned_mistakes = true}, rel = {qa = 2, dev = 2, ux = 1, pm = 1, arch = 1} },
            }
        },

        -- Backed
        { speaker = "po", expression = "neutral", text = "Riley. You're right. I should have been reading your bug reports from day one. I'm sorry.", condition = "backed_riley" },
        { speaker = "qa", expression = "smirk", text = "...thank you, Priya.", condition = "backed_riley" },
        { speaker = "po", expression = "neutral", text = "I'm going to read all 47 right now. After the standup.", condition = "backed_riley" },
        { speaker = "qa", expression = "neutral", text = "All 47?", condition = "backed_riley" },
        { speaker = "po", expression = "neutral", text = "All 47.", condition = "backed_riley" },
        { speaker = "po", expression = "neutral", text = "(I said all 47. Out loud. In front of the team. That is a promise I now have to keep. Good.)", condition = "backed_riley" },

        -- Refocused
        { speaker = "po", expression = "neutral", text = "Riley, we'll talk after standup. Right now, what can we ship tomorrow? List, please.", condition = "refocused_team" },
        { speaker = "dev", expression = "neutral", text = "Feed works. Content creation works. Search is optimistic.", condition = "refocused_team" },
        { speaker = "po", expression = "neutral", text = "(The list is shorter than my original vision document. The vision document was 22 pages. The list is 3 items.)", condition = "refocused_team" },

        -- Owned
        { speaker = "po", expression = "neutral", text = "A lot of those bugs trace back to my scope changes. That's on me. I'm sorry, Riley. I'm sorry, Sam. I'm sorry, all of you.", condition = "owned_mistakes" },
        { speaker = "dev", expression = "neutral", text = "And I should have spoken up about tech debt sooner.", condition = "owned_mistakes" },
        { speaker = "arch", expression = "concerned", text = "Looking back, I over-engineered this. That's on me.", condition = "owned_mistakes" },
        { speaker = "po", expression = "neutral", text = "(That was the hardest sentence I have said in this office. It also might be the most important.)", condition = "owned_mistakes" },

        -- Extended: The feature kill -- UNIQUE to PO
        { speaker = "po", expression = "neutral", text = "After standup I sit at my desk. The reduced demo script is open. But there's one more cut I need to make." },
        { speaker = "po", expression = "defensive", text = "(The recommendation engine. My feature. I wrote the user stories. I built the business case. I presented it to the steering committee with a slide deck that had animations.)" },
        { speaker = "po", expression = "defensive", text = "(The recommendation engine is not ready. It has 8 open bugs. The algorithm returns the same three results regardless of input. Sam calls it 'the optimist engine' because it always recommends the same thing.)" },
        { speaker = "po", expression = "neutral", text = "(I have to kill it. Not defer it. Kill it from the demo. Publicly. In front of the team that built it.)" },

        { speaker = "po", expression = "neutral", text = "I call a quick sync. Five minutes. Just the team." },
        { speaker = "po", expression = "neutral", text = "The recommendation engine is out. Completely. Not 'deferred.' Not 'phase two.' Out of tomorrow's demo." },
        { speaker = "dev", expression = "tired", text = "...thank you. That's three days of pressure off my back." },
        { speaker = "arch", expression = "neutral", text = "The infrastructure for it was the most fragile part. Good call." },
        { speaker = "qa", expression = "neutral", text = "That removes 8 bugs from my critical list. Priya, this is the second most useful thing you've done this sprint." },
        { speaker = "po", expression = "neutral", text = "What was the first?" },
        { speaker = "qa", expression = "smirk", text = "Last night. When you rewrote the acceptance criteria to match reality." },
        { speaker = "po", expression = "defensive", text = "(The two most useful things I've done this sprint are both subtractions. As a PO, that is either growth or surrender. I choose growth.)" },

        -- Post-crisis quiet moment
        { bg = "break_room", bgm = "late_night" },

        { speaker = "po", expression = "neutral", text = "Break room. 3 PM. I am staring at my phone. The recommendation engine slide deck is still on it. 34 slides. Animations and everything." },

        { speaker = "qa", expression = "neutral", text = "Riley walks in. She sits down.", condition = "backed_riley" },
        { speaker = "qa", expression = "neutral", text = "I read all 47 bug reports. While you were reading mine.", condition = "backed_riley" },
        { speaker = "po", expression = "neutral", text = "You read all 47 of my slides?", condition = "backed_riley" },
        { speaker = "qa", expression = "neutral", text = "No. Your bug reports. You filed 3 this sprint. They were... actually well-written.", condition = "backed_riley" },
        { speaker = "po", expression = "neutral", text = "(Riley complimented my bug reports. We are having a moment.)", condition = "backed_riley" },

        { speaker = "dev", expression = "tired", text = "Sam sits down. 'The feature kill. That took guts.'", condition = "refocused_team" },
        { speaker = "po", expression = "neutral", text = "It took two weeks too long.", condition = "refocused_team" },
        { speaker = "dev", expression = "tired", text = "Better late than never. Literally.", condition = "refocused_team" },

        { speaker = "ux", expression = "neutral", text = "Alex sits down. 'The recommendation engine... I designed the UI for it last week.'", condition = "owned_mistakes" },
        { speaker = "po", expression = "neutral", text = "I know. I'm sorry, Alex.", condition = "owned_mistakes" },
        { speaker = "ux", expression = "neutral", text = "Don't be. The UI will be there when the feature is ready. Whenever that is.", condition = "owned_mistakes" },
        { speaker = "po", expression = "neutral", text = "(Alex is not angry. Alex is a designer. Designers understand that some work exists in drafts forever. I am learning to understand that too.)", condition = "owned_mistakes" },

        -- Choice 2: personal/emotional
        { speaker = "po", expression = "defensive", text = "(I killed my feature today. The one I believed in most. The team is lighter for it. I am heavier.)" },
        { speaker = "po", expression = "neutral", text = "(The demo tomorrow will show less than I dreamed. But it will show things that work. Is that enough?)" },
        { speaker = "po", expression = "neutral", text = "(What do I do with the grief of a killed feature?)",
            choices = {
                { text = "Tell the team: 'The recommendation engine will come back. Better. In the next sprint.' Give the vision a future.", set = {crisis_empathy = true}, rel = {dev = 1, ux = 1, arch = 1} },
                { text = "Write the post-demo roadmap. Channel the grief into a plan. The feature lives in the backlog, not the grave.", set = {crisis_pragmatism = true}, rel = {pm = 1, po = 1} },
            }
        },

        { speaker = "po", expression = "neutral", text = "I gather the team. 30 seconds. 'The recommendation engine comes back next sprint. Better. With QA in the room from day one.'", condition = "crisis_empathy" },
        { speaker = "qa", expression = "neutral", text = "Did Priya just voluntarily include QA in a feature launch?", condition = "crisis_empathy" },
        { speaker = "po", expression = "neutral", text = "I learn slow. But I learn.", condition = "crisis_empathy" },
        { speaker = "dev", expression = "tired", text = "Respect, Priya. Actual respect.", condition = "crisis_empathy" },

        { speaker = "po", expression = "neutral", text = "I open a new document. 'Post-Demo Roadmap.' The recommendation engine is item one. With dependencies, timelines, and QA checkpoints.", condition = "crisis_pragmatism" },
        { speaker = "po", expression = "neutral", text = "(The feature is not dead. It is deferred. There is a difference. The difference is a plan.)", condition = "crisis_pragmatism" },
        { speaker = "po", expression = "neutral", text = "(I am a product owner who killed her own feature and is already planning its resurrection. That is not grief. That is product management.)", condition = "crisis_pragmatism" },

        -- End of day
        { speaker = "pm", expression = "neutral", text = "For the record, that standup lasted 28 minutes. A personal worst." },
        { speaker = "po", expression = "neutral", text = "(Tomorrow is demo day. At least we're being honest with each other now.)" },
        { speaker = "po", expression = "neutral", text = "(The demo script is 6 pages. The feature list is shorter than my original vision. And for the first time, I think that might be exactly right.)" },

        { text = "", goto = "day12" }
    }
}
