return {
    title = "Day 6 -- Tuesday",
    subtitle = "The Test Plan",
    narration = "One week to demo. The build is starting to exist. The test plan is starting to grow teeth. Today, you find the first real bugs nobody wants to look at.",

    bg = "desk_closeup",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "qa", expression = "deadpan", text = "Tuesday. The build exists. Barely. I have a regression suite that runs in 4 minutes and finds 11 things in 4 minutes." },

        -- Branch
        { speaker = "qa", expression = "neutral", text = "The user interviews told me what to look for. I'm already finding mismatches between the deck and the build.", condition = "pushed_interviews" },
        { speaker = "qa", expression = "deadpan", text = "I tested against the deck. The build doesn't match the deck. I'm filing bugs against both.", condition = "started_wireframes" },
        { speaker = "qa", expression = "neutral", text = "Acceptance criteria are holding up. Most bugs I'm finding are in the parts we didn't spec.", condition = "needs_requirements" },

        -- The hard moment
        { speaker = "qa", expression = "neutral", text = "I have to bring something up." },
        { speaker = "qa", expression = "deadpan", text = "The product as designed assumes users will only do what we expect. Users do not." },
        { speaker = "qa", expression = "deadpan", text = "I have a list of things real users will do that the product currently does not survive." },
        { speaker = "po", expression = "defensive", text = "Like what?" },
        { speaker = "qa", expression = "deadpan", text = "Like 'paste a screenshot into a knowledge article.' Like 'their network drops mid-save.' Like 'their display name is in Korean.'" },
        { speaker = "qa", expression = "deadpan", text = "These aren't edge cases. These are Tuesday morning at 9:14 AM in any office in the world." },

        { speaker = "qa", expression = "neutral", text = "(QA gets one moment a sprint to make the team listen. This is mine.)",
            choices = {
                { text = "Lay out the data. Reality first. The deck doesn't match what users will do.", set = {followed_data = true}, rel = {dev = 2, ux = 2, arch = 1, po = -2} },
                { text = "Stay quiet. The team is stretched. I'll catch them in QA later.", set = {followed_vision = true}, rel = {po = 1, dev = -1} },
                { text = "Bring the worst three to Priya and Alex. Get them addressed. Leave the rest for backlog.", set = {found_middle = true}, rel = {pm = 2, ux = 1, dev = 1, qa = 1} },
            }
        },

        -- Data
        { speaker = "qa", expression = "neutral", text = "I'm putting the list on the wall. Eleven things. Sorted by 'will happen in week one of production.'", condition = "followed_data" },
        { speaker = "po", expression = "defensive", text = "Eleven things? But the deck--", condition = "followed_data" },
        { speaker = "qa", expression = "deadpan", text = "The deck is what we wish would happen. The list is what will.", condition = "followed_data" },
        { speaker = "ux", expression = "excited", text = "Riley, thank you.", condition = "followed_data" },

        -- Quiet
        { speaker = "qa", expression = "deadpan", text = "(I'll catch them in QA. Later. When it's much more expensive to fix.)", condition = "followed_vision" },
        { speaker = "qa", expression = "deadpan", text = "(This is the quiet part QA never says out loud. Until they snap.)", condition = "followed_vision" },

        -- Middle
        { speaker = "qa", expression = "neutral", text = "Top three. The rest goes in the backlog. Priya, Alex -- can we sync after standup?", condition = "found_middle" },
        { speaker = "po", expression = "neutral", text = "Three I can do.", condition = "found_middle" },
        { speaker = "qa", expression = "smirk", text = "(Pragmatic Riley. Underrated Riley.)", condition = "found_middle" },

        -- End
        { speaker = "qa", expression = "deadpan", text = "(Day 6. The bug tracker has 19 tickets. The backlog has 38. The deck still has 47.)" },

        { text = "", goto = "day7" }
    }
}
