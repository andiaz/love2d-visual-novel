return {
    title = "Day 7 — Wednesday",
    subtitle = "Dev Handoff",
    narration = "The designs are done. Now Sam has to build them. This is where dreams meet API calls.",

    bg = "office_day",
    bgm = "theme",

    dialogue = {
        { speaker = "ux", expression = "neutral", text = "Wednesday. Dev handoff day. The moment designs meet reality." },
        { speaker = "dev", expression = "neutral", text = "Alex. We need to talk about these designs." },
        { speaker = "ux", expression = "neutral", text = "(Here we go.)" },

        -- Sam's concerns
        { speaker = "dev", expression = "neutral", text = "This drag-and-drop content organizer you designed. You know how many API calls that is?" },
        { speaker = "ux", expression = "neutral", text = "I... didn't think about the API calls." },
        { speaker = "dev", expression = "neutral", text = "Every drag fires a reorder request. With 50 items, that's 50 calls. On mobile, that's a dead battery and a timeout." },
        { speaker = "ux", expression = "neutral", text = "What if we batch them? Save on drop, not on drag?" },
        { speaker = "dev", expression = "neutral", text = "Better. But this infinite scroll feed — do you know how pagination works with real-time content?" },

        -- Casey chimes in
        { speaker = "arch", expression = "neutral", text = "I've been saying this. The feed architecture needs cursor-based pagination, not offset-based." },
        { speaker = "dev", expression = "neutral", text = "Casey, I know. I was getting there." },
        { speaker = "arch", expression = "neutral", text = "I drew a diagram—" },
        { speaker = "dev", expression = "neutral", text = "You always draw a diagram." },

        -- The negotiation
        { speaker = "dev", expression = "neutral", text = "Look, Alex. I respect the designs. But some of these interactions are expensive to build and expensive to run." },
        { speaker = "dev", expression = "neutral", text = "This smooth animation between screens? That's a custom transition system. The auto-saving draft? That's a whole sync engine." },

        { speaker = "ux", expression = "neutral", text = "The eternal UX-dev negotiation. What do I give up?",
            choices = {
                { text = "You're right. Let me simplify the interactions.", set = {simplified_ux = true}, rel = {dev = 2, arch = 1, po = -1} },
                { text = "These interactions are what makes the product good. We need them.", set = {kept_complex_ux = true}, rel = {dev = -2, po = 1, qa = -1} },
                { text = "Let's pair on this. You build, I'll adjust in real-time.", set = {paired_with_dev = true}, rel = {dev = 2, pm = 1, arch = 1} },
            }
        },

        -- Simplified path
        { speaker = "dev", expression = "neutral", text = "Thank you. I'll make it look as close to the designs as I can. But functional beats pretty.", condition = "simplified_ux" },
        { speaker = "ux", expression = "neutral", text = "(It hurts. But Sam's right. A design that can't be built is just art.)", condition = "simplified_ux" },

        -- Complex path
        { speaker = "dev", expression = "neutral", text = "Then I need more time. This isn't a one-week build, Alex.", condition = "kept_complex_ux" },
        { speaker = "pm", expression = "neutral", text = "We don't have more time. Demo is Friday.", condition = "kept_complex_ux" },
        { speaker = "dev", expression = "neutral", text = "Then it'll be held together with duct tape and prayers.", condition = "kept_complex_ux" },

        -- Pairing path
        { speaker = "dev", expression = "smiling", text = "Actually... yeah. That could work. Pull up a chair.", condition = "paired_with_dev" },
        { speaker = "ux", expression = "neutral", text = "Wait, really?", condition = "paired_with_dev" },
        { speaker = "dev", expression = "neutral", text = "Designer-developer pairing. It's like pair programming but one of us can't code.", condition = "paired_with_dev" },
        { speaker = "ux", expression = "neutral", text = "(I'll take it.)", condition = "paired_with_dev" },

        -- End of day
        { speaker = "ux", expression = "neutral", text = "The gap between design and development. It's not a gap — it's a canyon." },
        { speaker = "ux", expression = "neutral", text = "But at least now we're both looking at the same canyon." },

        { text = "", goto = "day8" }
    }
}
