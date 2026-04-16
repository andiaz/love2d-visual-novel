return {
    title = "Day 6 -- Tuesday",
    subtitle = "The Competitor",
    narration = "Solo day. The office is quiet. Your inbox is not. Someone just launched the thing you have been building.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "po", expression = "neutral", text = "Tuesday. 8:05 AM. I am the first one in. The office smells like yesterday's coffee and carpet cleaner." },
        { speaker = "po", expression = "neutral", text = "(I like mornings alone. Before the team arrives. Before the Slack avalanche. Just me and the vision and the quiet.)" },
        { speaker = "po", expression = "thinking", text = "(One week to demo. The deck is at version 14. The product is at version 0.3. The gap between them is everything.)" },

        -- Conditional: pushed_interviews
        { speaker = "po", expression = "defensive", text = "(Alex's research is still sitting in my inbox. Five interviews. Five users saying they want search, not creation. I have read them twice.)", condition = "pushed_interviews" },
        { speaker = "po", expression = "thinking", text = "(The data says I am wrong. The deck says I am right. One of them has to give. And the deck is mine.)", condition = "pushed_interviews" },

        -- Conditional: started_wireframes
        { speaker = "po", expression = "neutral", text = "(The wireframes are moving. Alex is designing. Sam is building. It looks like a product. Whether it is the right product is another question.)", condition = "started_wireframes" },
        { speaker = "po", expression = "thinking", text = "(I told myself 'ship first, validate later.' That is either pragmatic or reckless. I genuinely cannot tell.)", condition = "started_wireframes" },

        -- Conditional: needs_requirements
        { speaker = "po", expression = "neutral", text = "(The requirements doc is holding. The team is building against it. That should feel good. It feels fragile.)", condition = "needs_requirements" },
        { speaker = "po", expression = "thinking", text = "(Requirements ground a project. But they do not validate a vision. Those are different things.)", condition = "needs_requirements" },

        -- Morning routine
        { speaker = "po", expression = "neutral", text = "(I open the deck. Slide 7: 'Users love sharing knowledge.' Slide 12: 'The creation experience is the moat.' Slide 23: 'TAM: $2.4B.')" },
        { speaker = "po", expression = "thinking", text = "(I have looked at these slides so many times the words have stopped meaning things. They are just shapes now. Shapes I am betting my career on.)" },
        { speaker = "po", expression = "neutral", text = "(I open Product Hunt. Force of habit. Monday launches. Competitor scanning. The morning ritual.)" },

        -- The discovery - unique scene
        { speaker = "po", expression = "neutral", text = "(And there it is. Top of the page. A product I have never seen before.)" },
        { speaker = "po", expression = "defensive", text = "(KnowledgeFlow. 'The AI-powered knowledge sharing platform for modern teams.' 847 upvotes. 214 comments. Launched yesterday.)" },
        { speaker = "po", expression = "defensive", text = "(I click through. The landing page loads. It is clean. It is exactly what I have been pitching for six months.)" },
        { speaker = "po", expression = "frustrated", text = "(Content creation with templates. AI suggestions. Team collaboration. Search. They have search. Good search.)" },
        { speaker = "po", expression = "frustrated", text = "(They even have the knowledge graph visualization from slide 31. The one I thought was our differentiator.)" },
        { speaker = "po", expression = "defensive", text = "(My hands are cold. My chest is tight. Someone built Chimera. Without us. And they launched it while we were arguing about scope.)" },
        { speaker = "po", expression = "thinking", text = "(I read the comments. 'Finally, a knowledge tool that gets it.' 'The search is incredible.' 'Replaced our internal wiki in a day.')" },
        { speaker = "po", expression = "frustrated", text = "('The search is incredible.' Search. The thing Alex's users wanted. The thing I kept deprioritizing.)" },
        { speaker = "po", expression = "defensive", text = "(I feel sick. Not because they launched. Because they validated my vision and Alex's data at the same time. The product works BECAUSE of the search. Not in spite of it.)" },
        { speaker = "po", expression = "thinking", text = "(Six months of pitching. Fourteen versions of the deck. And someone else shipped the answer while I was still arguing about the question.)" },

        -- Slack messages arrive
        { speaker = "po", expression = "neutral", text = "(9:15 AM. I have been staring at KnowledgeFlow's pricing page for twenty minutes. Slack pulls me back.)" },

        -- Slack from Jordan
        { speaker = "pm", expression = "stressed", text = "[Slack] Priya, status report is due to the Director by 4 PM. What should I highlight?" },
        { speaker = "po", expression = "frustrated", text = "(Highlight? That a competitor just launched our product? That the demo in six days is now a demo of something that already exists elsewhere?)" },
        { speaker = "po", expression = "neutral", text = "(I type 'Let me think about it and get back to you.' I do not mention KnowledgeFlow. Not yet. I need to process this.)" },

        -- Slack from Alex
        { speaker = "ux", expression = "thinking", text = "[Slack] Priya, I am restructuring some flows today. Quick question -- what is our actual differentiator versus existing tools?" },
        { speaker = "po", expression = "frustrated", text = "(Alex is asking the right question on the worst possible day. Our differentiator was the creation experience. KnowledgeFlow just commoditized it.)" },
        { speaker = "po", expression = "thinking", text = "(I type 'Great question. Let me pull together some competitive analysis.' The professional way of saying 'I have no idea anymore.')" },

        -- Slack from Riley
        { speaker = "qa", expression = "deadpan", text = "[Slack] Priya, have you seen KnowledgeFlow on Product Hunt? Their feature list is... familiar." },
        { speaker = "po", expression = "frustrated", text = "(Riley saw it. Of course Riley saw it. QA sees everything.)" },
        { speaker = "po", expression = "neutral", text = "(I type 'Yes. Doing competitive analysis now.' The calm version. The professional version. Inside I am spiraling.)" },

        -- The existential crisis
        { speaker = "po", expression = "thinking", text = "(10:30 AM. The office is still quiet. My mind is not. I have three tabs open: KnowledgeFlow, our deck, and Alex's research.)" },
        { speaker = "po", expression = "thinking", text = "(The research said users want search. KnowledgeFlow has great search. KnowledgeFlow is winning. The math writes itself.)" },
        { speaker = "po", expression = "defensive", text = "(But we are not KnowledgeFlow. We could be different. We could be better. Or we could be a worse version of something that already exists.)" },
        { speaker = "po", expression = "thinking", text = "(The real question: is the vision dead? Or does the vision need to evolve? Those are very different answers.)" },

        -- Scope creep conditional
        { speaker = "po", expression = "frustrated", text = "(And I pushed for more scope yesterday. More features on top of a vision that a competitor just validated AND invalidated simultaneously.)", condition = "absorbed_scope" },
        { speaker = "po", expression = "thinking", text = "(At least I pulled back the scope yesterday. A smaller, focused product has a better chance of being different than a bloated clone.)", condition = "fought_scope" },
        { speaker = "po", expression = "neutral", text = "(The commenting compromise from yesterday feels smarter now. Simple features, well-executed, might be how we differentiate.)", condition = "compromised_scope" },

        -- The choice
        { speaker = "po", expression = "thinking", text = "(12:00 PM. Lunch is a protein bar I found in my desk drawer. The existential crisis is not going anywhere.)" },
        { speaker = "po", expression = "thinking", text = "(I have to decide what Chimera is now. Not what I pitched six months ago. What it is today, in a world where KnowledgeFlow exists.)",
            choices = {
                { text = "(Trust the data. Pivot hard. If users want search, build the best search. Let the vision follow the evidence.)", set = {followed_data = true}, rel = {ux = 2, dev = 2, qa = 2, arch = 1} },
                { text = "(Trust the vision. KnowledgeFlow proves the market exists. Double down. Out-execute them.)", set = {followed_vision = true}, rel = {ux = -2, dev = -1, qa = -2} },
                { text = "(Find the gap. What does KnowledgeFlow NOT do well? Build Chimera into the space they left empty.)", set = {found_middle = true}, rel = {pm = 2, ux = 1, dev = 1, qa = 1} },
            }
        },

        -- Data path
        { speaker = "po", expression = "neutral", text = "(I close the deck. I open Alex's research. I read it a third time. This time, I read it like it matters. Because it does.)", condition = "followed_data" },
        { speaker = "po", expression = "thinking", text = "(Search-first. Browse-second. Create-third. The opposite of everything I pitched. But the order users actually want.)", condition = "followed_data" },
        { speaker = "po", expression = "neutral", text = "(The deck was my hypothesis. KnowledgeFlow just ran the experiment. The results are in. Time to listen.)", condition = "followed_data" },
        { speaker = "po", expression = "thinking", text = "(That hurt. Letting go of a six-month vision in a Tuesday morning. But holding on to a wrong vision is how products die.)", condition = "followed_data" },

        -- Vision path
        { speaker = "po", expression = "excited", text = "(KnowledgeFlow proves the market is real. They validated my thesis. Now I need to out-execute them.)", condition = "followed_vision" },
        { speaker = "po", expression = "defensive", text = "(More features. Better creation tools. Deeper AI integration. If the market exists, the winner is whoever ships the most.)", condition = "followed_vision" },
        { speaker = "po", expression = "thinking", text = "(Is this confidence or denial? I cannot tell. But the demo is in six days and pivoting now would be admitting defeat.)", condition = "followed_vision" },
        { speaker = "po", expression = "defensive", text = "(I will not let KnowledgeFlow be the reason Chimera dies. I have come too far.)", condition = "followed_vision" },

        -- Middle path
        { speaker = "po", expression = "thinking", text = "(I open KnowledgeFlow's feature list in one tab and Alex's research in another. Where is the gap?)", condition = "found_middle" },
        { speaker = "po", expression = "neutral", text = "(KnowledgeFlow is broad. Generic. One-size-fits-all. Their search is good but their creation tools are templates. Cookie-cutter.)", condition = "found_middle" },
        { speaker = "po", expression = "thinking", text = "(What if Chimera is narrower? Deeper? What if we own one vertical instead of trying to own everything?)", condition = "found_middle" },
        { speaker = "po", expression = "neutral", text = "(Competitive analysis is not about copying. It is about finding the space they left empty and filling it with something real.)", condition = "found_middle" },

        -- Closing reflection
        { speaker = "po", expression = "neutral", text = "(5:30 PM. The office is empty. The deck is still open. But it looks different now. Smaller. More honest.)" },
        { speaker = "po", expression = "thinking", text = "(Solo days are when the real product thinking happens. Not in pitch meetings. Not in standups. In the quiet hours after a competitor punches you in the stomach.)" },
        { speaker = "po", expression = "thinking", text = "(Tomorrow I have to tell the team about KnowledgeFlow. They will have opinions. They will be right about some of them.)" },
        { speaker = "po", expression = "neutral", text = "(The deck is at version 14. Tomorrow it might be version 15. Or it might be a different deck entirely. I will not know until morning.)" },

        { text = "", goto = "day7" }
    }
}
