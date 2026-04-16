return {
    title = "Day 5 -- Monday",
    subtitle = "The Scope Creep",
    narration = "New week. Sprint two. Then Priya texts: 'I had a thought over the weekend.' Your stomach already knows.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- PRE-STANDUP
        { speaker = "pm", expression = "stressed", text = "Monday morning. My phone buzzed at 7:14 AM. It was Priya. 'Hey, I had a thought over the weekend. Can we talk before standup?'" },
        { speaker = "pm", expression = "stressed", text = "(Seven-fourteen AM. On a Monday. After a Sunday night Slack message at 11:47 PM. Priya had a 'thought.' The last time Priya had a thought, we added a social feed.)" },
        { speaker = "pm", expression = "neutral", text = "I called her back. She pitched real-time collaboration. Like Google Docs inside the knowledge base." },
        { speaker = "pm", expression = "stressed", text = "(My first instinct: no. My second instinct: also no. My third instinct: figure out how to say no without Priya hearing no.)" },
        { speaker = "pm", expression = "stressed", text = "She mentioned leadership. 'They mentioned collaboration on Friday.' That word. Collaboration. It could mean anything. A comment box. A shared folder. Or the thing Priya heard: real-time co-editing." },
        { speaker = "pm", expression = "neutral", text = "(The PM's job: translate one vague word from leadership into a scope decision that keeps the team alive and the stakeholders happy. No pressure.)" },
        { speaker = "pm", expression = "stressed", text = "I check the sprint board. The velocity from sprint one was already 15 percent below projection. Adding real-time collab would blow the timeline to pieces." },
        { speaker = "pm", expression = "neutral", text = "(But I can't just say that. I need the team to arrive at the right answer together. If I dictate, I lose trust. If I let Priya run, I lose the sprint.)" },
        { speaker = "pm", expression = "stressed", text = "I rehearse three versions of the conversation in the shower. None of them end well." },

        { text = "..." },

        -- THE STANDUP
        { bg = "meeting_room" },

        { speaker = "pm", expression = "cheerful", text = "Quick standup! 15 minutes, I promise!" },
        { speaker = "pm", expression = "stressed", text = "(I promised 15 last time. It ran 38. I'm a liar with a calendar invite.)" },
        { speaker = "dev", expression = "neutral", text = "(It won't be 15 minutes.)" },
        { speaker = "pm", expression = "cheerful", text = "Sprint two kickoff. Quick updates, then Priya has a proposal. Let's hear updates first." },

        { speaker = "dev", expression = "neutral", text = "Backend scaffolding done. Ready for feature work." },
        { speaker = "ux", expression = "neutral", text = "Wireframes for the core flow are in Figma. Ready for review." },
        { speaker = "qa", expression = "deadpan", text = "Test plan updated. Waiting on scope clarity." },
        { speaker = "arch", expression = "neutral", text = "Architecture doc is stable. Data model finalized last Friday." },
        { speaker = "pm", expression = "stressed", text = "(Everyone is ready. The machine is humming. And I'm about to introduce a wrench.)" },

        { speaker = "po", expression = "excited", text = "So I've been noodling on something since Saturday..." },
        { speaker = "pm", expression = "stressed", text = "(Here it comes. Brace.)" },
        { speaker = "po", expression = "excited", text = "Imagine if people could edit the knowledge base together in real time, like a shared doc!" },
        { speaker = "arch", expression = "concerned", text = "Real-time collab is an entire product. Operational transforms, conflict resolution--" },
        { speaker = "po", expression = "defensive", text = "Can we squeeze it in? It's just one feature." },
        { speaker = "dev", expression = "frustrated", text = "'Just one feature.' The sentence that's killed more timelines than any deadline." },

        { speaker = "pm", expression = "stressed", text = "(The room temperature just dropped three degrees. Sam's jaw is set. Casey is already drawing diagrams in their head. Riley is calculating test cases.)" },
        { speaker = "pm", expression = "stressed", text = "Okay -- everyone breathe. Priya, is this a must-have for the demo?" },
        { speaker = "po", expression = "neutral", text = "Leadership mentioned 'collaboration' last week. I just want us covered." },
        { speaker = "pm", expression = "stressed", text = "(Translation: she heard one word in a meeting and built a feature around it. I've seen this before. I've DONE this before.)" },
        { speaker = "dev", expression = "frustrated", text = "Jordan, real-time collab needs a CRDT library, a sync server, presence, conflict UI, and a backend rewrite. We have none of those." },
        { speaker = "qa", expression = "deadpan", text = "My test matrix just doubled. Concurrent editing. Network partitions. Race conditions." },
        { speaker = "arch", expression = "concerned", text = "The architecture would need a message broker and a sync service. This is not incremental." },
        { speaker = "pm", expression = "stressed", text = "(My job: protect the team from scope. Without making Priya feel ignored. Without missing leadership's actual ask. Without losing the timeline. The PM trilemma.)" },
        { speaker = "pm", expression = "stressed", text = "(Scope change with a fixed timeline. The PM's nightmare. Something has to give, and it's never the deadline.)" },

        { speaker = "pm", expression = "neutral", text = "I need to make a call.",
            choices = {
                { text = "Absorb it. Squeeze it in. The team will figure it out.", set = {absorbed_scope = true}, rel = {po = 2, dev = -2, qa = -1, arch = -1} },
                { text = "Block it. Hard no. We have a deadline and a team that hasn't slept.", set = {fought_scope = true}, rel = {dev = 2, qa = 1, arch = 1, po = -2} },
                { text = "Reframe it. 'Comments instead of co-editing.' Get Priya 80% with 20% of the work.", set = {compromised_scope = true}, rel = {po = 1, dev = 1, arch = 1, ux = 1} },
            }
        },

        -- ABSORBED PATH
        { speaker = "pm", expression = "stressed", text = "Okay. We'll fit it in. Sam, can you scope the engineering work by end of day?", condition = "absorbed_scope" },
        { speaker = "po", expression = "excited", text = "Amazing! I knew you'd get it!", condition = "absorbed_scope" },
        { speaker = "dev", expression = "frustrated", text = "Jordan. That's three more screens, real-time sync, no backend. You're adding a house to a foundation built for a shed.", condition = "absorbed_scope" },
        { speaker = "pm", expression = "stressed", text = "(Sam's right. I know Sam's right. But Priya has leadership's ear and I have a Gantt chart.)", condition = "absorbed_scope" },
        { speaker = "pm", expression = "stressed", text = "(I just lost the team. Risk register: morale. Severity: high. Mitigation: unclear.)", condition = "absorbed_scope" },
        { speaker = "qa", expression = "deadpan", text = "For the record, I'm logging this as a scope risk.", condition = "absorbed_scope" },

        -- FOUGHT PATH
        { speaker = "pm", expression = "neutral", text = "Priya, no. Not this sprint. The demo is in eight days and we're already behind on the core features.", condition = "fought_scope" },
        { speaker = "po", expression = "defensive", text = "But leadership--", condition = "fought_scope" },
        { speaker = "pm", expression = "neutral", text = "Leadership wants a working demo. I'll handle the conversation about 'collaboration.' You handle the deck. Deal?", condition = "fought_scope" },
        { speaker = "dev", expression = "smiling", text = "Respect.", condition = "fought_scope" },
        { speaker = "pm", expression = "neutral", text = "(That felt good. Protective. Like I actually did my job. But Priya's face tells me I'll pay for this later.)", condition = "fought_scope" },
        { speaker = "pm", expression = "stressed", text = "(Note to self: follow up with Priya one-on-one. She needs to feel heard, not overruled.)", condition = "fought_scope" },

        -- COMPROMISED PATH
        { speaker = "pm", expression = "neutral", text = "Counter-proposal. Comments instead of co-editing. Same 'collaboration' story for leadership. One-tenth the build.", condition = "compromised_scope" },
        { speaker = "arch", expression = "neutral", text = "Comments are reasonable. The infrastructure is manageable.", condition = "compromised_scope" },
        { speaker = "dev", expression = "neutral", text = "I can build a comment system. That's fine. Ships by Friday.", condition = "compromised_scope" },
        { speaker = "po", expression = "neutral", text = "I guess comments are a start... Can we at least add emoji reactions?", condition = "compromised_scope" },
        { speaker = "pm", expression = "cheerful", text = "(That's the magic. She thinks she won. Sam thinks he won. Everyone wins. This is why PMs exist.)", condition = "compromised_scope" },
        { speaker = "pm", expression = "neutral", text = "Emoji reactions are in scope. Anything beyond that goes to the backlog.", condition = "compromised_scope" },

        -- End of standup
        { speaker = "pm", expression = "stressed", text = "Okay, that's a wrap! That was only... 44 minutes." },
        { speaker = "dev", expression = "tired", text = "Improvement over what? Last time was 38." },
        { speaker = "pm", expression = "cheerful", text = "We'll get faster. Next time, 15 for real." },
        { speaker = "dev", expression = "neutral", text = "(Sure, Jordan.)" },

        { text = "..." },

        -- POST-MEETING: PROCESSING ALONE
        { bg = "break_room" },

        { speaker = "pm", expression = "stressed", text = "I close the meeting room door behind me. Everyone scatters. I stay." },
        { speaker = "pm", expression = "stressed", text = "I pull up the Gantt chart. The timeline was already tight. Now it's a fiction." },
        { speaker = "pm", expression = "neutral", text = "(Every PM knows this moment. The moment the plan stops being a plan and starts being a wish.)" },
        { speaker = "pm", expression = "stressed", text = "Priya means well. She sees the market, the competition, the opportunity. She's not wrong about collaboration mattering." },
        { speaker = "pm", expression = "stressed", text = "(She's wrong about timing. And timing is the only thing I control.)" },
        { speaker = "pm", expression = "neutral", text = "I think about the team. Sam is carrying the heaviest load. Casey is the guardrail. Riley catches what falls. Alex translates chaos into screens." },
        { speaker = "pm", expression = "stressed", text = "(If I break their trust by absorbing every request, they'll stop telling me when things are off. And that's when projects die. Not from scope creep. From silence.)" },

        { speaker = "pm", expression = "stressed", text = "(I stare at the whiteboard. Still has yesterday's sprint plan on it. Already obsolete.)",
            choices = {
                { text = "This is unsustainable. I can't keep absorbing scope shocks with a fixed deadline.", set = {scope_angry = true}, rel = {dev = 1, qa = 1, po = -1} },
                { text = "It is what it is. Scope changes are the job. You adjust the plan and move.", set = {scope_resigned = true}, rel = {po = 1} },
                { text = "We can make it work. The team is resilient. We just need clear priorities.", set = {scope_hopeful = true}, rel = {dev = 1, ux = 1} },
            }
        },

        { speaker = "pm", expression = "frustrated", text = "This is unsustainable. If every sprint starts with a scope bomb, the Gantt chart is just decoration.", condition = "scope_angry" },
        { speaker = "pm", expression = "stressed", text = "(I need to set a boundary with Priya. A real one. Before the next Monday morning surprise.)", condition = "scope_angry" },

        { speaker = "pm", expression = "neutral", text = "It is what it is. Scope changes are the job. The plan was always going to change. The skill is changing it gracefully.", condition = "scope_resigned" },
        { speaker = "pm", expression = "stressed", text = "(I update the Gantt chart. Add a buffer I don't have. Label it 'contingency.' It's not contingency. It's hope.)", condition = "scope_resigned" },

        { speaker = "pm", expression = "neutral", text = "We can make it work. The team pushed back, but they pushed back together. That's healthy.", condition = "scope_hopeful" },
        { speaker = "pm", expression = "cheerful", text = "(A team that argues about scope is a team that cares about shipping. I'll take that over apathy any day.)", condition = "scope_hopeful" },

        { speaker = "pm", expression = "neutral", text = "I erase the whiteboard. Start fresh. New sprint, new plan." },
        { speaker = "pm", expression = "stressed", text = "(Scope creep. The disease that kills sprints faster than the deadline. The vaccine is saying no. The problem is, everybody thinks the PM has unlimited doses.)" },

        { text = "", goto = "day6" }
    }
}
