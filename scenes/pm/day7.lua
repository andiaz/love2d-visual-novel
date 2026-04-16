return {
    title = "Day 7 -- Wednesday",
    subtitle = "The Handoff Mediation",
    narration = "Sam and Alex are arguing about API calls and animation specs. Your job: keep two smart, frustrated people in the same room.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- PRE-HANDOFF PREPARATION
        { speaker = "pm", expression = "neutral", text = "Wednesday morning. Dev handoff day. The day I earn my salary or lose my team's trust." },
        { speaker = "pm", expression = "stressed", text = "(Sam and Alex are about to sit in a room together. Sam has API math. Alex has pixel-perfect dreams. I have a calendar that says the demo is Friday.)" },
        { speaker = "pm", expression = "neutral", text = "I spent an hour reviewing Alex's designs and Sam's last architecture notes. The gap is significant." },
        { speaker = "pm", expression = "stressed", text = "(Alex designed a drag-and-drop system. Sam is going to say 'API calls.' Alex designed infinite scroll. Sam is going to say 'pagination model.' Alex designed smooth transitions. Sam is going to say 'state machine.')" },
        { speaker = "pm", expression = "neutral", text = "(My job is not to solve the technical debate. My job is to keep the debate productive.)" },
        { speaker = "pm", expression = "stressed", text = "I've seen this meeting go wrong before. The designer feels attacked. The developer feels blamed. Both leave angry and nothing ships." },
        { speaker = "pm", expression = "neutral", text = "(Not today. Today I'm prepared. I have the timeline. I have the priority stack. I have snacks.)" },
        { speaker = "pm", expression = "neutral", text = "Time to go mediate." },

        -- THE 1-ON-1 CONVERSATION
        { speaker = "pm", expression = "neutral", text = "Okay. Alex, Sam. I want this handoff to be a conversation, not a trial. Sam, walk us through what you see.", bg = "meeting_room" },
        { speaker = "dev", expression = "neutral", text = "This drag-and-drop content organizer. Every drag fires a reorder request. 50 items, 50 API calls. On mobile, that's a dead battery." },
        { speaker = "ux", expression = "thinking", text = "I... didn't think about the API calls." },
        { speaker = "pm", expression = "neutral", text = "(Good. Alex admitted it. That's maturity. Don't reward it out loud, just note it.)" },
        { speaker = "ux", expression = "neutral", text = "What if we batch them? Save on drop, not on drag?" },
        { speaker = "dev", expression = "neutral", text = "Batched saves work. That's solvable. Next problem." },
        { speaker = "pm", expression = "cheerful", text = "(They solved one themselves. Don't interfere. Just facilitate.)" },
        { speaker = "dev", expression = "neutral", text = "The infinite scroll feed. Offset pagination doesn't work with real-time content. Duplicates, skipped items, ghost entries." },
        { speaker = "ux", expression = "neutral", text = "What does work?" },
        { speaker = "dev", expression = "neutral", text = "Cursor-based pagination. Different data model. The scroll behavior looks the same to users, but the backend is completely different." },
        { speaker = "pm", expression = "neutral", text = "Sam, time estimate on cursor-based versus offset?" },
        { speaker = "dev", expression = "neutral", text = "Cursor adds a day. But offset will break in the demo if anyone posts content while someone else is scrolling." },
        { speaker = "pm", expression = "stressed", text = "(A day. We don't have a day. But a broken demo is worse than a late demo. File that.)" },
        { speaker = "dev", expression = "neutral", text = "Then there's the transitions. Custom crossfade-with-slide between screens. That's a state machine. Interrupted transitions, back navigation, deep links." },
        { speaker = "ux", expression = "neutral", text = "It's just an animation--" },
        { speaker = "dev", expression = "neutral", text = "It's an animation that has to handle four edge cases before I write one line of code." },
        { speaker = "pm", expression = "neutral", text = "(They're starting to heat up. The tone shifted. Sam's getting clipped. Alex is getting defensive.)" },
        { speaker = "pm", expression = "neutral", text = "Hold on. Let me reframe. Sam, you're not saying the designs are bad. You're saying the build cost is high. Right?" },
        { speaker = "dev", expression = "neutral", text = "Right. The designs are good. Some of the interactions are expensive. Both to build and to run." },
        { speaker = "pm", expression = "neutral", text = "Alex, you're not saying Sam should work harder. You're saying the interactions are what make the product feel right. Right?" },
        { speaker = "ux", expression = "neutral", text = "Right. Without them, it's just another dashboard." },
        { speaker = "pm", expression = "neutral", text = "(Good. Both feel heard. Now I have to make a call.)" },
        { speaker = "pm", expression = "stressed", text = "(This is the part of the job nobody teaches you. The PM makes the call. If it's right, the team takes credit. If it's wrong, the PM takes the blame.)" },
        { speaker = "pm", expression = "neutral", text = "Let me ask both of you something. If we could only demo two screens on Friday, which two would tell the product story best?" },
        { speaker = "ux", expression = "neutral", text = "The feed and the content creation flow. Those are the core loop." },
        { speaker = "dev", expression = "neutral", text = "Agreed on those two. But the feed needs cursor-based pagination or it'll break live." },
        { speaker = "pm", expression = "neutral", text = "(They agree on something. That's progress. Build on that.)" },
        { speaker = "pm", expression = "neutral", text = "Okay. Two screens. Full experience. The question is how deep we go on each one." },
        { speaker = "dev", expression = "tired", text = "Jordan, someone has to decide what survives the demo. That's your call." },

        -- THE CHOICE
        { speaker = "pm", expression = "neutral", text = "Both of you are right. As PM, I have to break the tie.",
            choices = {
                { text = "Side with Sam. Simplify. We need to ship something stable.", set = {simplified_ux = true}, rel = {dev = 2, arch = 1, ux = -1} },
                { text = "Side with Alex. The interactions matter. Sam, find a way.", set = {kept_complex_ux = true}, rel = {ux = 2, po = 1, dev = -2} },
                { text = "Make them pair. Same desk. Build and adjust live.", set = {paired_with_dev = true}, rel = {dev = 2, ux = 2, arch = 1} },
            }
        },

        -- SIMPLIFIED PATH
        { speaker = "pm", expression = "neutral", text = "Sam, you have the call on what to cut. Alex, I need you to document everything we drop so we can revisit post-demo.", condition = "simplified_ux" },
        { speaker = "ux", expression = "frustrated", text = "Jordan, the drag-and-drop IS the experience--", condition = "simplified_ux" },
        { speaker = "pm", expression = "neutral", text = "I know. And it'll come back in v2. But a broken demo helps nobody. We ship stable first.", condition = "simplified_ux" },
        { speaker = "dev", expression = "smiling", text = "Thank you. I'll get as close to the design as I can. Functional first, polish second.", condition = "simplified_ux" },
        { speaker = "pm", expression = "stressed", text = "(Alex is hurt. I can see it. But my job isn't to make everyone happy. My job is to ship.)", condition = "simplified_ux" },
        { speaker = "pm", expression = "neutral", text = "Alex, I mean it about v2. This isn't a permanent cut. It's a timing call.", condition = "simplified_ux" },

        -- COMPLEX PATH
        { speaker = "pm", expression = "neutral", text = "Sam, I'm siding with Alex on this one. The interactions are the product. Find a way.", condition = "kept_complex_ux" },
        { speaker = "dev", expression = "frustrated", text = "Jordan, the demo is Friday. That's two days for four complex features.", condition = "kept_complex_ux" },
        { speaker = "pm", expression = "stressed", text = "What do you need? I'll clear your calendar. No standups. No check-ins. Just build time.", condition = "kept_complex_ux" },
        { speaker = "dev", expression = "frustrated", text = "I need three more days. Not fewer meetings. More time.", condition = "kept_complex_ux" },
        { speaker = "pm", expression = "stressed", text = "(Risk register entry: 'PM overrode technical judgment.' Pre-emptive. Write it now, regret it Friday.)", condition = "kept_complex_ux" },
        { speaker = "ux", expression = "neutral", text = "Sam, I'll be available around the clock if you need design decisions fast.", condition = "kept_complex_ux" },

        -- PAIRING PATH
        { speaker = "pm", expression = "neutral", text = "Neither of you wins alone. I'm putting you at the same desk for the next 48 hours.", condition = "paired_with_dev" },
        { speaker = "dev", expression = "neutral", text = "Designer-developer pairing? That's not a real thing.", condition = "paired_with_dev" },
        { speaker = "pm", expression = "neutral", text = "It is now. No tickets. No handoffs. No Figma comments. Same screen. Build and adjust live.", condition = "paired_with_dev" },
        { speaker = "ux", expression = "excited", text = "Jordan, that's actually brilliant.", condition = "paired_with_dev" },
        { speaker = "dev", expression = "smiling", text = "...fine. It's like pair programming except one of us can't code. But I've seen worse ideas ship.", condition = "paired_with_dev" },
        { speaker = "pm", expression = "cheerful", text = "(Best decision I've made all sprint. If it works, I'm putting it in every sprint plan going forward.)", condition = "paired_with_dev" },

        -- POST-HANDOFF REFLECTION
        { speaker = "pm", expression = "stressed", text = "Back at my desk. The meeting room is empty. Sam and Alex are gone.", bg = "office_day" },
        { speaker = "pm", expression = "neutral", text = "(The handoff is the moment where a PM either builds trust or breaks it. There's no middle ground.)" },
        { speaker = "pm", expression = "stressed", text = "(I watched two smart people argue about the same product from completely different angles. My job was the translation layer.)" },
        { speaker = "pm", expression = "neutral", text = "(Did I get it right? I won't know until Friday. That's the PM life. Decide now, find out later.)" },
        { speaker = "pm", expression = "neutral", text = "(The gap between design and dev isn't a gap. It's a canyon. My job is to build the bridge. Today I at least laid the first plank.)" },

        { text = "", goto = "day8" }
    }
}
