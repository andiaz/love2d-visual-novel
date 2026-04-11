return {
    title = "Day 4 -- Thursday",
    subtitle = "The Design Review",
    narration = "Alex is presenting designs. Every screen has architectural implications nobody else can see. You can. You're going to talk about them. Loudly.",

    bg = "meeting_room",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "arch", expression = "neutral", text = "Thursday. Design review. The day every UI choice becomes a database decision." },
        { speaker = "pm", expression = "neutral", text = "Alright everyone, Alex has designs to walk us through." },
        { speaker = "ux", expression = "neutral", text = "I've mapped out the core flows -- onboarding, content creation, the feed." },

        -- Casey jumps in
        { speaker = "arch", expression = "whiteboarding", text = "Before we go further -- the data model behind this content feed. Relational or document-based?" },
        { speaker = "dev", expression = "neutral", text = "Casey, design review. Not architecture review." },
        { speaker = "arch", expression = "whiteboarding", text = "The two are connected! If Alex designs a nested comment thread, that has database implications." },
        { speaker = "arch", expression = "concerned", text = "(They never let me finish. I have actually rehearsed this in the mirror.)" },

        -- Priya
        { speaker = "po", expression = "excited", text = "I love it! Add a leaderboard! Achievements! Gamification was on slide 34!" },
        { speaker = "arch", expression = "concerned", text = "(Leaderboard. That's a write-heavy table with rank computation. Realtime ranking? That's a job queue. I can hear the future complexity from here.)" },

        -- Sam
        { speaker = "dev", expression = "neutral", text = "Did anyone think about mobile? These layouts are clearly desktop-first." },
        { speaker = "arch", expression = "neutral", text = "(Mobile means smaller payloads. Smaller payloads mean cursor pagination. Cursor pagination means rewriting the feed query I almost wrote yesterday.)" },

        -- Riley
        { speaker = "qa", expression = "neutral", text = "What happens with a 200MB upload? Screen readers? 400-character display name?" },
        { speaker = "arch", expression = "concerned", text = "(Riley is the only person in this room who thinks like an architect. She just doesn't know it yet.)" },

        -- The choice
        { speaker = "pm", expression = "neutral", text = "Casey, if you had to pick the one architectural priority for next iteration, what is it?" },

        { speaker = "arch", expression = "neutral", text = "(Three priorities. The product becomes whichever I pick. Choose wisely.)",
            choices = {
                { text = "Tech first. Lock the data model and the data flow. Everything else hangs off it.", set = {prioritized_tech = true}, rel = {dev = 2, ux = -1, po = -2} },
                { text = "Features first. Architecture is plumbing. Build what Priya wants and refactor later.", set = {prioritized_product = true}, rel = {po = 2, dev = -1, qa = -1} },
                { text = "Users first. The architecture serves accessibility, performance, and the simple flows. Cut the rest.", set = {prioritized_users = true}, rel = {qa = 2, dev = 1, ux = 2, po = -2} },
            }
        },

        -- Tech
        { speaker = "arch", expression = "whiteboarding", text = "Lock the data model this week. Document every entity, every relationship, every cardinality. By Friday I have a doc you can argue with.", condition = "prioritized_tech" },
        { speaker = "dev", expression = "smiling", text = "Yes. This is the meeting I have wanted for two days.", condition = "prioritized_tech" },
        { speaker = "po", expression = "defensive", text = "But the gamification...", condition = "prioritized_tech" },

        -- Features
        { speaker = "arch", expression = "concerned", text = "Features. Build what Priya wants. We refactor in v2.", condition = "prioritized_product" },
        { speaker = "arch", expression = "concerned", text = "(I just signed up to build something I will spend the next year apologizing for.)", condition = "prioritized_product" },
        { speaker = "dev", expression = "frustrated", text = "Casey. Of all people. You.", condition = "prioritized_product" },

        -- Users
        { speaker = "arch", expression = "neutral", text = "Architecture serves users. Cut the leaderboard. Cut the achievements. Build the simple flows on a foundation that will last.", condition = "prioritized_users" },
        { speaker = "qa", expression = "smirk", text = "Casey gets it.", condition = "prioritized_users" },
        { speaker = "arch", expression = "neutral", text = "(I just chose users over my own deck of microservice options. The microservices will live another day.)", condition = "prioritized_users" },

        -- End
        { speaker = "arch", expression = "concerned", text = "(Design reviews. Every pixel is a database row. Every screen is a service boundary. I see them. They don't.)" },

        { text = "", goto = "day5" }
    }
}
