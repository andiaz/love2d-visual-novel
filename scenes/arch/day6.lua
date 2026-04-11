return {
    title = "Day 6 -- Tuesday",
    subtitle = "The Whiteboard Truth",
    narration = "One week to demo. The whiteboard is full. The architecture is held together with assumptions that have not been validated. Today, you decide whether to validate them or pretend.",

    bg = "desk_closeup",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "arch", expression = "whiteboarding", text = "Tuesday. The whiteboard is now legally another whiteboard. I have stuck a second whiteboard to the first whiteboard. This is fine." },

        -- Branch
        { speaker = "arch", expression = "neutral", text = "The data model spike paid off. I picked the document store. The query patterns are clean. The team has direction.", condition = "pushed_interviews" },
        { speaker = "arch", expression = "whiteboarding", text = "The whiteboard sessions are paying off. Sam hates 40 percent of it now. Down from 60. Progress.", condition = "started_wireframes" },
        { speaker = "arch", expression = "neutral", text = "Acceptance criteria are landing daily. The architecture is converging on something simple. I am cautiously optimistic.", condition = "needs_requirements" },

        -- The hard moment
        { speaker = "arch", expression = "concerned", text = "I have to bring something up." },
        { speaker = "arch", expression = "neutral", text = "Half the architectural decisions in this project are based on what we IMAGINE users will do. Not what they actually do." },
        { speaker = "arch", expression = "concerned", text = "I have been designing for a feed I have never watched a real user use. I have been picking pagination strategies for read patterns I am inventing." },
        { speaker = "po", expression = "defensive", text = "But the deck--" },
        { speaker = "arch", expression = "concerned", text = "The deck is a hypothesis. The architecture is a commitment. You can't commit to a hypothesis. Not at this scale." },

        { speaker = "arch", expression = "neutral", text = "(Three options. Each one reshapes how I work for the rest of the project.)",
            choices = {
                { text = "Validate. Stop drawing. Watch real users. Bring data back. Then architect.", set = {followed_data = true}, rel = {ux = 2, dev = 2, qa = 2, po = -2} },
                { text = "Trust the deck. Commit. Build on the assumptions. There isn't time to do it twice.", set = {followed_vision = true}, rel = {po = 2, dev = -1, qa = -2} },
                { text = "Hybrid. Validate the riskiest assumptions only. Build the rest on faith. Document where the bets are.", set = {found_middle = true}, rel = {pm = 2, dev = 1, ux = 1, qa = 1, arch = 1} },
            }
        },

        -- Validate
        { speaker = "arch", expression = "neutral", text = "I'm going to spend two days watching users. Real ones. The whiteboard can wait.", condition = "followed_data" },
        { speaker = "dev", expression = "smiling", text = "Casey just put down a marker. The architectural earth is shifting.", condition = "followed_data" },
        { speaker = "arch", expression = "neutral", text = "(That hurt. I have been drawing for 20 years. The drawings have to stop being the answer.)", condition = "followed_data" },

        -- Trust deck
        { speaker = "arch", expression = "whiteboarding", text = "We commit to the assumptions. Build on the deck. There isn't time to do it twice.", condition = "followed_vision" },
        { speaker = "qa", expression = "deadpan", text = "We're going to do it twice. We just don't know it yet.", condition = "followed_vision" },
        { speaker = "arch", expression = "concerned", text = "(She might be right.)", condition = "followed_vision" },

        -- Hybrid
        { speaker = "arch", expression = "neutral", text = "Validate the three riskiest assumptions. Build the rest on faith. Document the bets so we know what to revisit.", condition = "found_middle" },
        { speaker = "dev", expression = "smiling", text = "Architecture decision records. About time we started writing them.", condition = "found_middle" },
        { speaker = "arch", expression = "neutral", text = "(Pragmatic Casey. Six years in the making.)", condition = "found_middle" },

        -- End
        { speaker = "arch", expression = "concerned", text = "(Day 6. The architecture diagram has 11 boxes. 4 of them are honest. The other 7 are bets I am making with somebody else's runtime.)" },

        { text = "", goto = "day7" }
    }
}
