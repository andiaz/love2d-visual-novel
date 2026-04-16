return {
    title = "Day 5 -- Monday",
    subtitle = "The Scope Creep",
    narration = "New week. New sprint. And Priya had a thought over the weekend...",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- PRE-STANDUP
        { speaker = "ux", expression = "neutral", text = "Monday morning. I open Slack before coffee. A habit I should probably break but never will." },
        { speaker = "ux", expression = "thinking", text = "There's a message from Priya in #chimera. Timestamped 11:47 PM. Sunday night." },
        { speaker = "ux", expression = "neutral", text = "The preview reads: 'Had a thought! What if we added--' and then the preview cuts off." },
        { speaker = "ux", expression = "thinking", text = "(11:47 PM on a Sunday. Whatever comes after 'what if we added' is going to cost me a weekend.)" },
        { speaker = "ux", expression = "neutral", text = "I don't tap the message. Not yet. I pour the coffee first. Some things you don't face uncaffeinated." },
        { speaker = "ux", expression = "thinking", text = "(The last time Priya had a thought at 11 PM, we added a social feed to a knowledge base. What's next? A dating feature?)" },
        { speaker = "ux", expression = "neutral", text = "I finally open the message. Real-time collaboration. Like Google Docs but inside Chimera." },
        { speaker = "ux", expression = "thinking", text = "(My stomach drops. Not because it's a bad idea. Because it's a HUGE idea. And Priya thinks it's a small one.)" },
        { speaker = "ux", expression = "neutral", text = "I start thinking about what 'real-time collaboration' even means for the design. Cursors? Presence indicators? Conflict resolution UI?" },
        { speaker = "ux", expression = "thinking", text = "(That's not a feature. That's an entire design system. With edge cases that have edge cases.)" },

        { text = "..." },

        -- THE STANDUP
        { bg = "meeting_room" },

        { speaker = "pm", expression = "cheerful", text = "Standup time! Short and sweet, I swear." },
        { speaker = "ux", expression = "thinking", text = "(Last time Jordan said that, it ran 38 minutes. I'm setting a mental timer again.)" },
        { speaker = "dev", expression = "neutral", text = "(It won't be 15 minutes.)" },
        { speaker = "pm", expression = "cheerful", text = "Sprint two, everyone. Clean slate. Let's hear updates and then Priya has something she wants to share." },
        { speaker = "ux", expression = "thinking", text = "(Oh, Jordan already knows. This was coordinated. The Slack message wasn't a thought. It was a press release.)" },

        { speaker = "po", expression = "excited", text = "I've been sitting on this since Saturday and I can't hold it in anymore..." },
        { speaker = "dev", expression = "neutral", text = "(There it is.)" },
        { speaker = "po", expression = "excited", text = "What if Chimera also had a real-time collaboration feature? Like Google Docs but within the knowledge base!" },
        { speaker = "ux", expression = "thinking", text = "(And there it is. The bomb drops. The room shifts.)" },
        { speaker = "arch", expression = "concerned", text = "Real-time collaboration? That's an entire product by itself. You're talking about operational transforms, conflict resolution--" },
        { speaker = "po", expression = "defensive", text = "Can we just add it in? How hard could it really be?" },
        { speaker = "dev", expression = "frustrated", text = "'How hard could it be.' The question that answers itself." },

        { speaker = "ux", expression = "thinking", text = "(Okay. Let me think about this from a design perspective. What does 'real-time collaboration' actually mean for the user?)" },
        { speaker = "ux", expression = "neutral", text = "Priya, can I ask a clarifying question? When you say real-time collaboration, what does the user see?" },
        { speaker = "po", expression = "excited", text = "You know! Cursors! People typing! Like Google Docs!" },
        { speaker = "ux", expression = "neutral", text = "So presence indicators. Live cursors. Simultaneous editing. Conflict notifications. An awareness sidebar. That's five major UI patterns." },
        { speaker = "po", expression = "excited", text = "Is that a lot?" },
        { speaker = "ux", expression = "thinking", text = "(She's asking a designer if five new UI patterns in a sprint is 'a lot.' Deep breath.)" },
        { speaker = "dev", expression = "frustrated", text = "Priya, I'm going to be specific. Real-time collab needs a CRDT library, a sync server, presence, conflict UI, and a backend that supports any of that. We have none of those things." },
        { speaker = "po", expression = "defensive", text = "Surely there's a library?" },
        { speaker = "dev", expression = "frustrated", text = "There are libraries for the CRDT part. Everything else is custom. For us. To build. In four weeks." },
        { speaker = "arch", expression = "concerned", text = "The architecture would need a message broker, a sync service, and a complete rethink of the data model. This is not incremental work." },
        { speaker = "qa", expression = "deadpan", text = "My test matrix just doubled. Concurrent editing. Conflict resolution. Network partitions. Race conditions." },

        -- Jordan mediates
        { speaker = "pm", expression = "stressed", text = "Okay, let's not panic. Priya, is this a must-have for the demo?" },
        { speaker = "po", expression = "neutral", text = "Leadership mentioned 'collaboration' last week. I just want to make sure we're covered." },
        { speaker = "ux", expression = "thinking", text = "(Translation: she heard one word in a meeting and reverse-engineered an entire feature from it.)" },
        { speaker = "pm", expression = "neutral", text = "Alex, what do you think? This is a big scope change." },
        { speaker = "ux", expression = "thinking", text = "(Everyone's looking at me. The designer. The person who has to make whatever they decide look intentional.)" },
        { speaker = "ux", expression = "neutral", text = "From a design perspective, real-time collaboration is not a feature. It's a product. The interaction patterns alone would take me a full sprint to prototype properly." },
        { speaker = "ux", expression = "neutral", text = "Cursor behavior. Presence. What happens when two people edit the same paragraph. What happens when someone goes offline. Those are all design problems, not just engineering problems." },

        { speaker = "ux", expression = "neutral", text = "Every fiber of my being wants to say no.",
            choices = {
                { text = "We can probably mock it up for the demo.", set = {absorbed_scope = true}, rel = {po = 2, pm = 1, dev = -2, qa = -1} },
                { text = "No. We're already behind. This would sink us.", set = {fought_scope = true}, rel = {po = -2, dev = 2, qa = 1, pm = -1} },
                { text = "What if we do a lightweight version? Commenting instead of full co-editing.", set = {compromised_scope = true}, rel = {po = 1, dev = 1, pm = 2, arch = 1} },
            }
        },

        -- ABSORBED PATH
        { speaker = "ux", expression = "neutral", text = "We can probably mock it up for the demo. Fake cursors. Canned presence data. It'll look real enough on stage.", condition = "absorbed_scope" },
        { speaker = "po", expression = "excited", text = "Amazing! I knew you'd get it!", condition = "absorbed_scope" },
        { speaker = "dev", expression = "frustrated", text = "Alex. That's three more screens, real-time sync, and we don't even have a backend yet.", condition = "absorbed_scope" },
        { speaker = "ux", expression = "thinking", text = "(Sam's jaw is tight. I can feel the trust draining out of the room.)", condition = "absorbed_scope" },
        { speaker = "ux", expression = "neutral", text = "(I know. I know. But saying yes was easier than the argument. And maybe, if I control the mockup, I can keep it contained.)", condition = "absorbed_scope" },
        { speaker = "arch", expression = "concerned", text = "For the record, a mock is not a plan. It's a promise we haven't figured out how to keep.", condition = "absorbed_scope" },

        -- FOUGHT PATH
        { speaker = "ux", expression = "neutral", text = "No. We're already behind. Adding real-time collaboration now would sink the demo and the team.", condition = "fought_scope" },
        { speaker = "po", expression = "defensive", text = "But leadership--", condition = "fought_scope" },
        { speaker = "ux", expression = "neutral", text = "Leadership wants a demo that works. Adding half-baked collab features won't impress anyone. It'll just give them something broken to fixate on.", condition = "fought_scope" },
        { speaker = "dev", expression = "neutral", text = "Respect.", condition = "fought_scope" },
        { speaker = "qa", expression = "neutral", text = "Thank you. Someone had to say it.", condition = "fought_scope" },
        { speaker = "pm", expression = "neutral", text = "Priya, let's revisit this after the demo. Deal?", condition = "fought_scope" },

        -- COMPROMISED PATH
        { speaker = "ux", expression = "neutral", text = "What if we do a lightweight version? Commenting instead of full co-editing. Same collaboration story, fraction of the complexity.", condition = "compromised_scope" },
        { speaker = "arch", expression = "neutral", text = "Commenting is... actually reasonable. The infrastructure for that is manageable.", condition = "compromised_scope" },
        { speaker = "dev", expression = "neutral", text = "I can build a comment system. That's fine. Threaded comments, basic notifications, ships by Friday.", condition = "compromised_scope" },
        { speaker = "po", expression = "neutral", text = "I guess comments are a start... Can we at least add emoji reactions?", condition = "compromised_scope" },
        { speaker = "dev", expression = "smiling", text = "Sure. Emoji reactions. The cornerstone of enterprise software.", condition = "compromised_scope" },
        { speaker = "ux", expression = "thinking", text = "(The room exhales. Comments are a real feature. I can design that in a day. And it actually serves the user.)", condition = "compromised_scope" },

        -- End of standup
        { speaker = "pm", expression = "neutral", text = "And we're done! Total runtime: 44 minutes. Progress is... a journey." },
        { speaker = "ux", expression = "thinking", text = "(Day 2 was 38 minutes. We're trending in the wrong direction.)" },
        { speaker = "dev", expression = "tired", text = "New personal best." },

        { text = "..." },

        -- POST-MEETING: VENTING ALONE
        { bg = "break_room" },

        { speaker = "ux", expression = "neutral", text = "I take my coffee to the break room. The one with the broken microwave and the chair nobody sits in because it squeaks." },
        { speaker = "ux", expression = "thinking", text = "(Real-time collaboration. Priya dropped that like it was a sticky note, not a six-month project.)" },
        { speaker = "ux", expression = "neutral", text = "I pull up my Figma file. The wireframes from last week are still there. Solid. Clean. Achievable." },
        { speaker = "ux", expression = "thinking", text = "(And now they might be irrelevant, depending on which direction this lands.)" },
        { speaker = "ux", expression = "neutral", text = "I think about what the user actually needs. Not what leadership mentioned in passing. Not what Priya built a feature around at midnight." },
        { speaker = "ux", expression = "thinking", text = "(The user needs to find information fast. Share it easily. Maybe leave a comment. That's it. That's the product.)" },
        { speaker = "ux", expression = "neutral", text = "But try telling a PO that the most valuable thing you can do is build less." },
        { speaker = "ux", expression = "thinking", text = "(Scope creep isn't just a project management problem. It's a design problem. Every feature you add dilutes every other feature.)" },

        { speaker = "ux", expression = "neutral", text = "(I sit with the feeling for a moment. How does this actually land?)",
            choices = {
                { text = "This is unsustainable. We can't keep absorbing new scope every Monday.", set = {scope_angry = true}, rel = {dev = 1, qa = 1, po = -1} },
                { text = "It is what it is. This is how projects work. You adapt.", set = {scope_resigned = true}, rel = {pm = 1} },
                { text = "We can make it work. The team is smart enough to find a path.", set = {scope_hopeful = true}, rel = {po = 1, pm = 1} },
            }
        },

        { speaker = "ux", expression = "frustrated", text = "This is unsustainable. If every Monday starts with 'I had a thought,' we'll never finish what we started.", condition = "scope_angry" },
        { speaker = "ux", expression = "frustrated", text = "(I need to talk to Jordan. Privately. Before the next bomb drops.)", condition = "scope_angry" },

        { speaker = "ux", expression = "neutral", text = "It is what it is. Every project I've been on has had a Priya. A scope moment. A Monday morning ambush.", condition = "scope_resigned" },
        { speaker = "ux", expression = "thinking", text = "(You learn to roll with it. Design is the art of making the chaos look intentional.)", condition = "scope_resigned" },

        { speaker = "ux", expression = "neutral", text = "We can make it work. Sam is fast. Casey thinks ahead. Riley catches what we miss. The team is solid.", condition = "scope_hopeful" },
        { speaker = "ux", expression = "thinking", text = "(If we stay aligned, scope creep is just a bump. If we fracture, it's a cliff.)", condition = "scope_hopeful" },

        { speaker = "ux", expression = "neutral", text = "I close Slack. Open Figma. Start sketching." },
        { speaker = "ux", expression = "thinking", text = "(Scope creep. The silent killer of projects, sanity, and weekends. But the wireframes don't draw themselves.)" },

        { text = "", goto = "day6" }
    }
}
