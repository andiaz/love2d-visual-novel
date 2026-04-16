return {
    title = "Day 4 -- Thursday",
    subtitle = "The Design Review",
    narration = "Alex is presenting designs. Every screen has architectural implications nobody else can see. You can.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- Pre-review: Casey's unique scene - code review of Sam's early code
        { speaker = "arch", expression = "neutral", text = "Thursday morning. I open the repo. Sam pushed 14 commits yesterday." },
        { speaker = "arch", expression = "concerned", text = "I start reading the code." },
        { speaker = "arch", expression = "concerned", text = "The folder structure is flat. Everything in one directory. No service boundaries. No separation of concerns." },
        { speaker = "arch", expression = "neutral", text = "(It works. It works the way a tent works. Fine for camping. Not fine for living in.)" },

        { text = "..." },

        { speaker = "arch", expression = "neutral", text = "I find a function called handleEverything. It's 200 lines. It handles everything." },
        { speaker = "arch", expression = "concerned", text = "(I could say something now. Or I could wait until the design review and frame it as a question about scalability.)" },
        { speaker = "arch", expression = "neutral", text = "(I'll wait. Corrections in public are political. Corrections in private are productive.)" },
        { speaker = "arch", expression = "neutral", text = "I close the PR. Make a note. Sam's code works. The question is whether it'll still work in six weeks." },

        { text = "..." },

        -- The design review
        { bg = "meeting_room" },

        { speaker = "pm", expression = "neutral", text = "Alright everyone, Alex has designs to walk us through." },
        { speaker = "ux", expression = "neutral", text = "I've mapped out the core flows. Onboarding, content creation, and the feed." },

        { speaker = "arch", expression = "neutral", text = "(Every screen is a service boundary. Every interaction is a data flow. Let me listen first.)" },

        -- The review discussion
        { speaker = "ux", expression = "neutral", text = "The feed is the centerpiece. Users post knowledge snippets. Others can comment, react, and share." },
        { speaker = "arch", expression = "concerned", text = "Quick question on the feed. How deep do comment threads go? Flat or nested?" },
        { speaker = "ux", expression = "thinking", text = "I was thinking two levels. Comment and reply." },
        { speaker = "arch", expression = "neutral", text = "Good. Two levels is a flat table with a parent_id. Infinite nesting is a recursive query nightmare." },
        { speaker = "dev", expression = "neutral", text = "Casey, design review. Not architecture review." },
        { speaker = "arch", expression = "concerned", text = "The two are connected. If Alex designs a drag-and-drop content editor, that's a different data model than a text field." },
        { speaker = "arch", expression = "neutral", text = "(They never let me finish. Every design decision IS an architecture decision. Nobody sees this but me.)" },

        -- Priya's additions
        { speaker = "po", expression = "excited", text = "Love it! Can we add a leaderboard? Achievements? Gamification was on slide 34!" },
        { speaker = "arch", expression = "concerned", text = "(Leaderboard. Write-heavy table. Rank computation. Real-time updates mean a job queue. I can hear the future complexity from here.)" },
        { speaker = "dev", expression = "neutral", text = "Priya, a leaderboard is another feature. We have three features and zero shipped." },
        { speaker = "po", expression = "defensive", text = "It's not a feature, it's motivation. Users need motivation." },

        -- Sam's mobile question
        { speaker = "dev", expression = "neutral", text = "Did anyone think about mobile? These layouts are clearly desktop-first." },
        { speaker = "ux", expression = "neutral", text = "Mobile is next. I wanted to nail the core experience first." },
        { speaker = "arch", expression = "neutral", text = "(Mobile means smaller payloads. Pagination strategy matters. Cursor-based or offset? This decision echoes for months.)" },

        -- Riley's edge cases
        { speaker = "qa", expression = "deadpan", text = "What happens with a 200MB upload? What about screen readers? What if the display name is 400 characters?" },
        { speaker = "arch", expression = "neutral", text = "(Riley is the only person in this room who thinks like an architect without knowing it.)" },
        { speaker = "ux", expression = "neutral", text = "Good questions. I'll add constraints to the spec." },
        { speaker = "qa", expression = "deadpan", text = "There's a spec?" },

        { text = "..." },

        -- The choice
        { speaker = "pm", expression = "neutral", text = "Casey, what's the one architectural priority for the next iteration?" },

        { speaker = "arch", expression = "neutral", text = "(Three paths. The product becomes whichever I choose.)",
            choices = {
                { text = "Lock the data model first. Everything else hangs off it.", set = {prioritized_tech = true}, rel = {dev = 2, ux = -1, po = -2} },
                { text = "Build what Priya wants. Architecture is plumbing. Refactor later.", set = {prioritized_product = true}, rel = {po = 2, dev = -1, qa = -1} },
                { text = "Serve users first. Accessibility, performance, simple flows. Cut the rest.", set = {prioritized_users = true}, rel = {qa = 2, dev = 1, ux = 2, po = -2} },
            }
        },

        -- Tech path
        { speaker = "arch", expression = "neutral", text = "Lock the data model this week. Document every entity, every relationship, every cardinality. By Friday I'll have a doc you can argue with.", condition = "prioritized_tech" },
        { speaker = "dev", expression = "smiling", text = "Yes. This is the meeting I've been waiting for.", condition = "prioritized_tech" },
        { speaker = "po", expression = "defensive", text = "But the gamification...", condition = "prioritized_tech" },
        { speaker = "arch", expression = "neutral", text = "The gamification needs a data model too. We're not skipping features. We're building them on solid ground.", condition = "prioritized_tech" },

        -- Features path
        { speaker = "arch", expression = "concerned", text = "Build what Priya wants. Get the features in front of users. We refactor in v2.", condition = "prioritized_product" },
        { speaker = "arch", expression = "concerned", text = "(I just signed up to build something I'll spend the next year apologizing for.)", condition = "prioritized_product" },
        { speaker = "dev", expression = "frustrated", text = "Casey. Of all people.", condition = "prioritized_product" },
        { speaker = "arch", expression = "concerned", text = "(Pragmatism feels like betrayal when you're the architect.)", condition = "prioritized_product" },

        -- Users path
        { speaker = "arch", expression = "neutral", text = "Architecture serves users. Cut the leaderboard. Cut the achievements. Build the simple flows on a foundation that lasts.", condition = "prioritized_users" },
        { speaker = "qa", expression = "smirk", text = "Casey gets it.", condition = "prioritized_users" },
        { speaker = "po", expression = "defensive", text = "But the vision...", condition = "prioritized_users" },
        { speaker = "arch", expression = "neutral", text = "The vision is better when it works for real people, not slideware.", condition = "prioritized_users" },

        -- Post-review: back at desk
        { bg = "office_day" },

        { speaker = "arch", expression = "neutral", text = "Back at my desk. I pull up the architecture diagram. Six boxes. Twelve arrows. A lie drawn in dry-erase marker." },
        { speaker = "arch", expression = "concerned", text = "I erase two boxes. Merge them into one. Simplify." },
        { speaker = "arch", expression = "neutral", text = "(The design review showed me something. Alex thinks in user flows. Sam thinks in code paths. Riley thinks in failure modes.)" },
        { speaker = "arch", expression = "concerned", text = "(I think in boxes and arrows. The trick is making sure the boxes match reality, not my preferences.)" },

        { text = "..." },

        { speaker = "arch", expression = "neutral", text = "I open Slack. Sam posted a PR. The title is 'refactor: actually this works fine'. Sixteen files changed." },
        { speaker = "arch", expression = "concerned", text = "(I should review it. I should also pick my battles.)" },
        { speaker = "arch", expression = "neutral", text = "(Design reviews. Every pixel is a database row. Every screen is a service boundary. I see them. They don't. That's the loneliness of architecture.)" },

        { text = "", goto = "day5" }
    }
}
