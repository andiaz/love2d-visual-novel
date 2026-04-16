return {
    title = "Day 9 -- Friday",
    subtitle = "The Pivot",
    narration = "Demo day. But first, an emergency meeting. Priya met the CEO's nephew.",

    bg = "office_day",
    bgm = "tension",

    dialogue = {
        { speaker = "ux", expression = "neutral", text = "Friday morning. Demo day. The designs are locked. The prototype is real. And then the calendar notification." },
        { speaker = "ux", expression = "frustrated", text = "('EMERGENCY MEETING - 8:00 AM.' Emergency meetings on demo day. The two words that should never be in the same sentence.)" },
        { speaker = "ux", expression = "neutral", text = "(I spent last night fixing accessibility issues. The contrast is better. The tab order is sane. The modal has an escape key. Small repairs. Necessary repairs.)" },

        -- Emergency meeting
        { speaker = "pm", expression = "neutral", text = "Team, I've called this meeting because... well, Priya has an update.", bg = "meeting_room" },

        { speaker = "po", expression = "excited", text = "So I talked to the CEO's nephew at the company mixer last night." },
        { speaker = "dev", expression = "neutral", text = "The CEO's nephew. Of course." },
        { speaker = "po", expression = "excited", text = "He's 22 and he had some INCREDIBLE insights about what Gen Z wants from knowledge platforms." },
        { speaker = "qa", expression = "neutral", text = "I'm afraid to ask." },
        { speaker = "po", expression = "excited", text = "Short-form video content. Stories. Think TikTok for internal communications!" },
        { speaker = "dev", expression = "frustrated", text = "We're pivoting to TikTok. Based on the CEO's nephew. On demo day." },
        { speaker = "po", expression = "excited", text = "Not pivoting! Enhancing! What if knowledge articles could be video stories?" },

        { speaker = "arch", expression = "concerned", text = "Video hosting. Transcoding. A recommendation algorithm. CDN costs. Do you want me to draw--" },
        { speaker = "dev", expression = "frustrated", text = "Don't. Just... don't draw anything." },

        { speaker = "qa", expression = "deadpan", text = "(Video. Upload validation, format conversion, playback testing on fourteen browsers. I can already feel my spreadsheet growing.)" },
        { speaker = "pm", expression = "stressed", text = "Let's slow down. Priya, when you say 'video' -- do you mean the ability to upload video, or full TikTok-style short-form content creation?" },
        { speaker = "po", expression = "excited", text = "Both! Eventually!" },
        { speaker = "dev", expression = "frustrated", text = "'Eventually' is doing all the heavy lifting in that sentence." },
        { speaker = "po", expression = "excited", text = "Marcus said the whole office under 30 would use it. The CEO was RIGHT THERE nodding." },
        { speaker = "ux", expression = "thinking", text = "(Marcus. 22. Business major. Has never conducted a user interview. Has never seen a usability test. Has never watched a user struggle with a search bar for four minutes. But the CEO nodded.)" },

        -- Design implications
        { speaker = "ux", expression = "thinking", text = "(Video. Short-form video. The design implications are enormous.)" },
        { speaker = "ux", expression = "thinking", text = "(New UI patterns: video player controls, timeline scrubber, thumbnail previews. New screens: upload flow, recording interface, video feed. New interactions: swipe between videos, autoplay behavior, caption overlay.)" },
        { speaker = "ux", expression = "frustrated", text = "(I just spent three days on accessibility for text-based content. Video accessibility is a completely different discipline. Captions. Audio descriptions. Player keyboard controls. Seizure-safe autoplay settings.)" },
        { speaker = "ux", expression = "thinking", text = "(And the design system I built? The typography scale, the card layouts, the content hierarchy -- all of it assumes text and images. Video breaks every assumption.)" },

        -- Jordan panics
        { speaker = "pm", expression = "stressed", text = "The demo is in four hours, Priya. We can't add video." },
        { speaker = "po", expression = "neutral", text = "Not for the demo! For the roadmap! I just want to mention it during the presentation." },
        { speaker = "qa", expression = "smirk", text = "Mention a feature we haven't built, designed, or specced? What could go wrong?" },

        { speaker = "ux", expression = "thinking", text = "(Mention it. 'Just mention it.' But I know what happens when leadership sees a design direction. They expect it. They ask for timelines. They tell their bosses. One mention becomes a commitment.)" },

        -- The choice
        { speaker = "pm", expression = "neutral", text = "Alex, you're presenting the design story in the demo. What do we do about Priya's... enhancement?" },

        { speaker = "ux", expression = "neutral", text = "The biggest crossroads yet.",
            choices = {
                { text = "Fine, I'll add a 'future vision' slide about video.", set = {supported_pivot = true}, rel = {po = 2, pm = 1, dev = -2, qa = -2} },
                { text = "Absolutely not. We demo what we built, nothing more.", set = {resisted_pivot = true}, rel = {po = -2, dev = 2, qa = 2, pm = -1} },
                { text = "We mention it as 'exploring' -- no promises, no mockups.", set = {negotiated_pivot = true}, rel = {po = 1, pm = 2, dev = 1, qa = 0} },
            }
        },

        -- Support pivot
        { speaker = "po", expression = "excited", text = "Yes! I'll send you some inspiration screenshots right now!", condition = "supported_pivot" },
        { speaker = "dev", expression = "frustrated", text = "We're building a demo of a dream of a product that doesn't exist.", condition = "supported_pivot" },
        { speaker = "ux", expression = "neutral", text = "(This is going to come back to haunt us. A 'future vision' slide is a promise in a pretty frame. And I'll be the one who has to design it for real.)", condition = "supported_pivot" },
        { speaker = "ux", expression = "thinking", text = "(One slide. I can make one slide. But that slide will become a Figma file. The Figma file will become a design spec. The design spec will become my next three weeks.)", condition = "supported_pivot" },

        -- Resist pivot
        { speaker = "po", expression = "defensive", text = "But the CEO's nephew--", condition = "resisted_pivot" },
        { speaker = "ux", expression = "neutral", text = "Is not our user. We demo reality. Leadership needs to see what we actually have, not what a 22-year-old imagined at a mixer.", condition = "resisted_pivot" },
        { speaker = "dev", expression = "neutral", text = "Finally. Someone said it.", condition = "resisted_pivot" },
        { speaker = "qa", expression = "smirk", text = "I'm buying Alex coffee after this.", condition = "resisted_pivot" },
        { speaker = "ux", expression = "thinking", text = "(The design story we built is real. It's grounded in the work we did. It has accessibility fixes I made at midnight. I will not undermine it with a fantasy slide.)", condition = "resisted_pivot" },

        -- Negotiate pivot
        { speaker = "pm", expression = "neutral", text = "Good compromise. One line in the Q&A at most. 'We're exploring multimedia.'", condition = "negotiated_pivot" },
        { speaker = "po", expression = "neutral", text = "Exploring... I can live with exploring.", condition = "negotiated_pivot" },
        { speaker = "dev", expression = "smiling", text = "'Exploring.' That's a nice way to say we have zero lines of code for it.", condition = "negotiated_pivot" },
        { speaker = "ux", expression = "neutral", text = "('Exploring' means no mockups. No Figma files. No design specs. Exploring is a word, not a wireframe.)", condition = "negotiated_pivot" },

        -- Callbacks
        { speaker = "qa", expression = "neutral", text = "You called this on day one, Alex. You said we should talk to actual users before designing anything.", condition = "wants_research" },
        { speaker = "ux", expression = "thinking", text = "(Riley remembered. The research argument from day one. If we'd talked to users first, we'd know whether they want video. Instead, we're pivoting based on a nephew.)", condition = "wants_research" },

        { speaker = "po", expression = "defensive", text = "The scope expansion we agreed on--", condition = "fought_scope" },
        { speaker = "ux", expression = "neutral", text = "Created six bugs, Priya. And now you want to add video on top. Scope is not free.", condition = "fought_scope" },

        -- Demo happens
        { speaker = "pm", expression = "neutral", text = "Alright. It's time. Everyone ready?" },
        { speaker = "dev", expression = "neutral", text = "Define 'ready.'" },
        { speaker = "qa", expression = "smirk", text = "I've memorized which buttons not to click." },
        { speaker = "ux", expression = "neutral", text = "Let's do this." },
        { speaker = "ux", expression = "thinking", text = "(The design story. My story. Three days of work in one short demo. The typography, the interaction patterns, the brand identity. It's real. It's on screen. That matters.)" },

        -- Post-demo
        { speaker = "ux", expression = "neutral", text = "The first demo. It wasn't a disaster. It wasn't a triumph. It was... a demo.", bg = "break_room" },
        { speaker = "ux", expression = "neutral", text = "Leadership wants a 'fuller version' in two more weeks. Of course they do." },
        { speaker = "ux", expression = "thinking", text = "(The video conversation is on the whiteboard. Someone wrote 'TikTok?' in green marker. The question mark is doing a lot of work.)" },
        { speaker = "ux", expression = "neutral", text = "(The director made one comment during the Q&A: 'The design feels clean.' Clean. That is the highest compliment and the lowest-information feedback simultaneously.)" },
        { speaker = "ux", expression = "thinking", text = "(Sam caught my eye during the demo when the feed loaded without crashing. A tiny nod. The nod said: 'We built this.' The nod was worth more than the director's comment.)" },
        { speaker = "ux", expression = "neutral", text = "(Riley is already in the corner, writing notes. Bug list for sprint two. The demo is not even cold and QA is already planning the next assault.)" },

        -- Choice 2
        { speaker = "ux", expression = "thinking", text = "(The demo is done. Sprint one is over. What am I feeling?)",
            choices = {
                { text = "Relief. The design held. The prototype looked good. The work was worth it.", set = {pivot_relieved = true}, rel = {dev = 1, pm = 1} },
                { text = "Anger. The pivot undermined everything we built. One nephew. One slide. One wrecking ball.", set = {pivot_angry = true}, rel = {po = -1, qa = 1} },
                { text = "Pragmatic. Video is coming. Time to start researching video UX patterns.", set = {pivot_pragmatic = true}, rel = {arch = 1, po = 1} },
            }
        },

        { speaker = "ux", expression = "neutral", text = "The design held. The prototype looked real. The interaction patterns I agonized over -- they worked on screen in front of real people. That's the validation.", condition = "pivot_relieved" },
        { speaker = "ux", expression = "thinking", text = "(I'll hold onto this feeling. The moment the design went from Figma to reality. That's why I do this.)", condition = "pivot_relieved" },

        { speaker = "ux", expression = "frustrated", text = "We almost threw away three days of design work for a TikTok pitch from someone who's never used our product. The design process is not a whiteboard you can erase because a nephew said so.", condition = "pivot_angry" },
        { speaker = "ux", expression = "thinking", text = "(The anger is a compass. It points at the things I care about. I care about the users. Not the nephew.)", condition = "pivot_angry" },

        { speaker = "ux", expression = "thinking", text = "Video UX. I'll start the research tonight. Player patterns. Upload flows. Accessibility requirements for multimedia. If video is coming, the design will be ready.", condition = "pivot_pragmatic" },
        { speaker = "ux", expression = "neutral", text = "(Proactive design. If I wait for the feature to be approved, I'll be designing under pressure again. Better to explore now, when the exploration is free.)", condition = "pivot_pragmatic" },

        { speaker = "ux", expression = "neutral", text = "Sprint two begins." },

        { text = "", goto = "day10" }
    }
}
