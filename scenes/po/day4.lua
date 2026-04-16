return {
    title = "Day 4 -- Thursday",
    subtitle = "The Design Review",
    narration = "Alex is presenting your vision -- in pixel form. The team has feedback. Most of it is for you.",

    dialogue = {
        -- PRE-REVIEW: Reviewing designs against the vision deck
        { bg = "office_day", bgm = "Sprint Cycle (UX Nights)" },

        { speaker = "po", expression = "excited", text = "Thursday. Design review at ten. The vision becomes screens today." },
        { speaker = "po", expression = "neutral", text = "I open the vision deck side by side with Alex's Figma link. Ambition meets execution." },
        { speaker = "po", expression = "neutral", text = "Slide 12: 'Personalized content discovery.' Alex has a feed with cards. Good. But where's the recommendation engine?" },
        { speaker = "po", expression = "thinking", text = "(The deck says 'AI-powered suggestions.' The design shows a chronological list. Those are not the same thing.)" },
        { speaker = "po", expression = "neutral", text = "Slide 23: 'Community engagement features.' Alex has comments and likes. Where are the leaderboards? The achievements?" },
        { speaker = "po", expression = "defensive", text = "(Slide 34 has the gamification framework. It's a great slide. Nobody has seen it but it's great.)" },
        { speaker = "po", expression = "neutral", text = "Slide 41: 'Growth loops.' The deck promises viral sharing, referral codes, collaborative playlists." },
        { speaker = "po", expression = "frustrated", text = "(Alex designed none of that. The onboarding doesn't even have a referral step.)" },
        { speaker = "po", expression = "thinking", text = "(But... is the deck realistic? Sam said every feature is a database table, an API, a screen. How many tables are hiding in this vision?)" },
        { speaker = "po", expression = "neutral", text = "(No. Stop. The vision is the vision. The team's job is to build it. My job is to make sure it doesn't get watered down.)" },
        { speaker = "po", expression = "neutral", text = "I make a list. Feature gaps between the deck and the designs. Seven items. That feels like a lot." },
        { speaker = "po", expression = "thinking", text = "(Seven gaps. Two weeks until the demo. The math doesn't work. But I'll push anyway. That's the job.)" },
        { speaker = "po", expression = "neutral", text = "I close the deck. Deep breath. Time to go advocate for the product." },

        -- THE REVIEW
        { bg = "meeting_room" },

        { speaker = "pm", expression = "neutral", text = "Alright everyone, Alex has designs to walk us through. Constructive feedback only." },
        { speaker = "ux", expression = "neutral", text = "I've mapped out the core flows -- onboarding, content creation, the feed. First pass." },
        { speaker = "po", expression = "excited", text = "(YES. This is my baby on screen. Finally.)" },
        { speaker = "ux", expression = "neutral", text = "Starting with onboarding. Welcome, role picker, profile setup, then you land in the feed." },
        { speaker = "po", expression = "neutral", text = "(No referral step. No invite-a-friend prompt. The growth loop is missing.)" },

        -- Casey
        { speaker = "arch", expression = "whiteboarding", text = "Before we go further -- the data model behind this content feed. Relational or document?" },
        { speaker = "dev", expression = "neutral", text = "Casey, design review. Not architecture review." },
        { speaker = "po", expression = "neutral", text = "(Don't engage. Casey will derail the meeting if you let him. Let Jordan handle it.)" },
        { speaker = "arch", expression = "whiteboarding", text = "But nested comments have database implications--" },
        { speaker = "pm", expression = "neutral", text = "Casey, parking lot. Tomorrow." },
        { speaker = "po", expression = "neutral", text = "(Good. Jordan parked it. Now I can get to the real feedback.)" },

        -- Priya's turn
        { speaker = "po", expression = "excited", text = "Alex, I love the direction. Really. But I have some gaps from the product side." },
        { speaker = "po", expression = "excited", text = "Where's the leaderboard? And achievements? Gamification was on slide 34 of the vision deck." },
        { speaker = "qa", expression = "deadpan", text = "You're referencing a slide nobody has seen." },
        { speaker = "po", expression = "defensive", text = "It's a GREAT slide." },
        { speaker = "po", expression = "neutral", text = "But seriously. The deck has community engagement features that aren't reflected in these designs." },
        { speaker = "ux", expression = "neutral", text = "Priya, I focused on the core flows. Gamification is a layer on top." },
        { speaker = "po", expression = "neutral", text = "A layer that makes the difference between 'nice tool' and 'platform people come back to.'" },
        { speaker = "po", expression = "excited", text = "Imagine -- badges next to usernames. Progress bars on profiles. Weekly challenges. It turns passive users into active ones." },
        { speaker = "dev", expression = "frustrated", text = "It also turns one sprint into three." },
        { speaker = "po", expression = "defensive", text = "(Why does every feature request become a negotiation?)" },

        -- Sam
        { speaker = "dev", expression = "neutral", text = "Honest question -- did anyone think about mobile? These layouts are clearly desktop-first." },
        { speaker = "ux", expression = "frustrated", text = "(The deck said mobile-first. The designs say desktop-only. That disconnect is on me.)" },
        { speaker = "po", expression = "defensive", text = "(That's on me. I should have specced mobile. The deck mentions 'mobile-first experience' on slide 8 but I never broke it down.)" },
        { speaker = "dev", expression = "neutral", text = "Half our users will be on phones." },
        { speaker = "po", expression = "neutral", text = "Sam's right. Mobile is critical. Alex, can we get responsive designs in the next pass?" },
        { speaker = "ux", expression = "neutral", text = "If I get breakpoints and know what to cut for small screens." },

        -- Riley
        { speaker = "qa", expression = "neutral", text = "What happens with a 200MB upload? Screen readers? 400-character display name?" },
        { speaker = "qa", expression = "neutral", text = "Zero states? Error recovery? Session timeout handling?" },
        { speaker = "pm", expression = "neutral", text = "Riley, top concern?" },
        { speaker = "qa", expression = "neutral", text = "Accessibility. It's not optional." },
        { speaker = "po", expression = "neutral", text = "(Accessibility wasn't in the deck. Should have been. That's a gap in my vision, not Alex's designs.)" },
        { speaker = "po", expression = "thinking", text = "(Riley finds the things nobody wants to think about. It's annoying because it's valuable.)" },

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
        { speaker = "po", expression = "neutral", text = "Don't get used to it. This is a strategic pause, not a surrender.", condition = "prioritized_tech" },
        { speaker = "po", expression = "neutral", text = "Sam, I want a status update by Monday. What's stable, what's not, and when can I start adding features back.", condition = "prioritized_tech" },
        { speaker = "dev", expression = "neutral", text = "Deal.", condition = "prioritized_tech" },
        { speaker = "po", expression = "thinking", text = "(The deck will survive one iteration of patience. The product won't survive a broken foundation.)", condition = "prioritized_tech" },
        { speaker = "po", expression = "neutral", text = "(But I'm counting the days. The demo clock is ticking.)", condition = "prioritized_tech" },

        -- Features
        { speaker = "po", expression = "excited", text = "Features. Demo magic. We need the leaderboard and achievements. Show ambition.", condition = "prioritized_product" },
        { speaker = "po", expression = "excited", text = "Alex, I'll have the feature specs to you by end of day. Prioritized. Top five.", condition = "prioritized_product" },
        { speaker = "dev", expression = "frustrated", text = "(Of course. I should have known.)", condition = "prioritized_product" },
        { speaker = "qa", expression = "deadpan", text = "Adding scope to a design that hasn't been tested with a single user.", condition = "prioritized_product" },
        { speaker = "po", expression = "defensive", text = "The demo IS the test. Stakeholders see the vision, they fund the next phase.", condition = "prioritized_product" },
        { speaker = "pm", expression = "neutral", text = "Priya, keep the list realistic. Five features, not fifteen.", condition = "prioritized_product" },
        { speaker = "po", expression = "excited", text = "(Five features. I can work with five. The other ten go in phase two.)", condition = "prioritized_product" },
        { speaker = "po", expression = "neutral", text = "(This is the right call. Show the ambition. Worry about the plumbing later.)", condition = "prioritized_product" },

        -- Users
        { speaker = "po", expression = "neutral", text = "Cut the leaderboard. Cut the achievements. Cut anything that doesn't help a real user do a real task.", condition = "prioritized_users" },
        { speaker = "qa", expression = "smirk", text = "I'm putting this on a poster.", condition = "prioritized_users" },
        { speaker = "po", expression = "neutral", text = "(That hurt to say. Every feature I cut is a piece of the vision I'm letting go.)", condition = "prioritized_users" },
        { speaker = "dev", expression = "neutral", text = "Priya, that's the right call. We'll build something solid that we can grow.", condition = "prioritized_users" },
        { speaker = "ux", expression = "neutral", text = "I'll simplify the onboarding. Three steps instead of five. Focus on getting users to value fast.", condition = "prioritized_users" },
        { speaker = "po", expression = "neutral", text = "And Riley -- I want your accessibility checklist. I'm adding it to the product requirements.", condition = "prioritized_users" },
        { speaker = "qa", expression = "neutral", text = "You'll have it by end of day.", condition = "prioritized_users" },
        { speaker = "po", expression = "thinking", text = "(Fewer features. Better product. The deck will need an update. But maybe that's overdue anyway.)", condition = "prioritized_users" },

        -- POST-REVIEW: Private reaction
        { bg = "office_day" },

        { speaker = "po", expression = "neutral", text = "Back at my desk. The vision deck is still open. So much ambition on screen." },
        { speaker = "po", expression = "thinking", text = "(The gap between the deck and reality is... wider than I thought.)" },
        { speaker = "po", expression = "neutral", text = "(Alex designed three flows. The deck has twelve. That's nine flows nobody is building.)" },
        { speaker = "po", expression = "frustrated", text = "(But I can't blame the team. I wrote a vision for a product that would take six months. We have six weeks.)" },
        { speaker = "po", expression = "thinking", text = "(Maybe the vision isn't wrong. Maybe the timeline is. Or maybe I need to find the version of this product that fits the time we have.)" },
        { speaker = "po", expression = "neutral", text = "I open a new document. 'Vision Deck v2 -- Realistic.' I start copying slides. Only the ones that map to what Alex designed." },
        { speaker = "po", expression = "neutral", text = "(Seven features prioritized. Out of the whole deck. That's... sobering.)" },
        { speaker = "po", expression = "neutral", text = "(Design reviews. Where the deck meets reality. Reality always wins.)" },
        { speaker = "po", expression = "thinking", text = "(But the deck isn't dead. It's a roadmap. Phase one is seven slides. Phase two is the rest. And phase two starts the day after the demo.)" },

        { text = "", goto = "day5" }
    }
}
