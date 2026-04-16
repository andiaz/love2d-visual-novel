return {
    title = "Day 1 -- Monday",
    subtitle = "The Vision",
    narration = "Forty-seven slides. Six months of work. One conference room. Today is the day Chimera becomes real, if you can make them see it.",
    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- PRE-MEETING: Rehearsing at desk
        { speaker = "po", expression = "neutral", text = "(Okay. Conference room B. Projector's booked. Slides are loaded. Deep breath.)" },
        { speaker = "po", expression = "excited", text = "(Six months I've been pitching this. Six months of 'not yet' and 'maybe next quarter.')" },
        { speaker = "po", expression = "neutral", text = "(And now I have a team. A real, actual, cross-functional team. With a developer and everything.)" },
        { speaker = "po", expression = "excited", text = "(Slide one. 'The Problem.' No, wait. 'The Opportunity.' That sounds better. More positive.)" },
        { speaker = "po", expression = "neutral", text = "(It might be... a lot. I know it's a lot. But every slide MATTERS.)" },
        { speaker = "po", expression = "excited", text = "(Okay, maybe slide 31 about competitive landscape could be cut. And 32. And... no. They stay.)" },
        { speaker = "po", expression = "neutral", text = "(What if they don't get it? What if they sit there with that face, the polite face, the one that means 'this is a wiki.')" },
        { speaker = "po", expression = "excited", text = "(It's NOT a wiki. It's a knowledge-sharing platform that... okay, I need to not say that out loud. It sounds like a wiki.)" },
        { speaker = "po", expression = "neutral", text = "(The architect, Casey. Never met them. Architects either love vision or hate it. No in-between.)" },
        { speaker = "po", expression = "neutral", text = "(Sam, the developer. Developers want specs, not slides. I need to win Sam over fast.)" },
        { speaker = "po", expression = "excited", text = "(And Riley, QA. QA people ask the hard questions. The ones you don't want asked on day one.)" },
        { speaker = "po", expression = "neutral", text = "(Alex from UX could be my biggest ally. If the designer believes in it, the team follows.)" },
        { speaker = "po", expression = "excited", text = "(Jordan said they'd run the meeting. Good. I just have to deliver the vision. That's my job. That's what I'm good at.)" },
        { speaker = "po", expression = "neutral", text = "(One more run-through. Slide one. 'The Opportunity.' Slide two. 'The User.' Slide three...)" },

        -- KICKOFF MEETING
        { speaker = "pm", expression = "cheerful", text = "Good morning! Great to have everyone together. Project Chimera -- here we go!", bg = "meeting_room" },
        { speaker = "pm", expression = "cheerful", text = "I'm Jordan, your PM. Quick intros first, name and role." },
        { speaker = "po", expression = "neutral", text = "(Here we go. Read the room. Who's engaged, who's checking their phone.)" },
        { speaker = "ux", expression = "neutral", text = "Alex, UX. Glad to be here." },
        { speaker = "po", expression = "excited", text = "(Alex seems genuine. Good energy. Potential ally.)" },
        { speaker = "dev", expression = "neutral", text = "Sam, developer. I write the code that makes the things do the stuff." },
        { speaker = "po", expression = "neutral", text = "(Casual. Confident. Either very good or very checked out. Need to figure out which.)" },
        { speaker = "qa", expression = "neutral", text = "Riley, QA. I break things." },
        { speaker = "po", expression = "neutral", text = "(Short and sharp. Riley's already sizing up the room. I can tell.)" },
        { speaker = "arch", expression = "neutral", text = "Casey, Architecture." },
        { speaker = "po", expression = "neutral", text = "(Two words. Architects who say two words are either brilliant or bored. Possibly both.)" },
        { speaker = "pm", expression = "cheerful", text = "And our visionary, Priya, take it away." },
        { speaker = "po", expression = "excited", text = "(This is it. Don't rush. Don't ramble. Make them see what you see.)" },

        -- THE CHOICE
        { speaker = "po", expression = "excited", text = "Hi everyone! I'm Priya, the Product Owner. I've been living with this idea for six months, and I am so excited to finally have a team.",
            choices = {
                { text = "Keep it tight. Elevator pitch. Get them excited fast.", set = {po_pitched_short = true}, rel = {pm = 1, dev = 1} },
                { text = "Walk through the full deck. Every slide. They need the complete picture.", set = {po_pitched_full = true}, rel = {dev = -2, qa = -1} },
                { text = "Forget the slides. Tell them the story of why this matters.", set = {po_told_story = true}, rel = {ux = 2, qa = 1} },
            }
        },

        -- SHORT PITCH PATH
        { speaker = "po", expression = "excited", text = "One sentence: Chimera is a platform that makes companies actually share what they know. Not store it. Share it.", condition = "po_pitched_short" },
        { speaker = "po", expression = "excited", text = "The average employee spends 20% of their week looking for information that already exists somewhere in the company.", condition = "po_pitched_short" },
        { speaker = "po", expression = "excited", text = "We fix that. Web and mobile. Smart search, context-aware recommendations, and a contribution model that actually rewards sharing.", condition = "po_pitched_short" },
        { speaker = "dev", expression = "neutral", text = "Okay. That I can work with.", condition = "po_pitched_short" },
        { speaker = "po", expression = "excited", text = "(Short and clean. Sam's nodding. That's good. That's really good.)", condition = "po_pitched_short" },
        { speaker = "arch", expression = "neutral", text = "Smart search and recommendations. That implies a data layer with some weight to it.", condition = "po_pitched_short" },
        { speaker = "po", expression = "neutral", text = "(Casey's already thinking about systems. Good, that means the idea landed.)", condition = "po_pitched_short" },

        -- FULL DECK PATH
        { speaker = "po", expression = "excited", text = "I have a deck that covers the full vision. Let's start at the beginning.", condition = "po_pitched_full" },
        { speaker = "po", expression = "excited", text = "Slide one: the problem space. Knowledge silos cost enterprises $47 billion annually...", condition = "po_pitched_full" },
        { speaker = "po", expression = "excited", text = "Slide seven: user personas. We've got the Knowledge Seeker, the Reluctant Expert, and the Connector...", condition = "po_pitched_full" },
        { speaker = "dev", expression = "frustrated", text = "(We're on slide seven. There are forty more. I am going to die in this room.)", condition = "po_pitched_full" },
        { speaker = "po", expression = "excited", text = "Slide fifteen: the competitive landscape. Nobody is doing what we're doing...", condition = "po_pitched_full" },
        { speaker = "qa", expression = "deadpan", text = "(She said 'nobody is doing this' on slide fifteen. That's either visionary or a red flag.)", condition = "po_pitched_full" },
        { speaker = "po", expression = "defensive", text = "(They're fidgeting. Sam's looking at the table. Push through. They'll understand when they see the whole picture.)", condition = "po_pitched_full" },

        -- STORY PATH
        { speaker = "po", expression = "neutral", text = "You know what, forget the deck for a second. Let me tell you why I care about this.", condition = "po_told_story" },
        { speaker = "po", expression = "neutral", text = "My last company had a senior engineer named David. Fifteen years of institutional knowledge. He knew where every body was buried.", condition = "po_told_story" },
        { speaker = "po", expression = "neutral", text = "David retired. And within three months, two major systems broke because nobody knew how they worked. Nobody had written it down.", condition = "po_told_story" },
        { speaker = "po", expression = "excited", text = "Chimera exists so that never happens again. Not with docs nobody reads, but with a living system that makes sharing the path of least resistance.", condition = "po_told_story" },
        { speaker = "ux", expression = "neutral", text = "Yeah. That hits.", condition = "po_told_story" },
        { speaker = "qa", expression = "neutral", text = "I've seen that. Good framing.", condition = "po_told_story" },
        { speaker = "po", expression = "excited", text = "(Got them. The story always works better than the slides.)", condition = "po_told_story" },

        -- CONVERGENCE: Scope reveal
        { speaker = "arch", expression = "neutral", text = "Quick scoping question. Web, mobile, both?" },
        { speaker = "pm", expression = "cheerful", text = "Both! MVP in 6 weeks." },
        { speaker = "dev", expression = "frustrated", text = "Six weeks. Web AND mobile." },
        { speaker = "qa", expression = "deadpan", text = "Define 'MVP.'" },
        { speaker = "po", expression = "excited", text = "Core search, user profiles, and the contribution flow. That's the MVP. Everything else is phase two." },
        { speaker = "po", expression = "neutral", text = "(Keep it scoped. Don't mention the recommendation engine yet. Don't mention gamification. Small bites.)" },
        { speaker = "arch", expression = "concerned", text = "Two platforms in six weeks is tight. We'll need a shared API layer at minimum." },
        { speaker = "po", expression = "excited", text = "Absolutely. I trust this team to figure out the how. I'm here for the what and the why." },
        { speaker = "dev", expression = "neutral", text = "(That's either empowering or a warning sign. Too early to tell.)" },
        { speaker = "pm", expression = "cheerful", text = "Alright team! Standup tomorrow, 9 AM." },
        { speaker = "po", expression = "excited", text = "This is going to be great. I can feel it." },

        -- POST-MEETING: Back at desk
        { speaker = "po", expression = "neutral", text = "(Back at my desk. That went... okay? I think it went okay.)", bg = "office_day" },
        { speaker = "po", expression = "neutral", text = "(Sam didn't say much after the scope reveal. Is that good or bad? Developers are hard to read.)" },
        { speaker = "po", expression = "excited", text = "(Alex seemed engaged though. And Casey was already thinking about architecture. That's a good sign.)" },
        { speaker = "po", expression = "neutral", text = "(Riley. Riley is going to be the one asking the questions I don't have answers to yet. I need to be ready.)" },
        { speaker = "po", expression = "neutral", text = "(Let me check Slack. Did anyone look at the deck I shared last night...)" },
        { speaker = "po", expression = "neutral", text = "(Zero reactions. Zero threads. Just Jordan's thumbs up from yesterday. Cool. Cool cool cool.)" },
        { speaker = "po", expression = "excited", text = "(It's fine. Nobody reads pre-read decks. They'll engage once the work starts.)" },
        { speaker = "po", expression = "neutral", text = "(Six months to get this greenlit. Six weeks to prove it works. No pressure.)" },
        { speaker = "po", expression = "excited", text = "(Tomorrow's the first standup. I should prep some user stories tonight. Get ahead of the 'what are we building' question.)" },
        { speaker = "po", expression = "neutral", text = "(This is my shot. If Chimera works, it changes everything. If it doesn't...)" },
        { speaker = "po", expression = "excited", text = "(It's going to work. It has to work.)" },

        { text = "", goto = "day2" }
    }
}
