return {
    title = "Day 1 -- Monday",
    subtitle = "Wrangling the Room",
    narration = "New project. Six personalities. One conference room. Your job: get them aligned before the timeline eats you alive.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- PRE-MEETING: At desk, reviewing the brief
        { speaker = "pm", expression = "neutral", text = "(Monday. 8:22 AM. Kickoff in 38 minutes. Time to prep.)" },
        { speaker = "pm", expression = "neutral", text = "(Opens the project brief. Two pages. Half of it is org chart boilerplate.)" },
        { speaker = "pm", expression = "stressed", text = "(The actual scope section is one paragraph. 'Build a knowledge-sharing platform. Web and mobile. Q3 launch.')" },
        { speaker = "pm", expression = "neutral", text = "(That's not a brief. That's a wish.)" },
        { speaker = "pm", expression = "neutral", text = "(Calendar check. Fourteen meetings this week already. Three of them are just this project.)" },
        { speaker = "pm", expression = "stressed", text = "(I haven't even started the Jira board. I don't know what to PUT on the Jira board.)" },
        { speaker = "pm", expression = "neutral", text = "(Okay. Focus. First impressions matter. Set the tone in the first ten minutes.)" },
        { speaker = "pm", expression = "neutral", text = "(Agenda: intros, vision overview, scope discussion, next steps. Clean. Simple.)" },
        { speaker = "pm", expression = "neutral", text = "(Priya sent me her deck last night. Every slide. I read all of them.)" },
        { speaker = "pm", expression = "stressed", text = "(Slide 23 is just the word 'delight' in giant font. I need to manage this.)" },
        { speaker = "pm", expression = "neutral", text = "(I make a note next to Priya's name: 'high energy, low constraints.' That is a combination that creates great products or great fires. My job is to figure out which one before the smoke starts.)" },
        { speaker = "pm", expression = "neutral", text = "(I check the team roster again. Six people. Two I've worked with before. Four I haven't. The ones I haven't worked with are the risk. Not because they're bad. Because I don't know their tells yet. I don't know when Casey is about to derail a meeting or when Riley is about to surface a blocker.)" },
        { speaker = "pm", expression = "stressed", text = "(The director's email from last week: 'Make this one count, Jordan.' Five words. No context. No success criteria. Just enough pressure to be motivating and vague enough to be useless.)" },
        { speaker = "pm", expression = "neutral", text = "(I write three questions on a sticky note. 'What does done look like?' 'Who decides when we cut scope?' 'What happens if we miss the deadline?' Nobody will answer these today. But I will ask them. Loudly. Repeatedly.)" },
        { speaker = "pm", expression = "neutral", text = "(Grabs notebook, sticky notes, three colors of markers. Let's go.)" },

        -- KICKOFF MEETING
        { bg = "meeting_room" },
        { speaker = "pm", expression = "cheerful", text = "(Deep breath. Smile. You've got this.)" },
        { speaker = "pm", expression = "cheerful", text = "Morning, all! So glad you're here. Project Chimera starts now." },
        { speaker = "pm", expression = "cheerful", text = "I'm Jordan, your PM. Before we dive in, let's do quick intros. Name and role, 30 seconds each." },
        { speaker = "ux", expression = "neutral", text = "Alex, UX Design. Happy to be here." },
        { speaker = "pm", expression = "neutral", text = "(Concise. I like Alex already.)" },
        { speaker = "dev", expression = "neutral", text = "Sam. Developer. I write the code that makes the things do the stuff." },
        { speaker = "pm", expression = "neutral", text = "(Short sentences. Guarded. Probably been burned before.)" },
        { speaker = "arch", expression = "neutral", text = "Casey, Architecture. I'll be making sure we don't paint ourselves into a corner." },
        { speaker = "pm", expression = "neutral", text = "(Systems thinker. Good. I'll need Casey when scope gets messy.)" },
        { speaker = "qa", expression = "neutral", text = "Riley. QA. I break things so users don't have to." },
        { speaker = "pm", expression = "neutral", text = "(Dry. Probably the most honest person in this room.)" },
        { speaker = "po", expression = "excited", text = "Priya, Product Owner! I am SO excited about this one. I've got a 47-slide deck about the vision!" },
        { speaker = "pm", expression = "stressed", text = "(And there it is. The deck. Unbounded enthusiasm in PowerPoint form.)" },

        -- THE CHOICE
        { speaker = "pm", expression = "neutral", text = "(Okay. This is the moment. How do I open this up?)",
            choices = {
                { text = "Open with the timeline so everyone knows the stakes.", set = {pm_led_with_timeline = true}, rel = {dev = -1, po = 1} },
                { text = "Open with the team. People first, plan second.", set = {pm_led_with_team = true}, rel = {ux = 1, qa = 1} },
                { text = "Hand it straight to Priya. Let the vision do the talking.", set = {pm_handed_to_po = true}, rel = {po = 2, dev = -1} },
            }
        },

        -- TIMELINE PATH
        { speaker = "pm", expression = "neutral", text = "Just so we're all on the same page: MVP in six weeks. Web and mobile. That's the bar.", condition = "pm_led_with_timeline" },
        { speaker = "dev", expression = "frustrated", text = "Six weeks for what, exactly?", condition = "pm_led_with_timeline" },
        { speaker = "pm", expression = "neutral", text = "(Pushback already. Sam doesn't waste time.)", condition = "pm_led_with_timeline" },
        { speaker = "arch", expression = "concerned", text = "Six weeks is tight for one platform, let alone two.", condition = "pm_led_with_timeline" },
        { speaker = "pm", expression = "stressed", text = "(Two people pushing back. This is what honesty gets you.)", condition = "pm_led_with_timeline" },
        { speaker = "po", expression = "excited", text = "We move fast! That's the magic! Priya will explain the vision.", condition = "pm_led_with_timeline" },
        { speaker = "pm", expression = "neutral", text = "(At least Priya's on board. That's one ally.)", condition = "pm_led_with_timeline" },

        -- TEAM PATH
        { speaker = "pm", expression = "cheerful", text = "Before we touch scope or timeline, I want to know who's in this room. Quick round. What do you care about?", condition = "pm_led_with_team" },
        { speaker = "ux", expression = "neutral", text = "User needs. I want to make sure we're solving a real problem.", condition = "pm_led_with_team" },
        { speaker = "qa", expression = "neutral", text = "Quality. I'd rather ship late than ship broken.", condition = "pm_led_with_team" },
        { speaker = "dev", expression = "neutral", text = "Feasibility. I care about what's actually buildable.", condition = "pm_led_with_team" },
        { speaker = "arch", expression = "neutral", text = "Sustainability. Whatever we build, it has to scale.", condition = "pm_led_with_team" },
        { speaker = "po", expression = "excited", text = "Impact! I want this to change how people share knowledge!", condition = "pm_led_with_team" },
        { speaker = "pm", expression = "cheerful", text = "(Good answers. Different priorities, but that's a feature, not a bug.)", condition = "pm_led_with_team" },

        -- PO PATH
        { speaker = "pm", expression = "cheerful", text = "Priya, you're up. Tell us about Chimera.", condition = "pm_handed_to_po" },
        { speaker = "po", expression = "excited", text = "Buckle up. I have the full deck.", condition = "pm_handed_to_po" },
        { speaker = "pm", expression = "stressed", text = "(The full deck. What have I done.)", condition = "pm_handed_to_po" },
        { speaker = "po", expression = "excited", text = "Picture this. Uber, but for internal knowledge sharing. Social feeds, gamification, AI recommendations!", condition = "pm_handed_to_po" },
        { speaker = "dev", expression = "neutral", text = "So... a wiki?", condition = "pm_handed_to_po" },
        { speaker = "po", expression = "defensive", text = "It is NOT a wiki, Sam.", condition = "pm_handed_to_po" },
        { speaker = "pm", expression = "stressed", text = "(Sam versus Priya. File that under 'risks.')", condition = "pm_handed_to_po" },

        -- CONVERGENCE: The scope reveal
        { speaker = "po", expression = "excited", text = "Social feeds. Real-time collaboration. Gamified learning. AI-powered recommendations. Web AND mobile." },
        { speaker = "arch", expression = "concerned", text = "That's... ambitious. What's the timeline again?" },
        { speaker = "pm", expression = "cheerful", text = "MVP in six weeks!" },
        { speaker = "pm", expression = "stressed", text = "(I said it with confidence. That has to count for something.)" },
        { speaker = "dev", expression = "frustrated", text = "Six weeks. Web and mobile. With no repo, no CI/CD, and requirements that live in a slide deck." },
        { speaker = "qa", expression = "deadpan", text = "I'm going to need a bigger test plan." },
        { speaker = "po", expression = "excited", text = "We move fast! That's the magic of this team!" },
        { speaker = "pm", expression = "neutral", text = "(Magic. Right. I'll add that to the risk register.)" },
        { speaker = "arch", expression = "neutral", text = "Quick question. Native mobile or cross-platform?" },
        { speaker = "po", expression = "excited", text = "Both! Wait, what's the difference?" },
        { speaker = "dev", expression = "neutral", text = "About six months." },
        { speaker = "pm", expression = "stressed", text = "(Parking lot. Parking lot. Put it in the parking lot.)" },
        { speaker = "pm", expression = "cheerful", text = "Great energy, team. We'll sort out the technical details this week." },
        { speaker = "pm", expression = "cheerful", text = "Standup tomorrow, 9 AM sharp. We'll keep it tight." },
        { speaker = "qa", expression = "smirk", text = "Sure, Jordan." },

        -- POST-MEETING: Back at desk
        { bg = "office_day" },
        { speaker = "pm", expression = "neutral", text = "(Back at my desk. Time to make sense of that.)" },
        { speaker = "pm", expression = "neutral", text = "(Opens Jira. Creates the Chimera board. Stares at the empty backlog.)" },
        { speaker = "pm", expression = "stressed", text = "(What do I even put in here? 'Build everything Priya described?' That's not a ticket, that's a prayer.)" },
        { speaker = "pm", expression = "neutral", text = "(Meeting notes. I should write meeting notes. Nobody will read them, but it's the principle.)" },
        { speaker = "pm", expression = "neutral", text = "(Attendees: all six. Duration: 48 minutes. Decisions made: zero. Action items: vague.)" },
        { speaker = "pm", expression = "neutral", text = "(Team read: Sam is skeptical but competent. Casey is thorough. Alex is observant.)" },
        { speaker = "pm", expression = "neutral", text = "(Riley will be the early warning system. If something's broken, Riley will say so.)" },
        { speaker = "pm", expression = "stressed", text = "(Priya has vision but no boundaries. That's my problem to manage.)" },
        { speaker = "pm", expression = "neutral", text = "(Slack notification. Priya sent three more links to her deck in #chimera-general.)" },
        { speaker = "pm", expression = "neutral", text = "(Posts the meeting notes. Adds a thumbs-up emoji. Professional.)" },
        { speaker = "pm", expression = "stressed", text = "(Six weeks. Six people. Zero requirements. Fourteen meetings already on the calendar.)" },
        { speaker = "pm", expression = "neutral", text = "(Tomorrow. 9 AM. I can do this.)" },

        { text = "", goto = "day2" }
    }
}
