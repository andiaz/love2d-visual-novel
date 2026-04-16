return {
    title = "Day 7 -- Wednesday",
    subtitle = "The Trade-Offs",
    narration = "Sam and Alex are arguing about your features. Sam has API math. Alex has design specs. You have to pick which one matters.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- PRE-HANDOFF PREPARATION
        { speaker = "po", expression = "neutral", text = "Wednesday. Dev handoff day. The day my features stop being ideas and start being engineering estimates." },
        { speaker = "po", expression = "neutral", text = "(I've been thinking about this all morning. My deck described a vision. Alex turned it into designs. Now Sam turns it into code.)" },
        { speaker = "po", expression = "thinking", text = "(Every translation loses something. Vision to design lost nuance. Design to code will lose interactions. By the time users see it, how much of my original idea survives?)" },
        { speaker = "po", expression = "neutral", text = "I reviewed Alex's designs last night. They're beautiful. The drag-and-drop. The smooth transitions. The auto-saving." },
        { speaker = "po", expression = "excited", text = "(That's my vision on screen. Alex made it real. Now Sam has to make it run.)" },
        { speaker = "po", expression = "neutral", text = "(The PO's job during dev handoff is to shut up unless asked. I am historically bad at this.)" },
        { speaker = "po", expression = "thinking", text = "(But these are MY features getting negotiated. My roadmap. My user stories. Every cut is a piece of Chimera that dies before it's born.)" },
        { speaker = "po", expression = "neutral", text = "Deep breath. Walk into the room. Listen. Only speak when it matters." },

        -- THE 1-ON-1 CONVERSATION
        { speaker = "dev", expression = "neutral", text = "Alex, pull up a chair. Let's go through these designs.", bg = "meeting_room" },
        { speaker = "po", expression = "neutral", text = "(I'm sitting in the corner. Observing. Not intervening. Observing.)" },
        { speaker = "dev", expression = "neutral", text = "This drag-and-drop content organizer. Do you know how many API calls that is?" },
        { speaker = "ux", expression = "thinking", text = "I... didn't think about the API calls." },
        { speaker = "dev", expression = "neutral", text = "Every drag fires a reorder request. With 50 items, that's 50 calls. On mobile, dead battery and timeout." },
        { speaker = "po", expression = "defensive", text = "(But the drag-and-drop IS the whole interaction. It's what makes Chimera feel alive. Don't say it. Listen.)" },
        { speaker = "ux", expression = "neutral", text = "What if we batch them? Save on drop, not on drag?" },
        { speaker = "dev", expression = "neutral", text = "Batched saves. Solvable. Next." },
        { speaker = "po", expression = "neutral", text = "(Good. One feature survived. Keep count.)" },
        { speaker = "dev", expression = "neutral", text = "The infinite scroll feed. Offset pagination won't work with real-time content. Duplicates, skipped items." },
        { speaker = "po", expression = "thinking", text = "(The feed is central to the product. Slide 12 of my deck. 'Real-time knowledge flow.' If the feed breaks, the vision breaks.)" },
        { speaker = "dev", expression = "neutral", text = "Cursor-based pagination solves it but adds a full day of work." },
        { speaker = "po", expression = "neutral", text = "A day? Sam, the demo is Friday." },
        { speaker = "dev", expression = "neutral", text = "I know. But offset pagination will break in the demo if two people use the app at the same time. Pick your risk." },
        { speaker = "po", expression = "thinking", text = "(He's right. A broken demo is worse than a delayed demo. But we don't have time for 'right.' We have time for 'good enough.')" },
        { speaker = "dev", expression = "neutral", text = "Then there's the custom transitions. State machine. Edge cases. And the auto-save -- that's a full sync engine with conflict resolution." },
        { speaker = "po", expression = "neutral", text = "Sam, if you had to rank these by impact, what survives?" },
        { speaker = "dev", expression = "tired", text = "Batched drag-and-drop. Cursor-based feed. Those are functional. The transitions and auto-save are polish." },
        { speaker = "po", expression = "defensive", text = "(POLISH? The transitions are what make Chimera feel premium. Auto-save is basic user respect. That's not polish. That's the product.)" },
        { speaker = "po", expression = "neutral", text = "(Don't say it like that. Think. Breathe. Negotiate.)" },
        { speaker = "dev", expression = "tired", text = "Priya, I can see you thinking from across the room. Just say it." },
        { speaker = "po", expression = "neutral", text = "Every feature you cut is a piece of the vision that dies before users ever see it. I understand the constraints. I'm asking you to understand the cost." },
        { speaker = "dev", expression = "neutral", text = "I do understand the cost. That's why I'm having this conversation instead of just cutting things silently." },
        { speaker = "po", expression = "neutral", text = "(He's being fair. He's being honest. The least I can do is be honest back.)" },
        { speaker = "po", expression = "neutral", text = "Sam, what if we think about this differently? Instead of cutting features, what if we prioritize which screens get the full experience?" },
        { speaker = "dev", expression = "neutral", text = "Go on." },
        { speaker = "po", expression = "neutral", text = "The feed and the content creation flow. Those are the core product loop. Full interactions on those two. Everything else gets the simplified treatment." },
        { speaker = "dev", expression = "neutral", text = "That's actually... workable. Two screens with polish instead of twelve screens with nothing." },
        { speaker = "ux", expression = "neutral", text = "Priya, that's a good frame. Focus the magic." },
        { speaker = "po", expression = "thinking", text = "(Focus the magic. Alex just described my entire job in three words.)" },
        { speaker = "dev", expression = "tired", text = "Even with two screens, I still need a decision on the interaction approach. The build cost depends on which way we go." },

        -- THE CHOICE
        { speaker = "po", expression = "neutral", text = "(Trade-offs. The actual job.)",
            choices = {
                { text = "Side with Sam. Cut the fancy interactions. Functional > beautiful.", set = {simplified_ux = true}, rel = {dev = 2, arch = 1, ux = -1} },
                { text = "Side with Alex. The interactions are the product. Sam, find a way.", set = {kept_complex_ux = true}, rel = {ux = 2, dev = -2, pm = -1} },
                { text = "Make them pair. Build live. Adjust as you hit walls.", set = {paired_with_dev = true}, rel = {dev = 2, ux = 2, arch = 1, pm = 1} },
            }
        },

        -- SIMPLIFIED PATH
        { speaker = "po", expression = "neutral", text = "Sam, you have the call. Cut the transitions. Cut the auto-save. Keep the drag-and-drop and the feed. Those are the product.", condition = "simplified_ux" },
        { speaker = "ux", expression = "frustrated", text = "Priya... the transitions are what make it feel cohesive. Without them it's just pages.", condition = "simplified_ux" },
        { speaker = "po", expression = "neutral", text = "I know, Alex. I designed the vision those transitions serve. But a vision that doesn't ship is just a deck.", condition = "simplified_ux" },
        { speaker = "dev", expression = "neutral", text = "I'll make the core interactions solid. The polish comes back in v2.", condition = "simplified_ux" },
        { speaker = "po", expression = "thinking", text = "(V2. The promised land where every cut feature lives. Some of them actually make it back. Most don't.)", condition = "simplified_ux" },
        { speaker = "po", expression = "neutral", text = "Document what we cut. Every feature, every interaction. I want a backlog item for each one. They're not dead. They're deferred.", condition = "simplified_ux" },

        -- COMPLEX PATH
        { speaker = "po", expression = "excited", text = "Sam, the interactions ARE the product. The drag-and-drop. The transitions. The auto-save. That's what makes Chimera feel right.", condition = "kept_complex_ux" },
        { speaker = "dev", expression = "frustrated", text = "Priya, I need three more days. Demo is Friday. The math doesn't work.", condition = "kept_complex_ux" },
        { speaker = "po", expression = "defensive", text = "Then we show a partial demo with full interactions on two screens instead of a complete demo with no soul.", condition = "kept_complex_ux" },
        { speaker = "dev", expression = "frustrated", text = "A partial demo? The stakeholders want to see the full flow.", condition = "kept_complex_ux" },
        { speaker = "po", expression = "neutral", text = "I'll handle the stakeholders. I'll frame it as a deep dive into the core experience. You build the best two screens we've ever shipped.", condition = "kept_complex_ux" },
        { speaker = "po", expression = "thinking", text = "(I just made everyone's life harder. But I've seen too many products launch as functional skeletons and never get the soul back.)", condition = "kept_complex_ux" },

        -- PAIRING PATH
        { speaker = "po", expression = "neutral", text = "Pair on it. Same desk. Build live. When you hit a wall, make the trade-off together in real time.", condition = "paired_with_dev" },
        { speaker = "dev", expression = "neutral", text = "Designer-developer pairing. That's not standard.", condition = "paired_with_dev" },
        { speaker = "po", expression = "neutral", text = "Neither is building a product this ambitious in two weeks. I'll back whatever you decide together.", condition = "paired_with_dev" },
        { speaker = "ux", expression = "excited", text = "Priya, that's perfect. Real-time negotiation instead of handoff theater.", condition = "paired_with_dev" },
        { speaker = "dev", expression = "smiling", text = "Fine. It's like pair programming except one of us can't code. But I've heard worse ideas.", condition = "paired_with_dev" },
        { speaker = "po", expression = "neutral", text = "(If this works, the product gets both function and feeling. If it fails, at least they'll understand each other's constraints.)", condition = "paired_with_dev" },

        -- POST-HANDOFF REFLECTION
        { speaker = "po", expression = "neutral", text = "Back at my desk. The meeting room is empty. I can still smell the whiteboard markers.", bg = "office_day" },
        { speaker = "po", expression = "thinking", text = "(Every product is a negotiation between what you dream and what you ship. The PO lives in that gap.)" },
        { speaker = "po", expression = "neutral", text = "(I watched my features get weighed on a scale of API calls and developer hours. It felt personal. It shouldn't have, but it did.)" },
        { speaker = "po", expression = "thinking", text = "(The hardest part of being a PO isn't having ideas. It's watching other people decide which ideas survive.)" },
        { speaker = "po", expression = "neutral", text = "(Tomorrow I'll know if I made the right call. Or at least if I made a call I can defend.)" },

        { text = "", goto = "day8" }
    }
}
