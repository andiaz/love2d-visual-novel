return {
    title = "Day 12 -- Friday",
    subtitle = "Demo Day",
    narration = "Five hours to lock the build. Leadership at 2 PM. The technical Q&A is going to be the architect's moment. Or the architect's grave. Or both.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- Pre-demo preparation
        { speaker = "arch", expression = "concerned", text = "Friday morning. Demo day. The real one. The architecture diagram has been printed and laminated. I am taking it into the meeting." },
        { speaker = "arch", expression = "concerned", text = "(I have also prepared a second diagram. The second diagram shows what the architecture should be. I will not show the second diagram unless asked. If asked, I will show it with pride and regret in equal measure.)" },
        { speaker = "pm", expression = "stressed", text = "Demo at 2 PM. Five hours to finalize." },
        { speaker = "dev", expression = "neutral", text = "Last night's build is stable. Don't touch anything." },
        { speaker = "qa", expression = "smirk", text = "I have a list of buttons NOT to click during the demo. It's extensive." },
        { speaker = "arch", expression = "neutral", text = "Performance fix is in. We can handle 10 concurrent users." },
        { speaker = "dev", expression = "smiling", text = "Double digits. We've entered the big leagues now." },
        { speaker = "arch", expression = "concerned", text = "(I architected for 10. I should have architected for 10 thousand. I will architect for 10 thousand in v2. The architectural debt log has 14 entries. I am ready to defend each one.)" },
        { speaker = "arch", expression = "concerned", text = "(The caching layer is holding. The database queries are optimized. The API response times are under 200ms. For 10 users. The question is whether leadership will ask about 10 thousand.)" },

        { speaker = "arch", expression = "neutral", text = "(We fought the scope. The architecture is clean. Three services, clear boundaries, no provisional duct tape between them.)", condition = "fought_scope" },
        { speaker = "arch", expression = "concerned", text = "(We absorbed the scope. There are two services talking to each other through a shared database table I provisioned in 20 minutes. If the CTO asks about data isolation, I will need to talk very fast.)", condition = "absorbed_scope" },

        { speaker = "po", expression = "neutral", text = "Team? I want to say... I know I've been a lot." },
        { speaker = "po", expression = "neutral", text = "I push hard because I believe in this product. But I should have listened more." },
        { speaker = "arch", expression = "concerned", text = "(Priya is growing in real time. The architect in me wants to document the change. The human in me just nods.)" },
        { speaker = "po", expression = "neutral", text = "After the demo, I want a real retrospective. Real one." },
        { speaker = "pm", expression = "cheerful", text = "That's actually very mature, Priya." },
        { speaker = "arch", expression = "neutral", text = "(A real retrospective. Where I can finally present the architectural debt log as a roadmap instead of a confession.)" },

        -- Framing
        { speaker = "pm", expression = "neutral", text = "Casey, you're walking through the technical Q&A. How do we frame the architecture for leadership?" },

        { speaker = "arch", expression = "neutral", text = "(Three options. Each one is a different architectural philosophy applied to a sales pitch.)",
            choices = {
                { text = "Show the focused architecture. Three boxes, three responsibilities, clean boundaries. Simple is the message.", set = {polished_subset = true}, rel = {dev = 2, qa = 1, ux = 1} },
                { text = "Show the full diagram. Fourteen boxes. Tell them about the future state. Sell ambition.", set = {showed_everything = true}, rel = {po = 2, dev = -2, qa = -2} },
                { text = "Show the debt log. 'Here is what we built. Here is what we know is provisional. Here is what comes next.'", set = {honest_demo = true}, rel = {pm = 1, dev = 1, qa = 1, ux = 1, po = 1} },
            }
        },

        -- Polished
        { speaker = "arch", expression = "neutral", text = "Three boxes. Clean boundaries. Simple is the message. The fourteen-box diagram stays in my notebook.", condition = "polished_subset" },
        { speaker = "dev", expression = "smiling", text = "Casey is choosing simple over complete. I am framing this.", condition = "polished_subset" },
        { speaker = "arch", expression = "neutral", text = "(Sam can frame it. The three-box diagram is elegant. It is also incomplete. But elegance wins demos. Completeness wins retrospectives.)", condition = "polished_subset" },

        -- Showed everything
        { speaker = "arch", expression = "whiteboarding", text = "Fourteen boxes. The whole future state. I will explain every line. The Q&A will be 90 minutes long.", condition = "showed_everything" },
        { speaker = "po", expression = "excited", text = "YES! Show them the vision!", condition = "showed_everything" },
        { speaker = "qa", expression = "smirk", text = "(I am going to die in this Q&A. We are all going to die in this Q&A.)", condition = "showed_everything" },
        { speaker = "arch", expression = "concerned", text = "(Fourteen boxes. Ten of which are aspirational. The CTO will know. The CTO always knows.)", condition = "showed_everything" },

        -- Honest
        { speaker = "arch", expression = "neutral", text = "Debt log. Three sections. 'What we built.' 'What is provisional.' 'What comes next.' Leadership respects the architect who knows what they don't know.", condition = "honest_demo" },
        { speaker = "pm", expression = "neutral", text = "Radical transparency. I love it.", condition = "honest_demo" },
        { speaker = "arch", expression = "neutral", text = "(The honest diagram has seven boxes. Three solid. Two provisional. Two planned. That is the truth of this architecture. It is not beautiful. It is accurate.)", condition = "honest_demo" },

        -- Transition to demo
        { text = "", bg = "meeting_room", bgm = "tension" },

        -- Demo
        { speaker = "pm", expression = "neutral", text = "It's 2 PM. Leadership in the room. Here we go." },
        { speaker = "arch", expression = "concerned", text = "(The CTO is here. The CTO built distributed systems at Amazon. The CTO will ask about horizontal scaling. I have an answer. The answer is 'not yet.' I have rehearsed saying 'not yet' with confidence.)" },
        { speaker = "ux", expression = "neutral", text = "Good afternoon everyone. Let me walk you through Project Chimera." },
        { speaker = "arch", expression = "concerned", text = "(Alex clicks through the first flow. The page loads in 1.8 seconds. That is my caching layer. That is 14 hours of optimization. Nobody will compliment the caching layer. That is correct. Infrastructure should be invisible.)" },

        { speaker = "arch", expression = "neutral", text = "(The pairing between Alex and Sam shows. The frontend calls are clean. No redundant API hits. The architecture I designed is being used correctly. That is rare.)", condition = "paired_with_dev" },

        -- Will the architecture hold?
        { speaker = "arch", expression = "concerned", text = "(Second flow. The dashboard pulls from three data sources simultaneously. The aggregation layer I built handles the merge. Response time: 1.4 seconds. Under my 2-second threshold. The architecture holds.)" },
        { speaker = "arch", expression = "neutral", text = "(Third flow. The filter triggers a complex query. The database handles it. The index I added on Wednesday night is earning its existence right now.)" },

        -- Near-miss
        { speaker = "arch", expression = "concerned", text = "(Then the VP asks Alex to refresh the page while the filter is active. A race condition scenario. My blood runs cold.)" },
        { speaker = "arch", expression = "concerned", text = "(The page refreshes. The filter state persists. The data reloads. The cache serves a stale result for 0.3 seconds, then updates. I see the flash. Sam sees the flash. The VP does not see the flash.)" },
        { speaker = "arch", expression = "concerned", text = "(0.3 seconds of stale data. That is a bug. That is going in the debt log tonight. But for now, the architecture held. Barely.)" },

        { speaker = "arch", expression = "concerned", text = "(The absorbed scope introduced a shared database table between two services. The query that crosses that boundary takes 400ms longer than it should. The CTO hasn't noticed. The CTO will notice in production. I know this.)", condition = "absorbed_scope" },
        { speaker = "arch", expression = "neutral", text = "(Clean boundaries. No provisional tables. No cross-service duct tape. The scope fight gave me time to build this right. Three services, three databases, three clean APIs.)", condition = "fought_scope" },

        -- Tough question
        { speaker = "arch", expression = "concerned", text = "(Then it comes. The CTO leans forward.)" },
        { speaker = "arch", expression = "concerned", text = "'Walk me through your scalability story.'" },
        { speaker = "arch", expression = "neutral", text = "Currently optimized for 10 concurrent users. The architecture supports horizontal scaling - each service is stateless, the database layer can be replicated, and the caching layer is designed to be distributed." },
        { speaker = "arch", expression = "neutral", text = "To reach production scale, we need connection pooling, a message queue for async operations, and load balancer configuration. I have a phased plan." },
        { speaker = "arch", expression = "neutral", text = "(The CTO nods. That nod means: 'You know what you don't have.' That is the best thing an architect can hear from a CTO.)" },

        { speaker = "arch", expression = "neutral", text = "(The honest frame means I can show the debt log. 'Here is what is provisional.' The CTO leans forward again. But this time it is the interested lean, not the concerned lean.)", condition = "honest_demo" },

        -- Post-demo transition
        { text = "", bg = "break_room" },

        -- Leadership feedback and team processing
        { speaker = "pm", expression = "cheerful", text = "We did it, team. Demo done." },
        { speaker = "pm", expression = "cheerful", text = "CTO said 'solid foundation.' VP of Engineering asked about the scaling plan. They want a follow-up." },
        { speaker = "dev", expression = "neutral", text = "How do we feel?" },
        { speaker = "arch", expression = "concerned", text = "The 0.3-second cache stale. I saw it. That is a race condition in the invalidation logic. I need to fix it." },
        { speaker = "dev", expression = "neutral", text = "Casey, nobody saw that." },
        { speaker = "arch", expression = "concerned", text = "I saw it. The architecture saw it. It goes in the debt log." },
        { speaker = "qa", expression = "deadpan", text = "I also saw it. It is already in my bug list. Bug #247." },
        { speaker = "arch", expression = "neutral", text = "(Riley. Of course Riley saw it. QA sees everything.)" },
        { speaker = "po", expression = "neutral", text = "'Solid foundation' is good. That means there's something to build on." },

        -- Choice 2: Q&A reflection
        { speaker = "arch", expression = "concerned", text = "(The demo is over. The architecture held. The CTO asked questions. I answered them. But how did I actually perform under that technical scrutiny?)",
            choices = {
                { text = "I presented the architecture with clarity and the CTO respected it. The system I designed stood up.", set = {qa_confident = true}, rel = {dev = 1, pm = 1} },
                { text = "I kept thinking about the 0.3-second cache stale the entire Q&A. I barely held it together.", set = {qa_nervous = true}, rel = {qa = 1, ux = 1} },
            }
        },

        { speaker = "arch", expression = "neutral", text = "(The CTO nodded. The scaling plan landed. The architecture held under demo load and under scrutiny. I built something defensible. That is enough.)", condition = "qa_confident" },
        { speaker = "dev", expression = "smiling", text = "Casey, the scalability answer was textbook. Honest, specific, and forward-looking. The CTO respected that.", condition = "qa_confident" },

        { speaker = "arch", expression = "concerned", text = "(0.3 seconds. A race condition I missed. The architecture held but it creaked. I heard the creak. I will hear it all weekend.)", condition = "qa_nervous" },
        { speaker = "qa", expression = "neutral", text = "Casey, for what it's worth, you sounded completely in control up there. Nobody saw the creak except us.", condition = "qa_nervous" },
        { speaker = "arch", expression = "concerned", text = "(Us. The people who built it. We always see the creaks. That is the burden of building things.)", condition = "qa_nervous" },

        { speaker = "arch", expression = "concerned", text = "Ask me on Monday. Right now I want to revise the data model based on three questions leadership asked. And fix bug #247." },

        { text = "", goto = "day13" }
    }
}
