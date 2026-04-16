return {
    title = "Day 1 -- Monday",
    subtitle = "Sizing the Unknown",
    narration = "New project. Forty-seven slides. And nobody can answer the only question that matters: what are we actually building?",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- PRE-MEETING: At desk
        { speaker = "dev", expression = "neutral", text = "(Monday. 8:47 AM. New project starts today.)" },
        { speaker = "dev", expression = "neutral", text = "(Let's see what we're working with.)" },
        { speaker = "dev", expression = "neutral", text = "(Opens laptop. Checks the repo. There is no repo.)" },
        { speaker = "dev", expression = "frustrated", text = "(No repo. No README. No wiki. Just a calendar invite called 'Chimera Kickoff!!!' with three exclamation marks.)" },
        { speaker = "dev", expression = "neutral", text = "(The tech stack doc is a single Confluence page that says 'TBD.' Last edited four months ago.)" },
        { speaker = "dev", expression = "neutral", text = "(No CI/CD pipeline. No staging environment. No deploy process. We're building on sand.)" },
        { speaker = "dev", expression = "tired", text = "(I've seen this before. Twice. Both times ended with someone crying in a sprint retro.)" },
        { speaker = "dev", expression = "neutral", text = "(Slack notification. Jordan, the PM, wants everyone in the meeting room in ten.)" },
        { speaker = "dev", expression = "neutral", text = "(Grabs coffee. Puts headphones around neck. Time to meet the team.)" },

        -- KICKOFF MEETING
        { bg = "meeting_room" },
        { speaker = "pm", expression = "cheerful", text = "Alright team, welcome! This is the official kickoff for Project Chimera." },
        { speaker = "pm", expression = "cheerful", text = "I'm Jordan, your PM. Let's do quick intros, name and role, 30 seconds each." },
        { speaker = "dev", expression = "neutral", text = "(Jordan's got color-coded sticky notes. This is either very organized or very optimistic.)" },
        { speaker = "ux", expression = "neutral", text = "Hi everyone. Alex, UX Design. Looking forward to working with you all." },
        { speaker = "dev", expression = "neutral", text = "(Notebook already open. Good sign.)" },
        { speaker = "arch", expression = "neutral", text = "Casey, Architecture. I'll be making sure we don't paint ourselves into a corner." },
        { speaker = "dev", expression = "neutral", text = "(Casey and I will either be best friends or mortal enemies. No middle ground with architects.)" },
        { speaker = "qa", expression = "neutral", text = "Riley. QA. I break things so users don't have to." },
        { speaker = "dev", expression = "neutral", text = "(Good. A realist.)" },
        { speaker = "po", expression = "excited", text = "Priya, Product Owner! I am SO excited about this one. I've got a 47-slide deck about the vision." },
        { speaker = "dev", expression = "neutral", text = "(That's not a vision, that's a hostage situation.)" },
        { speaker = "pm", expression = "neutral", text = "Sam, you're our lead dev. Want to introduce yourself?" },
        { speaker = "dev", expression = "neutral", text = "Sam. Developer. I write the code that makes the things do the stuff." },
        { speaker = "qa", expression = "smirk", text = "Eloquent." },

        -- Priya's vision pitch
        { speaker = "po", expression = "excited", text = "Okay, so. Picture this. A platform that's like Uber, but for internal knowledge sharing." },
        { speaker = "dev", expression = "neutral", text = "(So. A wiki.)" },
        { speaker = "po", expression = "excited", text = "Social feeds. Real-time collaboration. Gamified learning paths. AI-powered recommendations." },
        { speaker = "dev", expression = "neutral", text = "(That's five products. She just described five separate products.)" },
        { speaker = "po", expression = "excited", text = "And the best part? We're launching web AND mobile!" },
        { speaker = "arch", expression = "concerned", text = "Both platforms? What's the timeline on that?" },
        { speaker = "pm", expression = "cheerful", text = "MVP in six weeks!" },
        { speaker = "dev", expression = "frustrated", text = "(Six weeks. Web and mobile. Social feeds. Real-time sync. AI recommendations. Sure.)" },
        { speaker = "qa", expression = "deadpan", text = "Define 'MVP.'" },
        { speaker = "po", expression = "excited", text = "Everything I just said, but, you know, version one." },
        { speaker = "dev", expression = "frustrated", text = "(That is not what MVP means.)" },

        -- THE CHOICE
        { speaker = "pm", expression = "neutral", text = "Sam, from a technical perspective, what's your take? Where do we start?" },
        { speaker = "dev", expression = "neutral", text = "(Three options. All honest. Only one of them is polite.)",
            choices = {
                { text = "Before we go further, can someone show me the actual requirements?", set = {dev_wants_specs = true}, rel = {arch = 1, po = -1} },
                { text = "What's the existing codebase look like? Anything to inherit?", set = {dev_asked_codebase = true}, rel = {arch = 2} },
                { text = "Sure, sure. Let's hear the full vision first.", set = {dev_played_along = true}, rel = {po = 1} },
            }
        },

        -- SPECS PATH
        { speaker = "po", expression = "defensive", text = "The deck IS the requirements. Slides 12 through 38 are basically a PRD.", condition = "dev_wants_specs" },
        { speaker = "dev", expression = "neutral", text = "Slide 23 is the word 'delight' in 72-point font.", condition = "dev_wants_specs" },
        { speaker = "qa", expression = "smirk", text = "I tried to write a test case for that. It did not go well.", condition = "dev_wants_specs" },
        { speaker = "arch", expression = "neutral", text = "Sam's right. I'd like to see something we can actually scope against.", condition = "dev_wants_specs" },
        { speaker = "pm", expression = "stressed", text = "We'll get there. Let's not get bogged down on day one.", condition = "dev_wants_specs" },
        { speaker = "dev", expression = "neutral", text = "(Translation: there are no specs. Got it.)", condition = "dev_wants_specs" },

        -- CODEBASE PATH
        { speaker = "arch", expression = "neutral", text = "Greenfield. New repo, new everything. I've got opinions, but I'm open to yours.", condition = "dev_asked_codebase" },
        { speaker = "dev", expression = "neutral", text = "Greenfield. No legacy. No migration.", condition = "dev_asked_codebase" },
        { speaker = "dev", expression = "neutral", text = "(Greenfield. Either a gift or a trap. Usually both.)", condition = "dev_asked_codebase" },
        { speaker = "arch", expression = "neutral", text = "I was thinking we go with a monorepo. Shared types between web and mobile.", condition = "dev_asked_codebase" },
        { speaker = "dev", expression = "neutral", text = "That's... actually reasonable. We should talk stack before tomorrow.", condition = "dev_asked_codebase" },
        { speaker = "arch", expression = "neutral", text = "Buy you a coffee after this?", condition = "dev_asked_codebase" },

        -- PLAYED ALONG PATH
        { speaker = "po", expression = "excited", text = "Oh you're going to LOVE this. Okay, so the social feed is the centerpiece.", condition = "dev_played_along" },
        { speaker = "po", expression = "excited", text = "Real-time reactions, threaded replies, and a karma system. Think Reddit meets LinkedIn.", condition = "dev_played_along" },
        { speaker = "dev", expression = "neutral", text = "(Reddit meets LinkedIn. The two things nobody asked to combine.)", condition = "dev_played_along" },
        { speaker = "dev", expression = "smiling", text = "Ambitious. I like it.", condition = "dev_played_along" },
        { speaker = "qa", expression = "deadpan", text = "That's one word for it.", condition = "dev_played_along" },
        { speaker = "dev", expression = "neutral", text = "(Riley gets it.)", condition = "dev_played_along" },

        -- CONVERGENCE
        { speaker = "arch", expression = "neutral", text = "Quick question. Are we building native mobile or cross-platform?" },
        { speaker = "pm", expression = "cheerful", text = "Great question! Priya?" },
        { speaker = "po", expression = "excited", text = "Both! Wait. What's the difference?" },
        { speaker = "dev", expression = "frustrated", text = "(Deep breath.)" },
        { speaker = "arch", expression = "concerned", text = "About six months of difference, depending on the answer." },
        { speaker = "pm", expression = "stressed", text = "We'll figure that out this week. Let's not spiral." },
        { speaker = "dev", expression = "neutral", text = "(We will absolutely spiral.)" },
        { speaker = "pm", expression = "cheerful", text = "Alright team! Let's regroup tomorrow for the first standup. 9 AM sharp!" },
        { speaker = "dev", expression = "neutral", text = "Sure, Jordan." },

        -- POST-MEETING: Back at desk
        { bg = "office_day" },
        { speaker = "dev", expression = "neutral", text = "(Back at the desk. Time to see what we're really dealing with.)" },
        { speaker = "dev", expression = "neutral", text = "(Opens terminal. git log --oneline. Zero commits. Absolutely nothing.)" },
        { speaker = "dev", expression = "neutral", text = "(No package.json. No .gitignore. Not even a README. We are truly starting from zero.)" },
        { speaker = "dev", expression = "tired", text = "(Six weeks to build five products on no foundation with no specs. Normal Monday.)" },
        { speaker = "dev", expression = "neutral", text = "(Checks Slack. Jordan already made a #chimera-general channel. Four messages, all from Priya. All links to her deck.)" },
        { speaker = "dev", expression = "neutral", text = "(I scroll through the deck again. Slide 14 mentions a 'seamless real-time experience.' Real-time means websockets. Websockets mean a persistent connection layer. That's a week of work hiding inside one adjective.)" },
        { speaker = "dev", expression = "neutral", text = "(Slide 27 has a mockup. Whoever made it used placeholder text that says 'lorem ipsum dolor sit amet.' The irony of a knowledge-sharing platform with fake knowledge is not lost on me.)" },
        { speaker = "dev", expression = "thinking", text = "(I start a scratch file. Not code. Just notes. Things I noticed in the meeting that nobody said out loud. Casey checked his phone when Priya mentioned AI recommendations. Riley wrote something down every time someone said 'easy.' Alex sketched the whole time.)" },
        { speaker = "dev", expression = "neutral", text = "(People reveal their priorities through their fidgets. Casey is worried about scope. Riley is tracking red flags. Alex is already designing.)" },
        { speaker = "dev", expression = "neutral", text = "(Casey seems solid. Riley has good instincts. Alex is quiet but paying attention.)" },
        { speaker = "dev", expression = "neutral", text = "(Priya's going to be a problem. Not because she's wrong, exactly. She just thinks everything is easy.)" },
        { speaker = "dev", expression = "neutral", text = "(Jordan's trying. That counts for something.)" },
        { speaker = "dev", expression = "neutral", text = "(I open a blank file. Type 'chimera-notes.md.' First line: 'Questions nobody has answered yet.' The list is already long and I haven't even started typing.)" },
        { speaker = "dev", expression = "neutral", text = "(Alright. Step one: create the repo. Step two: pick a stack. Step three: survive.)" },
        { speaker = "dev", expression = "neutral", text = "(Tomorrow, 9 AM. We'll see how this goes.)" },

        { text = "", goto = "day2" }
    }
}
