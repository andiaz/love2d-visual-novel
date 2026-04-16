return {
    title = "Day 7 -- Wednesday",
    subtitle = "Dev Handoff",
    narration = "The designs are done. Now Sam has to build them. This is where dreams meet API calls.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- PRE-HANDOFF PREPARATION
        { speaker = "ux", expression = "neutral", text = "Wednesday morning. I'm staring at my Figma file like it's a love letter I'm about to hand to someone who only reads spreadsheets." },
        { speaker = "ux", expression = "thinking", text = "(Every pixel in this file represents a decision. The spacing. The transitions. The micro-interactions.)" },
        { speaker = "ux", expression = "neutral", text = "(Sam is going to look at these and see work. Not design. Work.)" },
        { speaker = "ux", expression = "thinking", text = "I should prepare. Annotation pass. Dev notes. Interaction specs. The more I hand over, the less gets lost in translation." },
        { speaker = "ux", expression = "neutral", text = "(Forty-two screens. Twelve interaction patterns. Three animation specs. One prayer.)" },
        { speaker = "ux", expression = "neutral", text = "I built a component library with spacing tokens and color variables. Sam should appreciate that, at least." },
        { speaker = "ux", expression = "thinking", text = "(Who am I kidding. Sam is going to open this file, scroll past all of it, and ask about the API calls.)" },
        { speaker = "ux", expression = "neutral", text = "Deep breath. Time to walk into the meeting room." },

        -- THE 1-ON-1 CONVERSATION
        { speaker = "dev", expression = "neutral", text = "Alex. Pull up a chair. Let's go through these.", bg = "meeting_room" },
        { speaker = "ux", expression = "neutral", text = "I annotated everything. Spacing tokens, interaction states, error handling flows--" },
        { speaker = "dev", expression = "neutral", text = "I saw. Good annotations. Now let me tell you what I see when I look at these." },
        { speaker = "ux", expression = "thinking", text = "(Here we go.)" },
        { speaker = "dev", expression = "neutral", text = "This drag-and-drop content organizer. Do you know how many API calls that is?" },
        { speaker = "ux", expression = "neutral", text = "I... didn't think about the API calls." },
        { speaker = "dev", expression = "neutral", text = "Every drag fires a reorder request. With 50 items, that's 50 calls. On mobile, that's a dead battery and a timeout." },
        { speaker = "ux", expression = "thinking", text = "What if we batch them? Save on drop, not on drag?" },
        { speaker = "dev", expression = "neutral", text = "Better. That's actually solvable. But we're not done." },
        { speaker = "dev", expression = "neutral", text = "This infinite scroll feed. You designed it with offset pagination. You know what happens with real-time content and offset pagination?" },
        { speaker = "ux", expression = "neutral", text = "...duplicates?" },
        { speaker = "dev", expression = "neutral", text = "Duplicates. Skipped items. Ghost entries. It's a mess. We need cursor-based pagination, which means the scroll behavior you mocked up won't work the way you drew it." },
        { speaker = "ux", expression = "neutral", text = "Can we keep the visual behavior and change the underlying model?" },
        { speaker = "dev", expression = "neutral", text = "Maybe. But here's the bigger problem." },
        { speaker = "dev", expression = "tired", text = "This smooth animation between screens. That's not a CSS transition, Alex. That's a custom transition system. I'd have to build a state machine for it." },
        { speaker = "ux", expression = "neutral", text = "It's just a crossfade with a slide--" },
        { speaker = "dev", expression = "neutral", text = "It's a crossfade with a slide that has to handle interrupted transitions, back navigation, deep links, and browser history. That's four edge cases before I write a single line of animation code." },
        { speaker = "ux", expression = "thinking", text = "(He's not wrong. I designed the happy path. He has to build every path.)" },
        { speaker = "dev", expression = "neutral", text = "And the auto-saving draft system. That's a whole sync engine. Conflict resolution. Offline support. Retry logic." },
        { speaker = "ux", expression = "neutral", text = "I thought auto-save was standard now." },
        { speaker = "dev", expression = "neutral", text = "Auto-save is standard. Auto-save that works is custom. There's a difference." },
        { speaker = "ux", expression = "neutral", text = "(He's dismantling my designs one feature at a time. Not because he's cruel. Because he's the one who has to make them real.)" },
        { speaker = "ux", expression = "thinking", text = "Sam, can I ask you something? When you look at these designs, do you see anything worth fighting for?" },
        { speaker = "dev", expression = "neutral", text = "The card layout. The typography system. The responsive grid. Those are clean and buildable. The component library you made actually helps." },
        { speaker = "ux", expression = "neutral", text = "(He said 'helps.' From Sam, that's a standing ovation.)" },
        { speaker = "dev", expression = "neutral", text = "It's the interactive stuff that kills us. Every animation is a promise to the user that the system has to keep every single time." },
        { speaker = "ux", expression = "thinking", text = "(Animations as promises. I never thought of it that way. But he's right. A janky animation is worse than no animation.)" },
        { speaker = "dev", expression = "neutral", text = "Look, Alex. I respect the designs. Genuinely. The visual language is tight. The component structure is clean." },
        { speaker = "dev", expression = "tired", text = "But some of these interactions are expensive to build and expensive to run. And we have a demo on Friday." },
        { speaker = "ux", expression = "neutral", text = "So what survives?" },
        { speaker = "dev", expression = "neutral", text = "That's what I need you to tell me. Because if I make that call alone, you're going to hate the result." },
        { speaker = "ux", expression = "thinking", text = "(He's right. If Sam cuts without me, I'll get a functional skeleton wearing my design's skin. If I cut with him, at least I choose what matters.)" },

        -- THE CHOICE
        { speaker = "ux", expression = "neutral", text = "The eternal UX-dev negotiation. What do I give up?",
            choices = {
                { text = "You're right. Let me simplify the interactions.", set = {simplified_ux = true}, rel = {dev = 2, arch = 1, po = -1} },
                { text = "These interactions are what makes the product good. We need them.", set = {kept_complex_ux = true}, rel = {dev = -2, po = 1, qa = -1} },
                { text = "Let's pair on this. You build, I'll adjust in real-time.", set = {paired_with_dev = true}, rel = {dev = 2, pm = 1, arch = 1} },
            }
        },

        -- SIMPLIFIED PATH
        { speaker = "ux", expression = "neutral", text = "Okay. Kill the custom transitions. Replace with standard fades. Kill the drag-and-drop and give me a manual reorder with up/down buttons.", condition = "simplified_ux" },
        { speaker = "dev", expression = "smiling", text = "That saves me two days of work. Seriously. Thank you.", condition = "simplified_ux" },
        { speaker = "ux", expression = "neutral", text = "The auto-save can be manual save with a reminder. Less elegant, but it works.", condition = "simplified_ux" },
        { speaker = "dev", expression = "neutral", text = "I'll make it look as close to the designs as I can. Functional beats pretty, but I'll get you close.", condition = "simplified_ux" },
        { speaker = "ux", expression = "thinking", text = "(It hurts. Every simplification is a small death. But Sam's right. A design that can't be built is just art.)", condition = "simplified_ux" },

        -- COMPLEX PATH
        { speaker = "dev", expression = "frustrated", text = "Alex, I hear you. But these interactions need time. This isn't a one-week build.", condition = "kept_complex_ux" },
        { speaker = "ux", expression = "neutral", text = "The drag-and-drop IS the product experience. Without it, we're just another list view with a save button.", condition = "kept_complex_ux" },
        { speaker = "dev", expression = "frustrated", text = "Then I need more time. And the demo is Friday. You understand what that means.", condition = "kept_complex_ux" },
        { speaker = "ux", expression = "neutral", text = "It means you're going to be up late. And I'm going to owe you.", condition = "kept_complex_ux" },
        { speaker = "dev", expression = "tired", text = "It means it'll be held together with duct tape and prayers. If it breaks in the demo, that's on both of us.", condition = "kept_complex_ux" },
        { speaker = "ux", expression = "thinking", text = "(I just made Sam's week harder. But the interactions are what separate good software from forgettable software.)", condition = "kept_complex_ux" },

        -- PAIRING PATH
        { speaker = "dev", expression = "neutral", text = "Wait. Actually... yeah. That could work. You sit next to me, I code, you tell me when something looks wrong.", condition = "paired_with_dev" },
        { speaker = "ux", expression = "excited", text = "Wait, really? You'd pair with a designer?", condition = "paired_with_dev" },
        { speaker = "dev", expression = "smiling", text = "Designer-developer pairing. It's like pair programming but one of us can't code.", condition = "paired_with_dev" },
        { speaker = "ux", expression = "neutral", text = "(I'll take the insult with the opportunity.)", condition = "paired_with_dev" },
        { speaker = "dev", expression = "neutral", text = "Here's what changes. When I hit a wall, you simplify on the spot. When I find a shortcut, you validate it visually. No round-trips through Figma.", condition = "paired_with_dev" },
        { speaker = "ux", expression = "neutral", text = "Real-time design decisions. No handoff delay. No lost-in-translation.", condition = "paired_with_dev" },

        -- POST-HANDOFF REFLECTION
        { speaker = "ux", expression = "thinking", text = "Back at my desk. Staring at the Figma file again. It looks different now.", bg = "office_day" },
        { speaker = "ux", expression = "neutral", text = "(Every interaction I designed was a conversation I hadn't had yet. With the person who has to build it.)" },
        { speaker = "ux", expression = "thinking", text = "(The gap between design and development. It's not a gap. It's a canyon.)" },
        { speaker = "ux", expression = "neutral", text = "(But at least now we're both looking at the same canyon. And one of us has a bridge.)" },
        { speaker = "ux", expression = "neutral", text = "Tomorrow I'll know if the bridge holds." },

        { text = "", goto = "day8" }
    }
}
