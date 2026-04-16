return {
    title = "Day 9 -- Friday",
    subtitle = "The Pivot",
    narration = "Demo day. You went to the company mixer last night. You met the CEO's nephew. You have an idea. The team is going to hate it. You're going to pitch it anyway.",

    bg = "office_day",
    bgm = "tension",

    dialogue = {
        { speaker = "po", expression = "excited", text = "Friday morning. Demo day. And I had the BEST conversation last night at the company mixer." },
        { speaker = "po", expression = "excited", text = "(I'm going to bring this up in the standup. The team is going to lose their minds. But this is THE idea.)" },
        { speaker = "po", expression = "neutral", text = "(The CEO's nephew. Marcus. 22. Business major. He talked about short-form video for twenty minutes and his eyes lit up the entire time. The CEO was standing right there, nodding.)" },
        { speaker = "po", expression = "excited", text = "(The CEO was NODDING. That's not a conversation. That's a signal. That's politics. And I'm a product owner who just got handed a golden ticket from the CEO's family tree.)" },

        -- Emergency meeting
        { speaker = "pm", expression = "neutral", text = "Team, emergency meeting. Priya has an update.", bg = "meeting_room" },
        { speaker = "po", expression = "excited", text = "So I talked to the CEO's nephew at the mixer last night." },
        { speaker = "dev", expression = "neutral", text = "(Oh no.)" },
        { speaker = "po", expression = "excited", text = "He's 22 and he had INCREDIBLE insights about what Gen Z wants from knowledge platforms." },
        { speaker = "qa", expression = "neutral", text = "I'm afraid to ask." },
        { speaker = "po", expression = "excited", text = "Short-form video! Stories! TikTok for internal communications!" },
        { speaker = "dev", expression = "frustrated", text = "We're pivoting to TikTok. Based on the CEO's nephew. ON DEMO DAY." },
        { speaker = "po", expression = "excited", text = "Not pivoting! ENHANCING!" },

        { speaker = "arch", expression = "concerned", text = "Video hosting. Transcoding. CDN. Recommendation algorithm. Do you want me to draw--" },
        { speaker = "dev", expression = "frustrated", text = "Don't. Don't draw anything." },

        { speaker = "qa", expression = "deadpan", text = "How many users have asked for video?" },
        { speaker = "po", expression = "excited", text = "Marcus said the entire--" },
        { speaker = "qa", expression = "deadpan", text = "Users. Not nephews. Users." },
        { speaker = "po", expression = "defensive", text = "(Zero. The number of users who have asked for video is zero. The number of nephews is one. The number of CEOs nodding is one. The math is not on my side but the org chart might be.)" },

        -- Internal conflict
        { speaker = "po", expression = "neutral", text = "(I can see their faces. Sam is angry. Riley is calculating test cases. Casey is mentally drawing diagrams. Jordan is recalculating the sprint.)" },
        { speaker = "po", expression = "neutral", text = "(They think I'm naive. They think I heard 'TikTok' from a 22-year-old and got excited. And... they're half right. I did get excited.)" },
        { speaker = "po", expression = "neutral", text = "(But the other half is politics. The CEO was in the room. The CEO nodded. If I don't bring this to the team, someone else will bring it to us. With a mandate. And a deadline. And no input from the people who build things.)" },
        { speaker = "po", expression = "neutral", text = "(I am trying to give the team a heads-up. I am doing this badly. But I am doing it.)" },

        { speaker = "pm", expression = "stressed", text = "The demo is in four hours, Priya. We can't add video." },
        { speaker = "po", expression = "neutral", text = "Not for the demo. For the roadmap. I just want to mention it during the presentation." },
        { speaker = "qa", expression = "smirk", text = "Mention a feature we haven't built. What could go wrong." },

        { speaker = "po", expression = "neutral", text = "(The room is staring at me. The team is bracing. I have to choose what kind of PO I want to be. The one who pushes, the one who listens, or the one who finds the middle.)" },
        { speaker = "po", expression = "neutral", text = "(Marcus is silly. The idea is silly. But the CEO nodding is not silly. The CEO nodding is a budget conversation waiting to happen.)",
            choices = {
                { text = "Push it. 'Future vision' slide. We mention it. We commit to nothing. But we plant the seed.", set = {supported_pivot = true}, rel = {pm = 1, dev = -2, qa = -2, ux = -1} },
                { text = "Pull it. The team is right. The mixer was a conversation, not a strategy.", set = {resisted_pivot = true}, rel = {dev = 2, qa = 2, ux = 1, pm = -1} },
                { text = "Soften it. 'We're exploring multimedia.' One sentence. No mockups, no commitments.", set = {negotiated_pivot = true}, rel = {pm = 2, dev = 1, ux = 1} },
            }
        },

        -- Push
        { speaker = "po", expression = "excited", text = "I'm doing it. One slide. Future vision. The direction is clear even if the timeline isn't.", condition = "supported_pivot" },
        { speaker = "dev", expression = "frustrated", text = "We're demoing a dream of a product that doesn't exist.", condition = "supported_pivot" },
        { speaker = "po", expression = "defensive", text = "(They don't see what I see. The CEO's nod. The budget implications. The political capital. They see code. I see the org chart.)", condition = "supported_pivot" },
        { speaker = "po", expression = "neutral", text = "(But they're not wrong about the cost. Yesterday, 23 bugs. Today, I'm adding scope. The pattern is mine and I can see it now.)", condition = "supported_pivot" },

        -- Pull
        { speaker = "po", expression = "neutral", text = "...you're right. The mixer was a conversation. Not a strategy. I'll keep the pitch focused on what we built.", condition = "resisted_pivot" },
        { speaker = "po", expression = "neutral", text = "(That hurt. Pulling back the idea I was excited about. But the team needed me to choose them over the nephew. Over the politics. Over the nod.)", condition = "resisted_pivot" },
        { speaker = "dev", expression = "smiling", text = "Thank you. Seriously.", condition = "resisted_pivot" },
        { speaker = "qa", expression = "smirk", text = "I'm buying you coffee after this.", condition = "resisted_pivot" },
        { speaker = "po", expression = "neutral", text = "(Coffee from Riley. That might be the highest compliment in this office.)", condition = "resisted_pivot" },

        -- Soften
        { speaker = "po", expression = "neutral", text = "Compromise. One sentence. 'We're exploring multimedia.' That's it. No mockups, no slide, no timeline.", condition = "negotiated_pivot" },
        { speaker = "pm", expression = "cheerful", text = "Good. That's the right framing.", condition = "negotiated_pivot" },
        { speaker = "dev", expression = "smiling", text = "'Exploring.' Sam-speak for 'not a single line of code exists.'", condition = "negotiated_pivot" },
        { speaker = "po", expression = "neutral", text = "('Exploring' keeps the door open for the CEO conversation. 'Exploring' keeps the team from panicking. 'Exploring' is the PO's favorite verb.)", condition = "negotiated_pivot" },

        -- Callbacks
        { speaker = "qa", expression = "deadpan", text = "You pushed for more scope last week too. And I showed you 23 bugs from it yesterday.", condition = "fought_scope" },
        { speaker = "po", expression = "defensive", text = "(Riley's right. The scope creep pattern is mine. I push. Things break. I push more. More things break. The PO as a force of nature that leaves bugs in its wake.)", condition = "fought_scope" },

        -- Demo
        { speaker = "pm", expression = "neutral", text = "Alright. It's time. Everyone ready?" },
        { speaker = "po", expression = "neutral", text = "(My deck is in the room. My team is in the room. The CEO's nephew is not in the room, which is probably for the best.)" },
        { speaker = "po", expression = "neutral", text = "(The product story. My story. The vision I've been building since day one. Not the video vision. The real one. The knowledge platform. The thing we actually built.)" },

        -- Post-demo
        { speaker = "po", expression = "neutral", text = "(The first demo. Not a disaster. Not a triumph. Leadership wants a 'fuller version' in two more weeks.)", bg = "break_room" },
        { speaker = "po", expression = "neutral", text = "(The director said 'interesting direction.' 'Interesting' in director-speak means 'I need to think about this.' It's not a yes. It's not a no. It's a maybe with a corner office.)" },
        { speaker = "po", expression = "neutral", text = "(And nobody asked about video. Nobody. The CEO's nephew wasn't in the audience. The nod from last night didn't translate into a question from today. Maybe the nod was just a nod.)" },
        { speaker = "po", expression = "neutral", text = "(Or maybe the video conversation is coming. Just not today. Today, the vision lived. Tomorrow, it evolves.)" },
        { speaker = "po", expression = "neutral", text = "(After the demo, Sam walked past my desk. He stopped. 'Good pitch, Priya. The product story made sense.' Then he kept walking.)" },
        { speaker = "po", expression = "neutral", text = "(Sam complimented the product story. Not the features. Not the deck. The story. That is the first time Sam has separated me from my slide count.)" },
        { speaker = "po", expression = "defensive", text = "(Riley left a note on my desk: 'Demo went clean. 14-step script, zero crashes. Solid.' Riley's handwriting is tiny and precise, like her bug reports. That note might be the kindest thing Riley has ever written to me.)" },

        -- Choice 2
        { speaker = "po", expression = "neutral", text = "(The demo is done. Sprint one is in the books. How do I feel about what just happened?)",
            choices = {
                { text = "Relief. The product story landed. The demo showed real work. That's enough.", set = {pivot_relieved = true}, rel = {dev = 1, pm = 1} },
                { text = "Anger. At myself. I almost derailed demo day with a nephew's idea. I need to be better.", set = {pivot_angry = true}, rel = {qa = 1, dev = 1} },
                { text = "Pragmatic. The video seed is planted. Now I build the business case properly. Data, not nephews.", set = {pivot_pragmatic = true}, rel = {arch = 1, pm = 1} },
            }
        },

        { speaker = "po", expression = "neutral", text = "The product story landed. The vision made sense to real people in a real room. Not a mixer. A demo. That's the difference between product ownership and party conversation.", condition = "pivot_relieved" },
        { speaker = "po", expression = "neutral", text = "(Relief. The dangerous emotion for POs. Relief says 'enough.' Product ownership never says 'enough.' But today, enough is enough.)", condition = "pivot_relieved" },

        { speaker = "po", expression = "neutral", text = "I almost torpedoed demo day because a 22-year-old said 'TikTok' and the CEO nodded. That's not product strategy. That's political reflexes.", condition = "pivot_angry" },
        { speaker = "po", expression = "neutral", text = "(The anger is productive. It says: next time, validate the idea before bringing it to the team. Talk to users, not nephews. Build a business case, not an emergency meeting.)", condition = "pivot_angry" },

        { speaker = "po", expression = "neutral", text = "The video idea isn't dead. It's just unvalidated. Step one: user research. Step two: competitor analysis. Step three: business case. Step four: THEN the team conversation.", condition = "pivot_pragmatic" },
        { speaker = "po", expression = "neutral", text = "(Proper product process. The thing I skipped this morning because I was excited. The thing I won't skip next time because 23 bugs taught me what excitement costs.)", condition = "pivot_pragmatic" },

        { speaker = "po", expression = "neutral", text = "(Day 9. Demo day. The vision lives. The pivot waits. The PO learns. Slowly. Expensively. But learns.)" },

        { text = "", goto = "day10" }
    }
}
