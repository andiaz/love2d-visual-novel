return {
    title = "Day 9 -- Friday",
    subtitle = "The Pivot",
    narration = "Demo day. Then Priya called an emergency meeting. The CEO's nephew. You can hear the test plan crying from your laptop.",

    bg = "office_day",
    bgm = "tension",

    dialogue = {
        { speaker = "qa", expression = "deadpan", text = "Friday morning. Demo day. I had a feeling. I always have a feeling. The feeling is always right." },
        { speaker = "qa", expression = "neutral", text = "(4:47 AM. The calendar notification. 'EMERGENCY MEETING - 8:00 AM.' Emergency meetings on demo day are never good. Emergency meetings are never good period.)" },
        { speaker = "qa", expression = "deadpan", text = "(I spent last night triaging 23 bugs. I have the demo script memorized. I know which buttons to click and which ones to avoid. I am prepared. The universe does not care that I am prepared.)" },

        -- Emergency meeting
        { speaker = "pm", expression = "neutral", text = "Team, emergency meeting. Priya has an update.", bg = "meeting_room" },

        { speaker = "po", expression = "excited", text = "So I talked to the CEO's nephew at the mixer last night." },
        { speaker = "qa", expression = "deadpan", text = "(Of course she did.)" },
        { speaker = "po", expression = "excited", text = "He's 22 and he had INCREDIBLE insights about what Gen Z wants from knowledge platforms." },
        { speaker = "qa", expression = "deadpan", text = "I'm afraid to ask." },
        { speaker = "po", expression = "excited", text = "Short-form video! TikTok for internal communications!" },
        { speaker = "dev", expression = "frustrated", text = "We're pivoting to TikTok. Based on the CEO's nephew. ON DEMO DAY." },
        { speaker = "po", expression = "excited", text = "Not pivoting! Enhancing!" },
        { speaker = "qa", expression = "deadpan", text = "('Enhancing.' The product word for 'I'm about to ruin your test plan.')" },

        { speaker = "arch", expression = "concerned", text = "Video hosting. Transcoding. CDN. Recommendation algorithm. Do you want me to draw--" },
        { speaker = "dev", expression = "frustrated", text = "Don't. Just don't draw anything." },

        { speaker = "po", expression = "excited", text = "Marcus said the under-30 demographic would adopt it overnight!" },
        { speaker = "qa", expression = "deadpan", text = "How many people in that demographic did you interview?" },
        { speaker = "po", expression = "excited", text = "Marcus represents--" },
        { speaker = "qa", expression = "deadpan", text = "One. You interviewed one person. At a party. Who is related to the CEO. That is not a sample size. That is a family dinner." },
        { speaker = "dev", expression = "smiling", text = "(Riley just said what everyone was thinking. She always does.)" },

        { speaker = "qa", expression = "deadpan", text = "(Test cases I would need to add for video: upload validation, format conversion, playback on 14 browsers, streaming latency, bandwidth throttling, accessibility captioning, concurrent viewers, storage limits, thumbnail generation, video search indexing.)" },
        { speaker = "qa", expression = "neutral", text = "(That's 84 new test cases minimum. Time available: 4 hours. Math: absolutely not.)" },

        { speaker = "pm", expression = "stressed", text = "Demo is in four hours, Priya. We can't add video." },
        { speaker = "po", expression = "neutral", text = "Not for the demo! For the roadmap! I just want to mention it." },
        { speaker = "qa", expression = "smirk", text = "Mention a feature we haven't built. What could go wrong." },
        { speaker = "qa", expression = "deadpan", text = "(I know what could go wrong. Leadership hears 'video.' Leadership asks 'when?' Priya says 'next sprint.' I get 84 new test cases and zero new tools to test them with.)" },

        { speaker = "pm", expression = "neutral", text = "Riley, you're the one who has to test this in two weeks if Priya gets her way. What's QA's call?" },

        { speaker = "qa", expression = "neutral", text = "(QA is finally being asked. Three answers.)",
            choices = {
                { text = "Let her have it. One slide. I'll add the test cases later. (I will hate later me.)", set = {supported_pivot = true}, rel = {po = 1, dev = -2, qa = -1} },
                { text = "Hard no. We demo what's tested. Anything else is leadership lying to themselves.", set = {resisted_pivot = true}, rel = {dev = 2, qa = 2, ux = 1, pm = -1} },
                { text = "Soften it. 'Exploring multimedia.' One sentence. No mockups. No commitments. Nothing for me to test.", set = {negotiated_pivot = true}, rel = {pm = 2, dev = 1} },
            }
        },

        -- Support
        { speaker = "qa", expression = "deadpan", text = "Fine. One slide. I'll add the test cases when the time comes. Future Riley will hate present Riley.", condition = "supported_pivot" },
        { speaker = "po", expression = "excited", text = "Yes! Thank you Riley!", condition = "supported_pivot" },
        { speaker = "qa", expression = "deadpan", text = "(I just signed a check that bounces in two weeks. The test plan is already 240 cases. Adding video makes it 324. I don't have the infrastructure for 324.)", condition = "supported_pivot" },
        { speaker = "qa", expression = "neutral", text = "(But sometimes you let the boulder roll because stopping it costs more energy than riding it downhill.)", condition = "supported_pivot" },

        -- Resist
        { speaker = "qa", expression = "deadpan", text = "We demo what's tested. Anything else is leadership lying to themselves. I am not pasting fake test results into a slide.", condition = "resisted_pivot" },
        { speaker = "qa", expression = "neutral", text = "I spent all night triaging 23 bugs so this demo would work. I will not stand here and watch us promise features that would create 84 more.", condition = "resisted_pivot" },
        { speaker = "dev", expression = "smiling", text = "Riley wins. Riley always wins.", condition = "resisted_pivot" },
        { speaker = "po", expression = "defensive", text = "But--", condition = "resisted_pivot" },
        { speaker = "qa", expression = "deadpan", text = "Priya. No.", condition = "resisted_pivot" },
        { speaker = "qa", expression = "neutral", text = "(The test plan is sacred. The test plan is the only thing between this team and a production disaster. I will protect it.)", condition = "resisted_pivot" },

        -- Negotiate
        { speaker = "qa", expression = "neutral", text = "Soften it. 'Exploring multimedia.' One sentence in the Q&A. No mockups. No commitments. Nothing I have to test on Monday.", condition = "negotiated_pivot" },
        { speaker = "pm", expression = "neutral", text = "That's the right framing. Done.", condition = "negotiated_pivot" },
        { speaker = "dev", expression = "smiling", text = "'Exploring' is a polite way of saying 'we have nothing to test.'", condition = "negotiated_pivot" },
        { speaker = "qa", expression = "deadpan", text = "('Exploring' means I don't write test cases for it. That's the deal. 'Exploring' means it doesn't exist in my spreadsheet.)", condition = "negotiated_pivot" },

        -- Callback
        { speaker = "po", expression = "defensive", text = "But the market is shifting! We talked about this during the scope discussions--", condition = "fought_scope" },
        { speaker = "qa", expression = "deadpan", text = "You pushed for more scope then too, Priya. And yesterday I showed you 23 bugs from it.", condition = "fought_scope" },

        -- The demo
        { speaker = "pm", expression = "neutral", text = "It's time. Everyone ready?" },
        { speaker = "qa", expression = "smirk", text = "I have memorized which buttons not to click. I will whisper-yell from the back row when needed." },
        { speaker = "qa", expression = "deadpan", text = "(The demo script. 14 steps. No deviations. If Jordan goes off-script, I will physically walk to the laptop and close the browser.)" },
        { speaker = "qa", expression = "neutral", text = "(Step 1: open the feed. Step 2: scroll slowly. Step 3: click create. Step 4: type WITHOUT emojis. Step 5: save WITHOUT testing auto-save speed...)" },

        -- Post-demo
        { speaker = "qa", expression = "deadpan", text = "(The first demo. Not a disaster. Not a triumph. Leadership wants a 'fuller version' in two more weeks. Of course they do.)", bg = "break_room" },
        { speaker = "qa", expression = "neutral", text = "(The test plan survived. The bugs we hid stayed hidden. The demo script worked. That's QA winning. It looks like nothing happening. That's how you know it worked.)" },
        { speaker = "qa", expression = "deadpan", text = "(But the video conversation isn't dead. It's in the minutes. It's in the roadmap. It's coming for my test plan like a freight train.)" },
        { speaker = "qa", expression = "neutral", text = "(After the demo, Alex found me in the break room. 'Your demo script was perfect, Riley. Not one wrong click.' I reply: 'That's because I tested every click path six times.' Alex smiles. Alex understands obsession.)" },
        { speaker = "qa", expression = "deadpan", text = "(Casey stopped by my desk. 'The load held during the demo. Your smoke test caught the staging issue early enough for me to fix it.' Casey does not give compliments. He gives architectural assessments. That was both.)" },

        -- Choice 2
        { speaker = "qa", expression = "neutral", text = "(The demo is over. The adrenaline is fading. How do I process this?)",
            choices = {
                { text = "Relief. The test plan held. The demo worked. I can breathe.", set = {pivot_relieved = true}, rel = {pm = 1, dev = 1} },
                { text = "Anger. We almost demoed vaporware. One slide away from promising what we can't test.", set = {pivot_angry = true}, rel = {po = -1, qa = 1} },
                { text = "Pragmatic. The pivot is coming whether I like it or not. Time to start planning the test infrastructure.", set = {pivot_pragmatic = true}, rel = {arch = 1, pm = 1} },
            }
        },

        { speaker = "qa", expression = "neutral", text = "The test plan held. 240 cases. The demo followed the script. Nobody clicked the wrong button. That's a win. I'll take the win.", condition = "pivot_relieved" },
        { speaker = "qa", expression = "smirk", text = "(A win that looks like 'nothing went wrong.' The quietest kind of victory. The QA kind.)", condition = "pivot_relieved" },

        { speaker = "qa", expression = "deadpan", text = "We were one Priya slide away from promising video to leadership. One slide away from 84 untested features in front of the director.", condition = "pivot_angry" },
        { speaker = "qa", expression = "neutral", text = "(The anger is useful. The anger reminds me to push back harder next time. The test plan is not negotiable.)", condition = "pivot_angry" },

        { speaker = "qa", expression = "neutral", text = "Video is coming. I can feel it. Time to research video testing frameworks. Time to scope the infrastructure. Time to be ready before they ask.", condition = "pivot_pragmatic" },
        { speaker = "qa", expression = "deadpan", text = "(The best QA is the QA that's already planned for the feature nobody has built yet. Proactive paranoia. My specialty.)", condition = "pivot_pragmatic" },

        { speaker = "qa", expression = "deadpan", text = "(Day 9. Demo day. The test plan survived. The pivot is circling. Sprint two starts Monday. I'll be ready. I'm always ready. That's the job.)" },

        { text = "", goto = "day10" }
    }
}
