return {
    title = "Day 5 -- Monday",
    subtitle = "The Weekend Idea",
    narration = "It's Monday. You had a thought over the weekend. The team is going to hate it. You're going to pitch it anyway.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- PRE-STANDUP
        { speaker = "po", expression = "excited", text = "Monday morning. I have been thinking about this since Saturday at 2 PM. Two full days of restraint. I deserve a medal." },
        { speaker = "po", expression = "neutral", text = "I almost Slacked the team on Saturday. I held off until Sunday night. 11:47 PM. That counts as restraint, right?" },
        { speaker = "po", expression = "excited", text = "(The idea: real-time collaboration. Multiple people editing the same document at the same time. Cursors. Presence. The whole thing.)" },
        { speaker = "po", expression = "neutral", text = "I know what they're going to say. Sam will say it's impossible. Casey will list seventeen infrastructure concerns. Riley will calculate test cases. Alex will say it's a whole product." },
        { speaker = "po", expression = "neutral", text = "(And they'll all be right. Technically right. The most frustrating kind of right.)" },
        { speaker = "po", expression = "excited", text = "But here's what they don't know. Friday afternoon, after the sprint review, the VP pulled me aside." },
        { speaker = "po", expression = "neutral", text = "She said: 'The board is interested in collaboration tools. If Chimera can tell that story, there's budget for Q3.' That's not a hint. That's a lifeline." },
        { speaker = "po", expression = "neutral", text = "(I can't tell the team that. Not yet. VP conversations are political. If I say 'the VP wants this,' it becomes a mandate. If I say 'I had a thought,' it becomes a discussion.)" },
        { speaker = "po", expression = "neutral", text = "(The PO's dilemma: I have information the team doesn't. I can't share the source. I can only share the conclusion. And the conclusion sounds like scope creep.)" },
        { speaker = "po", expression = "stressed", text = "(I know it's aggressive. I know the timing is bad. But if we don't plant the collaboration flag now, someone else will. And Chimera becomes another knowledge tool that nobody remembers.)" },
        { speaker = "po", expression = "neutral", text = "I text Jordan at 7:14 AM. 'Hey, I had a thought over the weekend. Can we talk before standup?' Jordan doesn't reply. Jordan is probably already dreading this." },

        { text = "..." },

        -- THE STANDUP
        { bg = "meeting_room" },

        { speaker = "pm", expression = "cheerful", text = "Quick standup! 15 minutes, I promise!" },
        { speaker = "dev", expression = "neutral", text = "(It won't be 15 minutes.)" },
        { speaker = "po", expression = "neutral", text = "(Jordan promised 15 last time. It was 38. I'm partly to blame for that. I'm about to be entirely to blame for this one.)" },

        { speaker = "pm", expression = "cheerful", text = "Quick updates first, then Priya has something to share." },
        { speaker = "dev", expression = "neutral", text = "Backend done. Ready for features." },
        { speaker = "ux", expression = "neutral", text = "Wireframes in Figma. Core flow is solid." },
        { speaker = "po", expression = "neutral", text = "(Good. The team is ready. The foundation is there. That's why I think we can stretch.)" },

        { speaker = "po", expression = "excited", text = "I know this is last minute, but I had a thought over the weekend..." },
        { speaker = "dev", expression = "frustrated", text = "(There it is.)" },
        { speaker = "po", expression = "excited", text = "What if Chimera also had real-time collaboration? Like Google Docs but in the knowledge base!" },
        { speaker = "po", expression = "neutral", text = "(I watch the room. Sam closes his eyes for exactly one second. Casey reaches for a marker. Riley is already doing math in their head.)" },
        { speaker = "arch", expression = "concerned", text = "Real-time collab is an entire product. Operational transforms, conflict resolution--" },
        { speaker = "po", expression = "defensive", text = "Is it really that complicated to add it? There must be a shortcut." },
        { speaker = "po", expression = "neutral", text = "(I know it's hard. I know 'is it really that complicated' is the most dangerous question in software. But I need them to engage with the idea, not dismiss it.)" },
        { speaker = "dev", expression = "frustrated", text = "'There must be a shortcut.' Sam says it like I just suggested we take the stairs to the moon." },
        { speaker = "dev", expression = "frustrated", text = "Priya, real-time collab needs CRDTs, a sync server, presence, conflict UI, and a backend rewrite. We have none of those." },
        { speaker = "po", expression = "defensive", text = "Surely there's a library?" },
        { speaker = "dev", expression = "frustrated", text = "Libraries solve 20 percent. The rest is custom. In four weeks." },
        { speaker = "po", expression = "neutral", text = "(Sam is not wrong. But Sam is thinking about engineering. I'm thinking about survival. This product needs a story, and 'another knowledge tool' isn't one.)" },

        -- Jordan mediates
        { speaker = "pm", expression = "stressed", text = "Priya, is this a must-have for the demo?" },
        { speaker = "po", expression = "neutral", text = "Leadership mentioned 'collaboration' last week. I just want us covered." },
        { speaker = "po", expression = "neutral", text = "(That's the version I can say out loud. The real version involves a VP, Q3 budget, and a political chess game I can't explain in standup.)" },
        { speaker = "qa", expression = "deadpan", text = "My test matrix just doubled. Concurrent editing. Race conditions. Network scenarios." },
        { speaker = "arch", expression = "concerned", text = "The architecture would need a message broker, a sync service, and a data model rethink." },
        { speaker = "po", expression = "neutral", text = "(The team is staring at me. I have to choose what kind of PO I am, in this moment. The one who pushes. The one who listens. Or the one who finds the middle.)" },

        { speaker = "po", expression = "neutral", text = "(The team is staring at me. I have to choose what kind of PO I am, in this moment.)",
            choices = {
                { text = "Push it through. Real-time collab, full version. Sam will figure it out.", set = {absorbed_scope = true}, rel = {dev = -2, qa = -1, arch = -1, pm = 1} },
                { text = "Pull it back. Park it for next sprint. The team is right -- this is too much.", set = {fought_scope = true}, rel = {dev = 2, qa = 1, arch = 1, pm = -1} },
                { text = "Reframe it. Comments instead of co-editing. Smaller scope, same story for leadership.", set = {compromised_scope = true}, rel = {dev = 1, arch = 1, pm = 2, ux = 1} },
            }
        },

        -- ABSORBED / PUSH THROUGH
        { speaker = "po", expression = "excited", text = "We're doing it. Full real-time collaboration. Sam, scope the engineering work. I'll handle the leadership story.", condition = "absorbed_scope" },
        { speaker = "dev", expression = "frustrated", text = "Three more screens. Real-time sync. No backend. Priya, this isn't ambition. This is a death march.", condition = "absorbed_scope" },
        { speaker = "po", expression = "defensive", text = "(He doesn't see what I see. Six months from now, this feature will be the reason Chimera has funding. Or the reason it doesn't.)", condition = "absorbed_scope" },
        { speaker = "qa", expression = "deadpan", text = "I'm logging a scope risk. For the record.", condition = "absorbed_scope" },
        { speaker = "po", expression = "neutral", text = "(The room is cold. I can feel the trust contracting. But trust doesn't pay for Q3 headcount. Results do.)", condition = "absorbed_scope" },
        { speaker = "po", expression = "stressed", text = "(Am I the visionary or the villain? The line is thinner than I thought.)", condition = "absorbed_scope" },

        -- FOUGHT / PULL BACK
        { speaker = "po", expression = "neutral", text = "You know what, forget I said anything. Park it. Next sprint. The team is too thin already.", condition = "fought_scope" },
        { speaker = "po", expression = "neutral", text = "(That cost me. The deck just lost its centerpiece. The VP conversation just got harder. But the team will still be here on Friday.)", condition = "fought_scope" },
        { speaker = "dev", expression = "smiling", text = "Did... did Priya just say no? To herself?", condition = "fought_scope" },
        { speaker = "qa", expression = "smirk", text = "Mark the calendar.", condition = "fought_scope" },
        { speaker = "po", expression = "neutral", text = "(Let them joke. I just gave up the strongest card in my deck for team morale. That better be worth something.)", condition = "fought_scope" },
        { speaker = "pm", expression = "neutral", text = "We can revisit next sprint with proper scoping. Good call, Priya.", condition = "fought_scope" },

        -- COMPROMISED / REFRAME
        { speaker = "po", expression = "neutral", text = "Counter-offer. Comments. Threaded comments. Same collaboration story for the deck. Smaller build. Sam, can you do that?", condition = "compromised_scope" },
        { speaker = "arch", expression = "neutral", text = "Comments are reasonable. The infrastructure is manageable.", condition = "compromised_scope" },
        { speaker = "dev", expression = "neutral", text = "I can build a comment system. That's fine. Ships by Friday.", condition = "compromised_scope" },
        { speaker = "po", expression = "neutral", text = "Can we at least add emoji reactions?", condition = "compromised_scope" },
        { speaker = "dev", expression = "smiling", text = "Sure. Emoji reactions. The cornerstone of enterprise software.", condition = "compromised_scope" },
        { speaker = "po", expression = "neutral", text = "(Comments aren't the vision. But they're a foot in the door. The VP said 'collaboration.' Comments are collaboration. I can sell that.)", condition = "compromised_scope" },

        -- End of standup
        { speaker = "pm", expression = "neutral", text = "That's a wrap, everyone! That was only... 42 minutes." },
        { speaker = "po", expression = "neutral", text = "(42 minutes. Last time was 38. And both times, the overtime was my fault.)" },
        { speaker = "dev", expression = "tired", text = "New record." },

        { text = "..." },

        -- POST-MEETING: PROCESSING ALONE
        { bg = "break_room" },

        { speaker = "po", expression = "neutral", text = "I go to the break room. The one nobody uses because the microwave smells like burnt popcorn." },
        { speaker = "po", expression = "stressed", text = "I pull up the VP's Friday email on my phone. Read it again. 'The board is interested in collaboration tools.'" },
        { speaker = "po", expression = "neutral", text = "(I'm carrying information the team doesn't have. It feels like a secret. It feels like a burden. It feels like my job.)" },
        { speaker = "po", expression = "stressed", text = "The team thinks I'm chasing shiny objects. I'm chasing survival. Chimera needs a story that's bigger than 'knowledge base.' Every competitor has a knowledge base." },
        { speaker = "po", expression = "neutral", text = "(But I can't explain that without revealing the VP conversation. And if I reveal the VP conversation, it stops being influence and becomes a mandate. The team will resent it.)" },
        { speaker = "po", expression = "stressed", text = "I think about Sam's face when I said 'can we just.' The frustration. The barely-contained lecture. He's not wrong. I just wish being right about the technology was the same as being right about the product." },
        { speaker = "po", expression = "neutral", text = "(Scope creep. That's what they call it when the PO adds features. When the CEO adds features, they call it 'vision.' Funny how that works.)" },

        { speaker = "po", expression = "neutral", text = "(I stare at the Slack channel. 14 new messages since the standup ended. All of them about scope.)",
            choices = {
                { text = "This is unsustainable. I can't keep pushing the team without telling them why.", set = {scope_angry = true}, rel = {pm = 1, dev = -1} },
                { text = "It is what it is. The PO's job is to push. The team's job is to push back. That's healthy.", set = {scope_resigned = true}, rel = {pm = 1} },
                { text = "We can make it work. The right scope, the right story. We just need alignment.", set = {scope_hopeful = true}, rel = {dev = 1, ux = 1} },
            }
        },

        { speaker = "po", expression = "stressed", text = "This is unsustainable. I'm making decisions based on information I can't share. The team deserves better than that.", condition = "scope_angry" },
        { speaker = "po", expression = "stressed", text = "(Maybe I should tell Jordan about the VP. At least one person should know why I keep pushing.)", condition = "scope_angry" },

        { speaker = "po", expression = "neutral", text = "It is what it is. I push. They push back. We land somewhere in the middle. That's the process.", condition = "scope_resigned" },
        { speaker = "po", expression = "neutral", text = "(The PO is always the villain in the sprint and the hero in the retrospective. I've made peace with it.)", condition = "scope_resigned" },

        { speaker = "po", expression = "neutral", text = "We can make it work. The team is talented. If I give them the right scope and the right story, they'll deliver.", condition = "scope_hopeful" },
        { speaker = "po", expression = "neutral", text = "(I just need to find the version of this idea that's ambitious enough for the VP and small enough for the sprint. That version exists. I just have to find it.)", condition = "scope_hopeful" },

        { speaker = "po", expression = "neutral", text = "I close Slack. Open the vision deck. Start rewriting slide 14." },
        { speaker = "po", expression = "stressed", text = "(Scope creep. The disease that kills sprints. I am, allegedly, the disease. But diseases don't usually have quarterly targets and a VP breathing down their neck.)" },

        { text = "", goto = "day6" }
    }
}
