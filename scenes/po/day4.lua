return {
    title = "Day 4 -- Thursday",
    subtitle = "The Design Review",
    narration = "Alex is presenting your vision -- in pixel form. The team has feedback. Most of it is for you.",

    bg = "meeting_room",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "po", expression = "excited", text = "Thursday. Design review. The vision becomes screens." },
        { speaker = "pm", expression = "neutral", text = "Alright everyone, Alex has designs to walk us through. Constructive feedback only." },
        { speaker = "ux", expression = "neutral", text = "I've mapped out the core flows -- onboarding, content creation, the feed. First pass." },
        { speaker = "po", expression = "excited", text = "(YES. This is my baby on screen.)" },

        -- Casey
        { speaker = "arch", expression = "whiteboarding", text = "Before we go further -- the data model behind this content feed. Relational or document?" },
        { speaker = "dev", expression = "neutral", text = "Casey, design review. Not architecture review." },
        { speaker = "po", expression = "neutral", text = "(Don't engage. Casey will derail the meeting if you let him.)" },

        -- Priya wants more
        { speaker = "po", expression = "excited", text = "I love it! But can we also add a leaderboard? And achievements? Gamification was on slide 34." },
        { speaker = "qa", expression = "deadpan", text = "You're referencing a slide nobody has seen." },
        { speaker = "po", expression = "defensive", text = "It's a GREAT slide." },
        { speaker = "po", expression = "defensive", text = "(Why does Riley always do this?)" },

        -- Sam
        { speaker = "dev", expression = "neutral", text = "Honest question -- did anyone think about mobile? These layouts are clearly desktop-first." },
        { speaker = "ux", expression = "frustrated", text = "(Because nobody told me the mobile requirements.)" },
        { speaker = "po", expression = "defensive", text = "(That's on me. I should have specced mobile.)" },

        -- Riley
        { speaker = "qa", expression = "neutral", text = "What happens with a 200MB upload? Screen readers? 400-character display name?" },
        { speaker = "pm", expression = "neutral", text = "Riley, top concern?" },
        { speaker = "qa", expression = "neutral", text = "Accessibility. It's not optional." },
        { speaker = "po", expression = "neutral", text = "(Accessibility wasn't in the deck. Should have been. Note to self.)" },

        -- The choice
        { speaker = "pm", expression = "neutral", text = "Priya, you're the product owner. What's the priority for the next iteration?" },

        { speaker = "po", expression = "neutral", text = "(Three priorities. I can only pick one. The product becomes whichever I pick.)",
            choices = {
                { text = "Tech first. Sam and Casey, fix what's brittle. I'll defend the timeline.", set = {prioritized_tech = true}, rel = {dev = 2, arch = 2, ux = -1} },
                { text = "Features first. We need wow factor for the demo. Add the leaderboard.", set = {prioritized_product = true}, rel = {ux = 1, dev = -2, qa = -1} },
                { text = "Users first. Accessibility, simpler core, fewer features. Cut what doesn't serve them.", set = {prioritized_users = true}, rel = {qa = 2, dev = 1, ux = 2} },
            }
        },

        -- Tech
        { speaker = "po", expression = "neutral", text = "Sam, Casey -- you have my air cover. Fix the foundation. Features wait.", condition = "prioritized_tech" },
        { speaker = "dev", expression = "smiling", text = "Did Priya just say features wait?", condition = "prioritized_tech" },
        { speaker = "arch", expression = "neutral", text = "Mark this date.", condition = "prioritized_tech" },

        -- Features
        { speaker = "po", expression = "excited", text = "Features. Demo magic. Add the leaderboard. Add the achievements. Show ambition.", condition = "prioritized_product" },
        { speaker = "dev", expression = "frustrated", text = "(Of course. I should have known.)", condition = "prioritized_product" },
        { speaker = "qa", expression = "deadpan", text = "Adding scope to a design that hasn't been tested with a single user.", condition = "prioritized_product" },

        -- Users
        { speaker = "po", expression = "neutral", text = "Cut the leaderboard. Cut the achievements. Cut anything that doesn't help a real user do a real task.", condition = "prioritized_users" },
        { speaker = "qa", expression = "smirk", text = "I'm putting this on a poster.", condition = "prioritized_users" },
        { speaker = "po", expression = "neutral", text = "(That hurt to say. But it was right.)", condition = "prioritized_users" },

        -- End of day
        { speaker = "po", expression = "neutral", text = "(Design reviews. Where the deck meets reality. Reality always wins.)" },

        { text = "", goto = "day5" }
    }
}
