return {
    title = "Day 6 -- Tuesday",
    subtitle = "The Design Critique",
    narration = "Solo day. The office is quiet. Your Figma file is open. Your mind is louder than any meeting.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "ux", expression = "neutral", text = "Tuesday. 8:47 AM. The office is half-empty. Jordan is in a leadership sync. Sam is remote. Priya is... somewhere." },
        { speaker = "ux", expression = "thinking", text = "(Just me and forty-three Figma frames. And the question I have been avoiding since Friday.)" },
        { speaker = "ux", expression = "thinking", text = "(Are we designing the right thing?)" },

        -- Conditional: pushed_interviews
        { speaker = "ux", expression = "thinking", text = "(The interview transcripts are still open in another tab. Five users. Five variations of the same answer: 'I just want search that works.')", condition = "pushed_interviews" },
        { speaker = "ux", expression = "frustrated", text = "(And here I am, designing a content creation flow with templates and AI suggestions. For people who want a search bar.)", condition = "pushed_interviews" },
        { speaker = "ux", expression = "thinking", text = "(The data is clear. The deck is not. And I have been designing for the deck.)", condition = "pushed_interviews" },

        -- Conditional: started_wireframes
        { speaker = "ux", expression = "thinking", text = "(The wireframes are three days old and already wrong. I can feel it. The flows don't connect the way real people think.)", condition = "started_wireframes" },
        { speaker = "ux", expression = "frustrated", text = "(I built screens before I understood the problem. Classic. The kind of mistake I used to judge other designers for.)", condition = "started_wireframes" },

        -- Conditional: needs_requirements
        { speaker = "ux", expression = "neutral", text = "(At least we have requirements. Imperfect ones. But the design is grounded in something besides a deck.)", condition = "needs_requirements" },
        { speaker = "ux", expression = "thinking", text = "(The question is whether 'grounded' is enough. Or whether I need 'validated.')", condition = "needs_requirements" },

        -- Morning deep work
        { speaker = "ux", expression = "neutral", text = "(I open the content creation flow. Frame 17. The one Priya loves. The one that feels wrong.)" },
        { speaker = "ux", expression = "thinking", text = "(Three text fields. Two dropdowns. A publish button. It looks clean. It feels hollow.)" },
        { speaker = "ux", expression = "thinking", text = "(When was the last time I asked myself: would I use this? Honestly?)" },
        { speaker = "ux", expression = "frustrated", text = "(No. I would not. I would use the search bar. Like everyone else.)" },

        -- Slack messages start arriving
        { speaker = "ux", expression = "neutral", text = "(Slack pings. 9:22 AM. The world remembers I exist.)" },

        -- Slack from Priya
        { speaker = "po", expression = "excited", text = "[Slack] Alex! Quick thought -- can we add a 'featured content' banner to the home screen? Leadership loves curated experiences!" },
        { speaker = "ux", expression = "frustrated", text = "(Another feature. Another surface. Another thing nobody asked for except leadership.)" },
        { speaker = "ux", expression = "neutral", text = "(I type 'Sure, let me look into it' and then delete it. I type 'That's scope creep' and delete that too.)" },
        { speaker = "ux", expression = "thinking", text = "(I type 'Can we talk about this after I finish the current flow?' and hit send. Diplomatic. Evasive. Fine.)" },

        -- Slack from Sam
        { speaker = "dev", expression = "neutral", text = "[Slack] Hey Alex. The content creation API is done. But I built it against the wireframes from Thursday. Have those changed?" },
        { speaker = "ux", expression = "frustrated", text = "(They have changed. Three times. I haven't told Sam because I haven't committed to any version.)" },
        { speaker = "ux", expression = "neutral", text = "(I type 'Minor tweaks, nothing breaking. I will send updated specs by EOD.' That is technically not a lie. Technically.)" },

        -- Slack from Riley
        { speaker = "qa", expression = "deadpan", text = "[Slack] Alex, the empty states in your designs are blank. Literally blank. What happens when a user has zero content?" },
        { speaker = "ux", expression = "frustrated", text = "(Riley is right. I forgot empty states. Again. The unsexy but critical part of design that separates juniors from seniors.)" },
        { speaker = "ux", expression = "thinking", text = "(I add 'empty states' to my task list. It is now fourteen items long. Six of them are things I should have done last week.)" },

        -- The design critique - unique scene
        { speaker = "ux", expression = "neutral", text = "(10:30 AM. A new Slack message. This one is different.)" },
        { speaker = "ux", expression = "neutral", text = "[Slack from Mentor - Dana Chen] Hey Alex. Saw your portfolio update. That Chimera project -- mind if I give some honest feedback on the flows you posted?" },
        { speaker = "ux", expression = "thinking", text = "(Dana. My old design lead from Vertex. The person who taught me that 'pretty' is not the same as 'usable.')" },
        { speaker = "ux", expression = "neutral", text = "(I type 'Please do.' My hands are slightly shaking. Dana's feedback always hurts. And is always right.)" },
        { speaker = "ux", expression = "neutral", text = "[Slack from Dana] The visual craft is strong. The hierarchy is clean. The micro-interactions are thoughtful." },
        { speaker = "ux", expression = "neutral", text = "[Slack from Dana] But I have a question. Who is this for?" },
        { speaker = "ux", expression = "frustrated", text = "(There it is. The question I have been avoiding. From the person I cannot lie to.)" },
        { speaker = "ux", expression = "neutral", text = "[Slack from Dana] The creation flow assumes users WANT to create. Your research tab shows they want to FIND. Those are different products, Alex." },
        { speaker = "ux", expression = "thinking", text = "(She just said in two sentences what I have been circling for six days.)" },
        { speaker = "ux", expression = "neutral", text = "[Slack from Dana] You are designing for the stakeholder's vision. Not the user's need. I have been there. It is the hardest trap in UX." },
        { speaker = "ux", expression = "neutral", text = "[Slack from Dana] The question is: do you have the leverage to change course? And the courage to try?" },
        { speaker = "ux", expression = "thinking", text = "(Leverage. Courage. Two things I am currently short on.)" },
        { speaker = "ux", expression = "neutral", text = "(I stare at the Figma file. Forty-three frames. A week of work. And Dana just told me the foundation is wrong.)" },
        { speaker = "ux", expression = "thinking", text = "(Not the craft. The foundation. The 'who is this for' part. The part that matters most.)" },

        -- Scope creep conditional
        { speaker = "ux", expression = "frustrated", text = "(And yesterday I absorbed even more scope on top of a shaky foundation. Brilliant, Alex.)", condition = "absorbed_scope" },
        { speaker = "ux", expression = "thinking", text = "(At least I pushed back on scope yesterday. The foundation might be wrong, but at least I am not building more on top of it.)", condition = "fought_scope" },
        { speaker = "ux", expression = "thinking", text = "(The commenting compromise from yesterday was smart. But even smart features are wrong features if the foundation is wrong.)", condition = "compromised_scope" },

        -- The choice
        { speaker = "ux", expression = "neutral", text = "(1:15 PM. Lunch is a granola bar at my desk. The Figma file is still open. Dana's words are still on my screen.)" },
        { speaker = "ux", expression = "thinking", text = "(I have to decide. Not tomorrow. Not after the demo. Now. What kind of designer am I on this project?)",
            choices = {
                { text = "(Follow the data. Redesign around what users actually need. Even if it means throwing away a week of work.)", set = {followed_data = true}, rel = {po = -2, qa = 2, dev = 1, arch = 1} },
                { text = "(Follow the vision. The deck is the deck. Polish what exists. Make it beautiful. Ship it.)", set = {followed_vision = true}, rel = {po = 2, pm = 1, qa = -2, dev = -1} },
                { text = "(Find the middle. Keep the visual framework but restructure the flows around validated needs.)", set = {found_middle = true}, rel = {po = 0, pm = 2, qa = 1, dev = 1} },
            }
        },

        -- Data path
        { speaker = "ux", expression = "thinking", text = "(I close frame 17. I open a new page. 'Chimera v2 -- User-First.' The title alone feels like a confession.)", condition = "followed_data" },
        { speaker = "ux", expression = "neutral", text = "(Search first. Browse second. Create third. The inverse of everything Priya wanted. But the order users actually need.)", condition = "followed_data" },
        { speaker = "ux", expression = "thinking", text = "(Dana was right. The courage part is harder than the craft part. But the craft follows the courage.)", condition = "followed_data" },
        { speaker = "ux", expression = "neutral", text = "(I message Dana: 'You were right. Redesigning now. Thank you.' She replies with a single thumbs up.)", condition = "followed_data" },

        -- Vision path
        { speaker = "ux", expression = "neutral", text = "(I close Dana's chat. I open frame 17. I add a gradient. I refine the spacing. I make it beautiful.)", condition = "followed_vision" },
        { speaker = "ux", expression = "thinking", text = "(This is the safe choice. The polished choice. The choice that ships on time and looks great in the demo.)", condition = "followed_vision" },
        { speaker = "ux", expression = "frustrated", text = "(It is also the choice that ignores everything I know about the users. But knowing and doing are different muscles.)", condition = "followed_vision" },
        { speaker = "ux", expression = "neutral", text = "(I message Dana: 'Appreciate the feedback. Sticking with the current direction for now.' She does not reply.)", condition = "followed_vision" },

        -- Middle path
        { speaker = "ux", expression = "thinking", text = "(I duplicate frame 17. Keep the layout. Gut the content hierarchy. Search moves up. Creation moves down.)", condition = "found_middle" },
        { speaker = "ux", expression = "neutral", text = "(Same visual language. Different information architecture. Priya will see her vision. Users will find what they need.)", condition = "found_middle" },
        { speaker = "ux", expression = "thinking", text = "(It is a compromise. But it is an honest one. The kind Dana taught me to make.)", condition = "found_middle" },
        { speaker = "ux", expression = "neutral", text = "(I message Dana: 'Restructuring the IA. Keeping the shell. Is that cowardice or pragmatism?' She replies: 'Yes.')", condition = "found_middle" },

        -- Closing reflection
        { speaker = "ux", expression = "neutral", text = "(5:48 PM. The office is empty again. Figma auto-saved eleven minutes ago. The granola bar wrapper is still on my desk.)" },
        { speaker = "ux", expression = "thinking", text = "(Solo days are the days the real design happens. Not in meetings. Not in standups. In the silence between Slack messages.)" },
        { speaker = "ux", expression = "thinking", text = "(Tomorrow the team will see what I built today. They will have opinions. But today, it was just me and the problem.)" },
        { speaker = "ux", expression = "neutral", text = "(I close the laptop. The Figma file has fifty-one frames now. Some of them are honest.)" },

        { text = "", goto = "day7" }
    }
}
