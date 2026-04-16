return {
    title = "Day 7 -- Wednesday",
    subtitle = "Designs Meet Reality",
    narration = "The designs are ready. Now you have to build them. Every pixel in the mockup is a decision you have to honor or break.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- PRE-HANDOFF PREPARATION
        { speaker = "dev", expression = "neutral", text = "Wednesday morning. Alex's designs landed in my inbox at 11:47 PM last night. Forty-two screens." },
        { speaker = "dev", expression = "neutral", text = "(I've been scrolling through them for twenty minutes. They're beautiful. That's the problem.)" },
        { speaker = "dev", expression = "tired", text = "(Beautiful means complex. Complex means time. Time is the one thing we don't have.)" },
        { speaker = "dev", expression = "neutral", text = "Let me inventory the damage. Drag-and-drop reordering. Infinite scroll. Custom transitions between every screen. Auto-saving drafts." },
        { speaker = "dev", expression = "neutral", text = "(Each one of those is a week of work done right. We have until Friday for all of them.)" },
        { speaker = "dev", expression = "thinking", text = "I need to figure out what I'm going to say before Alex walks in here. Because 'no' isn't an answer. 'No, but' might be." },
        { speaker = "dev", expression = "neutral", text = "(The annotations are good, at least. Spacing tokens. Interaction states. Error flows. Alex did the work.)" },
        { speaker = "dev", expression = "tired", text = "(Doesn't change the math. Four complex features. Two days. One developer. Zero miracles in the backlog.)" },

        -- THE 1-ON-1 CONVERSATION
        { speaker = "ux", expression = "neutral", text = "Sam? Ready for the handoff?", bg = "meeting_room" },
        { speaker = "dev", expression = "neutral", text = "Yeah. Pull up a chair. Let's go through these one by one." },
        { speaker = "ux", expression = "neutral", text = "I annotated everything. Spacing tokens, component variants, interaction specs--" },
        { speaker = "dev", expression = "neutral", text = "I saw. Good work on the annotations. Seriously. Now let me walk you through what I see." },
        { speaker = "dev", expression = "neutral", text = "This drag-and-drop content organizer. You know how many API calls that is?" },
        { speaker = "ux", expression = "thinking", text = "I... didn't think about the API calls." },
        { speaker = "dev", expression = "neutral", text = "Every drag fires a reorder request. With 50 items, that's 50 calls. On mobile, that's a dead battery and a timeout." },
        { speaker = "ux", expression = "neutral", text = "What if we batch them? Save on drop, not on drag?" },
        { speaker = "dev", expression = "smiling", text = "See, this is why pairing is good. Yes. Batched saves. Solvable. Next." },
        { speaker = "dev", expression = "neutral", text = "The infinite scroll feed. You designed offset pagination. With real-time content, that means duplicates and skipped items when new content pushes the list." },
        { speaker = "ux", expression = "neutral", text = "What's the alternative?" },
        { speaker = "dev", expression = "neutral", text = "Cursor-based pagination. Stable cursor on creation timestamp plus a tiebreaker on document ID. It survives concurrent inserts." },
        { speaker = "ux", expression = "thinking", text = "Will the scroll behavior feel different to users?" },
        { speaker = "dev", expression = "neutral", text = "Not if I do it right. But 'doing it right' is the expensive part." },
        { speaker = "dev", expression = "neutral", text = "Now. The transitions. This crossfade-with-slide between every screen." },
        { speaker = "ux", expression = "neutral", text = "It's just a simple animation--" },
        { speaker = "dev", expression = "neutral", text = "It's a state machine. Interrupted transitions. Back navigation. Deep links. Browser history. Four edge cases before I write one line of animation code." },
        { speaker = "dev", expression = "neutral", text = "And the auto-saving drafts. That's not a feature, Alex. That's a sync engine. Conflict resolution. Offline queueing. Retry logic with exponential backoff." },
        { speaker = "ux", expression = "neutral", text = "I thought auto-save was standard." },
        { speaker = "dev", expression = "neutral", text = "Auto-save is standard. Auto-save that doesn't eat your data is custom." },
        { speaker = "dev", expression = "tired", text = "(I can see it in Alex's face. Every technical constraint I name is a small wound to the design.)" },
        { speaker = "dev", expression = "neutral", text = "(But here's the thing Alex doesn't see. I WANT to build these interactions. The drag-and-drop is elegant. The transitions are smooth. The auto-save is user-friendly.)" },
        { speaker = "dev", expression = "tired", text = "(I want to build software that feels good. I just know what it costs. And the cost is always higher than the design suggests.)" },
        { speaker = "ux", expression = "neutral", text = "Sam, can I ask -- when you look at the designs, is there anything you're excited to build?" },
        { speaker = "dev", expression = "neutral", text = "The component library. Clean tokens. Good naming. That saves me time. The card layout is buildable. The responsive grid is standard." },
        { speaker = "dev", expression = "neutral", text = "It's the interactive stuff that's expensive. Every animation is a promise to the user. The system has to keep that promise every time, or it's worse than no animation at all." },
        { speaker = "ux", expression = "thinking", text = "(He said my component library saves him time. From Sam, that's a love letter.)" },
        { speaker = "dev", expression = "neutral", text = "Alex, here's the deal. The designs are good. The visual language is solid. The component structure is clean." },
        { speaker = "dev", expression = "tired", text = "But some of these interactions are expensive to build AND expensive to run. And the demo is Friday. I have to make calls about what survives." },
        { speaker = "ux", expression = "neutral", text = "So what's the plan?" },

        -- THE CHOICE
        { speaker = "dev", expression = "neutral", text = "Three options.",
            choices = {
                { text = "Strip the fancy interactions. Functional > beautiful. I'll explain to Alex.", set = {simplified_ux = true}, rel = {arch = 1, ux = -1, po = -1} },
                { text = "I'll build it as designed. I need three more days, but it'll match.", set = {kept_complex_ux = true}, rel = {ux = 2, po = 1, pm = -1} },
                { text = "Pair with Alex. Build live, adjust the design as we hit walls.", set = {paired_with_dev = true}, rel = {ux = 2, pm = 1, arch = 1} },
            }
        },

        -- SIMPLIFIED PATH
        { speaker = "dev", expression = "neutral", text = "Alex, I'm going to strip the complex interactions. Standard transitions. Manual reorder instead of drag-and-drop. Explicit save instead of auto-save.", condition = "simplified_ux" },
        { speaker = "ux", expression = "frustrated", text = "Sam... that's most of the interaction design. The drag-and-drop IS the experience.", condition = "simplified_ux" },
        { speaker = "dev", expression = "neutral", text = "I know. And I'm sorry. But a design that can't ship is just a screenshot.", condition = "simplified_ux" },
        { speaker = "ux", expression = "frustrated", text = "Can you at least keep the hover states? The micro-interactions on the cards?", condition = "simplified_ux" },
        { speaker = "dev", expression = "neutral", text = "Hover states I can do. Those are CSS, not architecture. I'll get as close to the designs as I can on everything that doesn't require a new system.", condition = "simplified_ux" },
        { speaker = "dev", expression = "neutral", text = "(Alex looks like I just told them their dog is ugly. But ugly dogs that can run beat beautiful dogs that can't.)", condition = "simplified_ux" },

        -- COMPLEX PATH
        { speaker = "dev", expression = "neutral", text = "I'll build it. All of it. Drag-and-drop with batched saves. Cursor-based infinite scroll. Custom transitions. Auto-save with conflict resolution.", condition = "kept_complex_ux" },
        { speaker = "ux", expression = "excited", text = "Wait, really? All of it?", condition = "kept_complex_ux" },
        { speaker = "dev", expression = "tired", text = "All of it. But I need you to understand what that costs. I'm not sleeping between now and Friday.", condition = "kept_complex_ux" },
        { speaker = "ux", expression = "neutral", text = "Sam, if it's going to wreck you--", condition = "kept_complex_ux" },
        { speaker = "dev", expression = "frustrated", text = "It'll be held together with duct tape and prayers. If it breaks in the demo, I need you standing next to me explaining that the animation was worth it.", condition = "kept_complex_ux" },
        { speaker = "dev", expression = "tired", text = "(I just volunteered for a death march. But the designs deserve it. And so does Alex.)", condition = "kept_complex_ux" },

        -- PAIRING PATH
        { speaker = "dev", expression = "neutral", text = "Pull your chair over here. We're pairing on this.", condition = "paired_with_dev" },
        { speaker = "ux", expression = "excited", text = "Wait, really? You'd pair with me?", condition = "paired_with_dev" },
        { speaker = "dev", expression = "smiling", text = "Designer-developer pairing. It's like pair programming except one of us can't code.", condition = "paired_with_dev" },
        { speaker = "ux", expression = "neutral", text = "I'll take the insult with the opportunity.", condition = "paired_with_dev" },
        { speaker = "dev", expression = "neutral", text = "Here's how it works. I code. You watch. When something looks wrong, you say so immediately. When I hit a wall, you simplify on the spot. No round-trips.", condition = "paired_with_dev" },
        { speaker = "dev", expression = "neutral", text = "We'll get further by Friday than either of us would alone. I'm sure of it.", condition = "paired_with_dev" },

        -- POST-HANDOFF REFLECTION
        { speaker = "dev", expression = "tired", text = "End of the day. Alex is gone. I'm still at my desk, staring at the codebase.", bg = "office_day" },
        { speaker = "dev", expression = "neutral", text = "(The gap between design and dev. It's always there. Some sprints it's a crack you can step over.)" },
        { speaker = "dev", expression = "tired", text = "(This sprint it's a canyon. But at least today we stood on the same side and looked down together.)" },
        { speaker = "dev", expression = "neutral", text = "(Tomorrow I start building. Whatever survives the handoff, I'll make it work.)" },
        { speaker = "dev", expression = "neutral", text = "(That's the job. Making things work. Even when 'things' were designed by someone who has never seen a 500 error.)" },

        { text = "", goto = "day8" }
    }
}
