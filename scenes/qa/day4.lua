return {
    title = "Day 4 -- Thursday",
    subtitle = "The Design Review",
    narration = "Alex is presenting designs. Casey will derail it. Priya will add features. You will sit in the back and write down every edge case nobody else is thinking about.",

    bg = "meeting_room",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "qa", expression = "deadpan", text = "Thursday. Design review. The room where edge cases go to die." },
        { speaker = "pm", expression = "neutral", text = "Alright everyone, Alex has designs to walk us through." },
        { speaker = "ux", expression = "neutral", text = "I've mapped out the core flows -- onboarding, content creation, the feed." },

        -- Casey
        { speaker = "arch", expression = "whiteboarding", text = "Before we go further -- the data model. Relational or document-based?" },
        { speaker = "dev", expression = "neutral", text = "Casey, design review. Not architecture review." },
        { speaker = "qa", expression = "deadpan", text = "(Tangent one. 36 seconds in. New record.)" },

        -- Priya
        { speaker = "po", expression = "excited", text = "I love it! Add a leaderboard! And achievements!" },
        { speaker = "qa", expression = "deadpan", text = "Where do we draw the line on additions to designs that haven't been tested with a single user?" },
        { speaker = "po", expression = "defensive", text = "Riley, the deck is the test." },
        { speaker = "qa", expression = "deadpan", text = "(The deck is the test. The fox is the chicken.)" },

        -- Sam
        { speaker = "dev", expression = "neutral", text = "Did anyone think about mobile? These layouts are clearly desktop-first." },
        { speaker = "ux", expression = "frustrated", text = "(Because nobody told me the mobile requirements.)" },
        { speaker = "qa", expression = "deadpan", text = "(Bug report: 'mobile, the entire concept of.')" },

        -- Riley's turn
        { speaker = "qa", expression = "neutral", text = "I have notes." },
        { speaker = "pm", expression = "stressed", text = "(Brace.)" },
        { speaker = "qa", expression = "neutral", text = "What happens when a user uploads a 200MB file? What about screen readers? What if a display name is 400 characters? What if it's an emoji?" },
        { speaker = "qa", expression = "neutral", text = "What if two users edit the same article at the same time? What if the network drops mid-save? What if the user's clock is wrong?" },
        { speaker = "qa", expression = "neutral", text = "What if the search index is empty on first load? What if a comment is deleted and a child reply still exists? What if--" },
        { speaker = "pm", expression = "neutral", text = "Riley. Top concern?" },
        { speaker = "qa", expression = "neutral", text = "Pick a priority. I'll align everything else around it." },

        { speaker = "pm", expression = "neutral", text = "What's QA's priority for the next iteration?" },

        { speaker = "qa", expression = "neutral", text = "(Three priorities. The product becomes whichever I pick.)",
            choices = {
                { text = "Tech first. Lock the data model so I have a stable target.", set = {prioritized_tech = true}, rel = {dev = 2, arch = 2, ux = 1} },
                { text = "Features first. The deck wants more. Fine. I'll test what I'm given.", set = {prioritized_product = true}, rel = {po = 2, dev = -1, qa = -1} },
                { text = "Users first. Accessibility, error states, screen readers. The boring critical path.", set = {prioritized_users = true}, rel = {dev = 1, ux = 2, po = -2} },
            }
        },

        -- Tech
        { speaker = "qa", expression = "neutral", text = "I cannot test what changes every week. Lock the schema, then I can build the regression suite.", condition = "prioritized_tech" },
        { speaker = "dev", expression = "smiling", text = "Yes. Thank you.", condition = "prioritized_tech" },

        -- Features
        { speaker = "qa", expression = "deadpan", text = "Fine. I'll test the leaderboard. I'll test the achievements. I'll test the gamification. I'll test the feature you haven't named yet.", condition = "prioritized_product" },
        { speaker = "po", expression = "excited", text = "YES. Riley gets it.", condition = "prioritized_product" },
        { speaker = "qa", expression = "deadpan", text = "(Riley does not get it. Riley is dying inside.)", condition = "prioritized_product" },

        -- Users
        { speaker = "qa", expression = "neutral", text = "Accessibility. Error states. Screen readers. The boring critical path. Everything else can wait.", condition = "prioritized_users" },
        { speaker = "po", expression = "defensive", text = "But the demo--", condition = "prioritized_users" },
        { speaker = "qa", expression = "neutral", text = "Will be over in two weeks. Accessibility issues will be there for years.", condition = "prioritized_users" },

        -- End of day
        { speaker = "qa", expression = "deadpan", text = "(Design review duration: 75 minutes. Scheduled: 45. Edge cases raised: 28. Edge cases addressed: 1.)" },

        { text = "", goto = "day5" }
    }
}
