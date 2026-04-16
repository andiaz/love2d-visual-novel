return {
    title = "Day 4 -- Thursday",
    subtitle = "The Design Review",
    narration = "Time to present the designs. Everyone has feedback. Everyone.",

    dialogue = {
        -- PRE-REVIEW: Imposter syndrome at the desk
        { bg = "office_day", bgm = "Sprint Cycle (UX Nights)" },

        { speaker = "ux", expression = "neutral", text = "Thursday morning. The review is in ninety minutes." },
        { speaker = "ux", expression = "thinking", text = "I'm staring at the Figma canvas. Dozens of artboards. Three user flows. One designer who is not sure any of it is good enough." },
        { speaker = "ux", expression = "frustrated", text = "(The onboarding flow still has a placeholder screen where the profile setup should be.)" },
        { speaker = "ux", expression = "frustrated", text = "(And the feed layout. Is the card height right? Is the whitespace enough? Too much? I've moved that margin four times.)" },
        { speaker = "ux", expression = "thinking", text = "I zoom out. The full canvas fills the screen. Dozens of rectangles connected by arrows." },
        { speaker = "ux", expression = "frustrated", text = "(It looks like a lot of work. It also looks like something a second-year student could have done.)" },
        { speaker = "ux", expression = "neutral", text = "(Stop it. You did the research. You talked to users. These flows are grounded in real needs.)" },
        { speaker = "ux", expression = "frustrated", text = "(But what if Casey asks about the data model and I don't have an answer?)" },
        { speaker = "ux", expression = "frustrated", text = "(What if Priya wants features I haven't even considered?)" },
        { speaker = "ux", expression = "thinking", text = "(What if Sam looks at this and quietly decides it's not buildable?)" },
        { speaker = "ux", expression = "neutral", text = "I close the laptop lid. Open it again. The designs are still there. They haven't improved in the last ten seconds." },
        { speaker = "ux", expression = "neutral", text = "(Okay. Deep breath. You've done this before. You present. They critique. You iterate. That's the job.)" },
        { speaker = "ux", expression = "thinking", text = "(The imposter syndrome isn't going to leave. But the meeting starts at ten whether I'm ready or not.)" },
        { speaker = "ux", expression = "neutral", text = "I open the presentation view. One last check. Onboarding. Content creation. Feed. Three flows. Clean transitions." },
        { speaker = "ux", expression = "neutral", text = "(Good enough. It has to be good enough.)" },

        -- THE REVIEW
        { bg = "meeting_room" },

        { speaker = "pm", expression = "neutral", text = "Alright everyone, Alex has designs to walk us through. Let's keep feedback constructive." },
        { speaker = "ux", expression = "neutral", text = "Thanks Jordan. So I've mapped out the three core user flows -- onboarding, content creation, and the feed." },
        { speaker = "ux", expression = "neutral", text = "Starting with onboarding. The user lands on a welcome screen, picks a role, sets up a profile, and gets dropped into a personalized feed." },
        { speaker = "po", expression = "excited", text = "I like the role picker. Can we add more roles? What about guest access?" },
        { speaker = "ux", expression = "neutral", text = "Guest access is a different flow entirely. I'd want to scope that separately." },
        { speaker = "po", expression = "excited", text = "Sure, sure. But just think about it." },
        { speaker = "ux", expression = "thinking", text = "(She says 'just think about it' the way people say 'just one more thing.' It's never one more thing.)" },

        -- Casey's feedback
        { speaker = "arch", expression = "whiteboarding", text = "Before we go further -- the data model behind this content feed. Are we thinking relational or document-based?" },
        { speaker = "dev", expression = "neutral", text = "Casey, it's a design review. Not an architecture review." },
        { speaker = "arch", expression = "neutral", text = "The two are connected! If Alex designs a nested comment thread, that has database implications." },
        { speaker = "ux", expression = "thinking", text = "(He's not wrong. But I'm presenting screens, not schemas.)" },
        { speaker = "arch", expression = "whiteboarding", text = "And this content card -- is it a single entity or a composite of multiple records? Because that changes the API contract." },
        { speaker = "ux", expression = "neutral", text = "I designed it as one visual unit. How it maps to the backend is something I'd love to sync on after." },
        { speaker = "arch", expression = "concerned", text = "After means rework. I'd rather align now." },
        { speaker = "pm", expression = "neutral", text = "Casey, noted. Let Alex finish the walkthrough." },

        -- Priya's feedback
        { speaker = "po", expression = "excited", text = "Okay, the feed looks great. But can we also add a leaderboard? And achievements? Gamification was on slide 34 of my deck." },
        { speaker = "qa", expression = "deadpan", text = "You're referencing a slide nobody has seen." },
        { speaker = "po", expression = "defensive", text = "It's a GREAT slide." },
        { speaker = "ux", expression = "neutral", text = "Priya, I can look at gamification as a layer on top. But the core flows need to work first." },
        { speaker = "po", expression = "excited", text = "Of course! But imagine -- badges next to usernames. Progress bars on profiles. It would make the feed so much more engaging." },
        { speaker = "ux", expression = "thinking", text = "(She's already designing in her head. I need to steer this back.)" },

        -- Sam's feedback
        { speaker = "dev", expression = "neutral", text = "Honest question -- did anyone think about mobile? These layouts are clearly desktop-first." },
        { speaker = "ux", expression = "frustrated", text = "(Because nobody told me the mobile requirements.)" },
        { speaker = "dev", expression = "neutral", text = "The card layout assumes a minimum width of what, 900 pixels? Half our users will be on phones." },
        { speaker = "ux", expression = "neutral", text = "Fair point. I can do a responsive pass, but I need to know what we're cutting for small screens." },
        { speaker = "dev", expression = "neutral", text = "The sidebar, probably. And the inline editor. Those don't work on touch." },
        { speaker = "ux", expression = "thinking", text = "(He's right. The inline editor was already fragile in my head. On mobile it's impossible.)" },

        -- Riley's feedback
        { speaker = "qa", expression = "neutral", text = "I have a list." },
        { speaker = "pm", expression = "stressed", text = "(Brace.)" },
        { speaker = "qa", expression = "neutral", text = "What happens when a user uploads a 200MB file? What about users with screen readers? What if someone's display name is 400 characters?" },
        { speaker = "qa", expression = "neutral", text = "What if the feed loads empty because the user has no connections yet? What does the zero state look like?" },
        { speaker = "ux", expression = "neutral", text = "The zero state. I actually have a design for that -- let me pull it up." },
        { speaker = "qa", expression = "neutral", text = "Good. What about error states? Network timeout during upload? Session expiry mid-edit?" },
        { speaker = "ux", expression = "thinking", text = "(I didn't design error states. I should have designed error states.)" },
        { speaker = "pm", expression = "neutral", text = "Riley, maybe pick your top concern?" },
        { speaker = "qa", expression = "neutral", text = "Accessibility. It's not optional." },
        { speaker = "ux", expression = "thinking", text = "(Riley's right. I should have flagged that earlier. The color contrast alone needs a full audit.)" },

        -- The choice
        { speaker = "pm", expression = "neutral", text = "Okay, we have a lot of feedback. Alex, what's your priority for the next iteration?" },
        { speaker = "ux", expression = "thinking", text = "(Three directions. I can only go deep on one. The designs become whichever path I pick.)",
            choices = {
                { text = "I'll address the technical constraints first.", set = {prioritized_tech = true}, rel = {dev = 2, arch = 2, po = -1} },
                { text = "I'll add the features Priya wants.", set = {prioritized_product = true}, rel = {po = 2, pm = 1, dev = -1, qa = -1} },
                { text = "I'll focus on accessibility and core UX.", set = {prioritized_users = true}, rel = {qa = 2, dev = 1, po = -2} },
            }
        },

        -- Tech path
        { speaker = "dev", expression = "smiling", text = "Thank you. Seriously. Let's sync on what's actually buildable.", condition = "prioritized_tech" },
        { speaker = "arch", expression = "whiteboarding", text = "I'll prepare a technical constraints doc. Let me draw something...", condition = "prioritized_tech" },
        { speaker = "ux", expression = "neutral", text = "Casey, if you can get me the entity relationships by tomorrow, I'll redesign the content card around them.", condition = "prioritized_tech" },
        { speaker = "arch", expression = "neutral", text = "You'll have it by end of day.", condition = "prioritized_tech" },
        { speaker = "po", expression = "defensive", text = "But the gamification...", condition = "prioritized_tech" },
        { speaker = "ux", expression = "neutral", text = "It's not off the table, Priya. It's just not the foundation.", condition = "prioritized_tech" },
        { speaker = "dev", expression = "neutral", text = "I'll block out an hour this afternoon. Bring your Figma, I'll bring the API sketch.", condition = "prioritized_tech" },
        { speaker = "ux", expression = "thinking", text = "(This feels right. Build on solid ground. The fancy stuff can come later.)", condition = "prioritized_tech" },

        -- Product path
        { speaker = "po", expression = "excited", text = "Yes! Now we're talking! I'll send you a list of features by end of day.", condition = "prioritized_product" },
        { speaker = "ux", expression = "neutral", text = "Priya, I need them prioritized. Top three only. I can't design everything at once.", condition = "prioritized_product" },
        { speaker = "po", expression = "excited", text = "Leaderboard, achievements, and... collaborative playlists. Wait, that's not in the deck. New idea!", condition = "prioritized_product" },
        { speaker = "dev", expression = "frustrated", text = "A list. More features. New features that didn't exist five seconds ago. Great.", condition = "prioritized_product" },
        { speaker = "qa", expression = "neutral", text = "We're adding scope to a design that hasn't been tested with a single user.", condition = "prioritized_product" },
        { speaker = "ux", expression = "thinking", text = "(Riley's right. But Priya controls the product direction. I have to work with her.)", condition = "prioritized_product" },
        { speaker = "pm", expression = "neutral", text = "Alex, just make sure the core flows don't get buried under new features.", condition = "prioritized_product" },
        { speaker = "ux", expression = "neutral", text = "(Easier said than done when the feature list keeps growing.)", condition = "prioritized_product" },

        -- Users path
        { speaker = "qa", expression = "smirk", text = "Finally, someone with sense.", condition = "prioritized_users" },
        { speaker = "ux", expression = "neutral", text = "I'm going to do a full accessibility audit. Color contrast, keyboard navigation, screen reader labels. All of it.", condition = "prioritized_users" },
        { speaker = "qa", expression = "neutral", text = "I have a checklist. WCAG 2.1 AA. I'll send it over.", condition = "prioritized_users" },
        { speaker = "ux", expression = "neutral", text = "Perfect. And I'm simplifying the onboarding -- three steps instead of five. Every extra screen is a drop-off point.", condition = "prioritized_users" },
        { speaker = "po", expression = "defensive", text = "But the demo is in less than two weeks! We need features, not polish!", condition = "prioritized_users" },
        { speaker = "ux", expression = "neutral", text = "Accessible design isn't polish. It's the baseline.", condition = "prioritized_users" },
        { speaker = "dev", expression = "neutral", text = "I'll make sure the frontend respects the semantic markup from day one.", condition = "prioritized_users" },
        { speaker = "ux", expression = "thinking", text = "(This is the harder path. Fewer features to show off. But the ones we have will actually work for everyone.)", condition = "prioritized_users" },

        -- POST-REVIEW: Private reaction
        { bg = "office_day" },

        { speaker = "ux", expression = "frustrated", text = "Design reviews. Where everyone's an expert and nothing gets decided." },
        { speaker = "ux", expression = "thinking", text = "I'm back at my desk. The Figma canvas is still open. All those artboards staring back at me." },
        { speaker = "ux", expression = "neutral", text = "(The feedback was... actually useful. Most of it. Casey's data model point will save me a redesign later.)" },
        { speaker = "ux", expression = "thinking", text = "(Riley's accessibility list is going to be a lot of work. But it's work that should have been done from the start.)" },
        { speaker = "ux", expression = "frustrated", text = "(Priya's feature requests though. The leaderboard. The achievements. The thing she invented mid-sentence.)" },
        { speaker = "ux", expression = "neutral", text = "(I need to set boundaries. Not everything that sounds exciting belongs in the first release.)" },
        { speaker = "ux", expression = "thinking", text = "I start a new Figma page. 'V2 -- Post Review.' I duplicate the three flows and start annotating." },
        { speaker = "ux", expression = "neutral", text = "(One day I'll present something and the room will just nod. Today was not that day.)" },
        { speaker = "ux", expression = "neutral", text = "At least Jordan took notes. Probably. Maybe." },

        { text = "", goto = "day5" }
    }
}
