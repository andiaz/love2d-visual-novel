return {
    title = "Day 7 -- Wednesday",
    subtitle = "The Handoff Mediation",
    narration = "Sam and Alex are arguing about API calls and animation specs. Your job: keep two smart, frustrated people in the same room.",

    bg = "desk_closeup",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "pm", expression = "neutral", text = "Wednesday. Dev handoff day. The day designs meet API limits." },
        { speaker = "dev", expression = "neutral", text = "Alex. We need to talk about these designs." },
        { speaker = "ux", expression = "neutral", text = "(Here we go.)" },
        { speaker = "pm", expression = "stressed", text = "(I'm going to hover. Not interfere. Hover. Be ready to defuse.)" },

        { speaker = "dev", expression = "neutral", text = "This drag-and-drop content organizer. You know how many API calls that is?" },
        { speaker = "ux", expression = "thinking", text = "I... didn't think about the API calls." },
        { speaker = "dev", expression = "neutral", text = "Every drag fires a reorder request. With 50 items that's 50 calls. On mobile that's a dead battery." },
        { speaker = "ux", expression = "neutral", text = "What if we batch them? Save on drop, not on drag?" },
        { speaker = "pm", expression = "cheerful", text = "(That's a good compromise. They got there themselves. Don't interfere.)" },

        { speaker = "dev", expression = "neutral", text = "This infinite scroll feed -- offset pagination doesn't work for real-time content." },
        { speaker = "arch", expression = "whiteboarding", text = "I've been saying this. Cursor-based pagination, not offset-based." },
        { speaker = "dev", expression = "neutral", text = "Casey, I know. I was getting there." },
        { speaker = "arch", expression = "whiteboarding", text = "I drew a diagram--" },
        { speaker = "dev", expression = "neutral", text = "You always draw a diagram." },
        { speaker = "pm", expression = "stressed", text = "(Tangent forming. Intervene? No. Let them work it.)" },

        { speaker = "dev", expression = "neutral", text = "Look Alex, I respect the designs. But some of these are expensive to build AND expensive to run." },

        -- Jordan's call
        { speaker = "pm", expression = "neutral", text = "Both of you are right. As PM, I have to break the tie.",
            choices = {
                { text = "Side with Sam. Simplify. We need to ship something stable.", set = {simplified_ux = true}, rel = {dev = 2, arch = 1, ux = -1} },
                { text = "Side with Alex. The interactions matter. Sam, find a way.", set = {kept_complex_ux = true}, rel = {ux = 2, po = 1, dev = -2} },
                { text = "Make them pair. Same desk. Build and adjust live.", set = {paired_with_dev = true}, rel = {dev = 2, ux = 2, arch = 1} },
            }
        },

        -- Simplified
        { speaker = "pm", expression = "neutral", text = "Sam, you have the call. Alex, document what we cut so we can revisit post-demo.", condition = "simplified_ux" },
        { speaker = "dev", expression = "smiling", text = "Thank you. I'll get as close to the design as I can. Functional first.", condition = "simplified_ux" },

        -- Kept complex
        { speaker = "pm", expression = "stressed", text = "Sam, find a way. The interactions are the product. I'll buy you whatever you need.", condition = "kept_complex_ux" },
        { speaker = "dev", expression = "frustrated", text = "Then I need three more days, Jordan. Demo is Friday.", condition = "kept_complex_ux" },
        { speaker = "pm", expression = "stressed", text = "(Risk register entry: 'PM made wrong call.' Pre-emptive.)", condition = "kept_complex_ux" },

        -- Pair
        { speaker = "pm", expression = "neutral", text = "I'm putting you both at the same desk for the next 48 hours. No tickets. Just build.", condition = "paired_with_dev" },
        { speaker = "dev", expression = "smiling", text = "Designer-developer pairing. It's like pair programming except one of us can't code.", condition = "paired_with_dev" },
        { speaker = "ux", expression = "excited", text = "I'll take it.", condition = "paired_with_dev" },
        { speaker = "pm", expression = "cheerful", text = "(Best decision I've made all sprint.)", condition = "paired_with_dev" },

        -- End of day
        { speaker = "pm", expression = "stressed", text = "(The gap between design and dev. It's not a gap. It's a canyon. My job is to build the bridge.)" },

        { text = "", goto = "day8" }
    }
}
