return {
    title = "Day 9 -- Friday",
    subtitle = "The Pivot",
    narration = "Demo day. But first -- an emergency meeting. Priya met the CEO's nephew at the company mixer.",

    bg = "office_day",
    bgm = "tension",

    dialogue = {
        { speaker = "dev", expression = "tired", text = "Friday morning. Demo day. Four hours of sleep. Two hours of fixes left to land. Then this." },
        { speaker = "dev", expression = "tired", text = "(The emergency meeting notification woke me up at 5 AM. My phone buzzed. I checked Slack. I saw Priya's name. I felt the dread in my stomach before my brain processed the words.)" },
        { speaker = "dev", expression = "tired", text = "(I spent all night fixing bugs. The XSS is patched. The debounce is in. The null pointer is handled. Fourteen bugs fixed. Nine to go. And now this.)" },

        -- Emergency meeting
        { speaker = "pm", expression = "neutral", text = "Team, emergency meeting. Priya has an update.", bg = "meeting_room" },

        { speaker = "po", expression = "excited", text = "Last night at the mixer I got talking to the CEO's nephew." },
        { speaker = "dev", expression = "frustrated", text = "(Oh no.)" },
        { speaker = "po", expression = "excited", text = "He's 22 and he had INCREDIBLE insights about what Gen Z wants from knowledge platforms." },
        { speaker = "qa", expression = "neutral", text = "I'm afraid to ask." },
        { speaker = "po", expression = "excited", text = "Short-form video content. Stories. Think TikTok for internal communications!" },
        { speaker = "dev", expression = "frustrated", text = "We are pivoting to TikTok. Based on the CEO's nephew. ON DEMO DAY." },
        { speaker = "po", expression = "excited", text = "Not pivoting! Enhancing! What if knowledge articles could be video stories?" },

        { speaker = "arch", expression = "concerned", text = "Video hosting. Transcoding. Recommendation algorithm. CDN costs. Do you want me to draw--" },
        { speaker = "dev", expression = "frustrated", text = "Don't. Just... don't draw anything." },

        { speaker = "po", expression = "excited", text = "Marcus said the entire under-30 workforce would use it. The CEO was standing RIGHT THERE. Nodding!" },
        { speaker = "dev", expression = "frustrated", text = "(The CEO nods at everything. I've seen him nod at a vending machine. A nod is not a product requirement.)" },
        { speaker = "qa", expression = "deadpan", text = "How many of the under-30 workforce have we actually talked to?" },
        { speaker = "po", expression = "excited", text = "Marcus represents them!" },
        { speaker = "dev", expression = "frustrated", text = "Marcus represents Marcus." },

        -- Calculating the cost
        { speaker = "dev", expression = "tired", text = "(I'm doing the math in my head. Video upload: new API endpoints, file validation, size limits. Transcoding: background job queue, FFmpeg integration, format conversion. Streaming: adaptive bitrate, CDN configuration, caching layer.)" },
        { speaker = "dev", expression = "frustrated", text = "(That's three new services. A message queue. A storage backend. A CDN contract. Minimum six weeks for a proof of concept. And Priya wants to mention it. Today. In front of leadership.)" },
        { speaker = "dev", expression = "tired", text = "(Six weeks of work. Described in one sentence. 'TikTok for internal communications.' One sentence that costs six engineer-weeks.)" },

        { speaker = "pm", expression = "stressed", text = "The demo is in four hours, Priya. We can't add video." },
        { speaker = "po", expression = "neutral", text = "Not for the demo! For the roadmap! I just want to mention it during the presentation." },
        { speaker = "qa", expression = "smirk", text = "Mention a feature we haven't built, designed, or specced. What could go wrong?" },

        { speaker = "dev", expression = "tired", text = "(I know what happens. Leadership hears 'video.' Leadership says 'when?' Priya says 'next sprint.' I spend the next two weeks building a transcoding pipeline instead of fixing the 9 bugs I didn't get to last night.)" },

        { speaker = "pm", expression = "neutral", text = "Sam, you're presenting the technical walkthrough. What do we do?" },

        { speaker = "dev", expression = "tired", text = "(I have four hours. I have to pick.)",
            choices = {
                { text = "Fine. I'll mention 'video roadmap' in the technical Q&A.", set = {supported_pivot = true}, rel = {po = 2, pm = 1, ux = -1, qa = -2} },
                { text = "No. I will not stand in front of leadership and pitch a feature that doesn't exist.", set = {resisted_pivot = true}, rel = {po = -2, ux = 2, qa = 2, pm = -1} },
                { text = "We mention it as 'something we're exploring.' No promises. No mockups.", set = {negotiated_pivot = true}, rel = {po = 1, pm = 2, ux = 1, qa = 0} },
            }
        },

        -- Support
        { speaker = "po", expression = "excited", text = "Yes! I'll send you talking points!", condition = "supported_pivot" },
        { speaker = "dev", expression = "tired", text = "(I am demoing a dream of a product that does not exist. The codebase is going to hate me. I already hate me.)", condition = "supported_pivot" },
        { speaker = "dev", expression = "frustrated", text = "(Talking points. For a feature with no code, no architecture, no tests, no design. Just talking points and a nephew.)", condition = "supported_pivot" },

        -- Resist
        { speaker = "po", expression = "defensive", text = "But the CEO's nephew--", condition = "resisted_pivot" },
        { speaker = "dev", expression = "frustrated", text = "Is not a stakeholder. Is not a user. Is 22 and exists.", condition = "resisted_pivot" },
        { speaker = "dev", expression = "frustrated", text = "I spent all night fixing 14 bugs so this demo would work. I will not walk on stage and promise six weeks of engineering that nobody has scoped, architected, or tested.", condition = "resisted_pivot" },
        { speaker = "ux", expression = "excited", text = "Sam's right. We demo what we have.", condition = "resisted_pivot" },
        { speaker = "qa", expression = "smirk", text = "I'm buying you coffee after this.", condition = "resisted_pivot" },

        -- Negotiate
        { speaker = "pm", expression = "neutral", text = "Good. One line. 'We're exploring multimedia.' That's the deal.", condition = "negotiated_pivot" },
        { speaker = "po", expression = "neutral", text = "Exploring... I can live with exploring.", condition = "negotiated_pivot" },
        { speaker = "dev", expression = "smiling", text = "'Exploring.' The professional way of saying we haven't written a single line.", condition = "negotiated_pivot" },
        { speaker = "dev", expression = "tired", text = "('Exploring' means I don't write code for it. That's the deal. Exploring is free. Building is six weeks.)", condition = "negotiated_pivot" },

        -- Callback
        { speaker = "po", expression = "defensive", text = "We need to think bigger! The scope discussions last week proved--", condition = "fought_scope" },
        { speaker = "dev", expression = "frustrated", text = "The scope discussions last week created six of yesterday's 23 bugs, Priya. Bigger is not better. Bigger is buggier.", condition = "fought_scope" },

        -- The demo
        { speaker = "pm", expression = "neutral", text = "It's time. Everyone ready?" },
        { speaker = "dev", expression = "tired", text = "Define 'ready.'" },
        { speaker = "qa", expression = "smirk", text = "I've memorized which buttons not to click." },
        { speaker = "dev", expression = "neutral", text = "Let's do this." },
        { speaker = "dev", expression = "tired", text = "(The technical walkthrough. I know which features work. I know which ones don't. I know exactly how to demo a product that's 60% finished and make it look 85%.)" },

        -- Post-demo
        { speaker = "dev", expression = "tired", text = "(The first demo. Not a disaster. Not a triumph. A demo.)", bg = "break_room" },
        { speaker = "dev", expression = "tired", text = "(Leadership wants a 'fuller version' in two more weeks. Of course they do. 'Fuller' means 'more features.' More features means more bugs. More bugs means more nights like last night.)" },
        { speaker = "dev", expression = "neutral", text = "(But the code held. The fixes I wrote at 2 AM worked. The XSS is gone. The debounce is live. The null pointer is handled. Fourteen bugs, dead. That's not nothing.)" },
        { speaker = "dev", expression = "tired", text = "(During the demo, the search took four seconds to return results. Nobody in leadership noticed. I noticed. Four seconds is a lifetime when you know it should be four hundred milliseconds.)" },
        { speaker = "dev", expression = "neutral", text = "(The CEO asked one question: 'Can it do video?' Priya beamed. I kept my face neutral. The poker face you develop after enough demos is its own kind of technical skill.)" },
        { speaker = "dev", expression = "tired", text = "(I watched the team during the Q&A. Jordan handled the timeline question without flinching. Casey stopped himself from saying 'microservices' out loud. Riley sat in the back row writing notes. Alex watched the audience, not the screen. Everyone had a role. Even the silent ones.)" },
        { speaker = "dev", expression = "neutral", text = "(After the room cleared, I checked the staging server. Still running. The uptime counter said 4 days, 7 hours. Four days without a crash. That is the longest streak this project has had.)" },
        { speaker = "dev", expression = "tired", text = "(Alex found me after the demo. 'Your error states are better than mine.' I laughed. Alex was not laughing. Alex was being sincere. Designers are strange and generous people.)", condition = "paired_with_dev" },
        { speaker = "dev", expression = "neutral", text = "(Riley handed me a printout. A list of the nine bugs I didn't fix. Circled. Prioritized. 'For Monday,' she said. Even on demo day, Riley is already living in next week.)" },

        -- Choice 2
        { speaker = "dev", expression = "tired", text = "(The demo is done. The adrenaline is wearing off. What am I feeling?)",
            choices = {
                { text = "Relief. The code held. The fixes worked. I can sleep.", set = {pivot_relieved = true}, rel = {qa = 1, pm = 1} },
                { text = "Anger. We almost promised video. Six weeks of work, pitched as one slide.", set = {pivot_angry = true}, rel = {po = -1, arch = 1} },
                { text = "Pragmatic. The pivot is coming. Time to start estimating the refactoring cost.", set = {pivot_pragmatic = true}, rel = {arch = 1, pm = 1} },
            }
        },

        { speaker = "dev", expression = "tired", text = "The code held. Fourteen bugs fixed overnight. The demo worked. I'm going to sleep for sixteen hours.", condition = "pivot_relieved" },
        { speaker = "dev", expression = "smiling", text = "(Sleep. The most underrated feature in software engineering.)", condition = "pivot_relieved" },

        { speaker = "dev", expression = "frustrated", text = "One slide. One nephew. Six weeks of engineering, reduced to a talking point. The codebase doesn't care about talking points. The codebase cares about pull requests.", condition = "pivot_angry" },
        { speaker = "dev", expression = "tired", text = "(The anger is useful. The anger says 'scope the work before you promise the work.' The anger is engineering wisdom wearing emotional clothing.)", condition = "pivot_angry" },

        { speaker = "dev", expression = "neutral", text = "Video is coming. I can feel it. Time to estimate. Transcoding service: two weeks. Upload API: one week. Streaming layer: two weeks. CDN integration: one week. Total: six weeks minimum.", condition = "pivot_pragmatic" },
        { speaker = "dev", expression = "tired", text = "(Six weeks. Written down. Documented. When Priya asks 'how long?' I'll have a number. A real number. Not a hope.)", condition = "pivot_pragmatic" },

        { speaker = "dev", expression = "tired", text = "(Day 9. Demo day. The code survived. Leadership wants more. The pivot looms. Sprint two begins Monday. I need sleep before Monday.)" },

        { text = "", goto = "day10" }
    }
}
