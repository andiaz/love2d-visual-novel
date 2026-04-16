return {
    title = "Day 4 -- Thursday",
    subtitle = "The Design Review",
    narration = "Alex is presenting designs. Your job: keep the room from devolving into a brawl. Good luck.",

    dialogue = {
        -- PRE-REVIEW: Reviewing everyone's updates
        { bg = "office_day", bgm = "Sprint Cycle (UX Nights)" },

        { speaker = "pm", expression = "neutral", text = "Thursday. Eight-thirty. Review at ten. Time to make sure this meeting doesn't become a hostage situation." },
        { speaker = "pm", expression = "neutral", text = "I open the project tracker. Status updates from yesterday." },
        { speaker = "pm", expression = "stressed", text = "(Sam: 'Feed component renders. API contract TBD.' TBD. The two most dangerous letters in project management.)" },
        { speaker = "pm", expression = "neutral", text = "(Casey: 'Architecture decision pending. Need to discuss data model.' He's going to hijack the review. I can feel it.)" },
        { speaker = "pm", expression = "stressed", text = "(Riley: 'Edge case audit in progress. 34 items so far.' Thirty-four. We haven't built anything and Riley has thirty-four bugs.)" },
        { speaker = "pm", expression = "neutral", text = "(Priya: 'Refining feature priorities. New ideas!' New ideas is code for scope creep. I need a plan.)" },
        { speaker = "pm", expression = "neutral", text = "(Alex: 'Designs ready for review. Nervous.' At least someone is being honest.)" },
        { speaker = "pm", expression = "neutral", text = "I write the meeting agenda on a sticky note. Three items. Walkthrough. Feedback. Priority decision." },
        { speaker = "pm", expression = "stressed", text = "(Keep it to three. If I let it expand, Casey will whiteboard for forty minutes and Priya will add a marketplace.)" },
        { speaker = "pm", expression = "neutral", text = "I set a timer on my phone. Forty-five minutes. When it goes off, the meeting ends. No exceptions." },
        { speaker = "pm", expression = "neutral", text = "(The timer is for me, not them. I'm the one who lets meetings run long because I hate cutting people off.)" },
        { speaker = "pm", expression = "cheerful", text = "Alright. Agenda set. Coffee acquired. Let's do this." },

        -- THE REVIEW
        { bg = "meeting_room" },

        { speaker = "pm", expression = "cheerful", text = "Alright everyone, Alex has designs to walk us through. Constructive feedback only. Please." },
        { speaker = "ux", expression = "neutral", text = "Thanks Jordan. I've mapped out the core flows -- onboarding, content creation, the feed. First pass." },
        { speaker = "pm", expression = "neutral", text = "(Good start. Clear. Focused. Now let's see how long that lasts.)" },
        { speaker = "ux", expression = "neutral", text = "Onboarding first. Welcome screen, role picker, profile setup, then the personalized feed." },

        -- The chaos begins
        { speaker = "arch", expression = "whiteboarding", text = "Before we go further -- the data model behind this content feed. Relational or document-based?" },
        { speaker = "dev", expression = "neutral", text = "Casey, it's a design review. Not an architecture review." },
        { speaker = "pm", expression = "stressed", text = "(Tangent one. Ninety seconds in. I owe Riley five dollars.)" },
        { speaker = "arch", expression = "whiteboarding", text = "But the nested comments -- if we go relational, that's a recursive query. If document, we need to think about--" },
        { speaker = "pm", expression = "neutral", text = "Casey, I'm parking that. It's valid but it's a separate conversation. Can we schedule it for tomorrow?" },
        { speaker = "arch", expression = "concerned", text = "Tomorrow means rework." },
        { speaker = "pm", expression = "neutral", text = "Tomorrow means the right people in the room. You, Sam, and Alex. Not the whole team." },
        { speaker = "arch", expression = "neutral", text = "...fine." },
        { speaker = "pm", expression = "neutral", text = "(One tangent parked. Five more incoming.)" },

        -- Priya
        { speaker = "po", expression = "excited", text = "I love it! But can we also add a leaderboard? And achievements? Gamification was on slide 34." },
        { speaker = "qa", expression = "deadpan", text = "You're referencing a slide nobody has seen." },
        { speaker = "po", expression = "defensive", text = "It's a GREAT slide." },
        { speaker = "pm", expression = "stressed", text = "(Tangent two. Scope expansion. Note it. Don't engage. Don't engage. Don't--)" },
        { speaker = "pm", expression = "neutral", text = "Priya, I'm adding gamification to the parking lot. Let's get through the core flows first." },
        { speaker = "po", expression = "excited", text = "But imagine badges next to--" },
        { speaker = "pm", expression = "neutral", text = "Parking lot." },
        { speaker = "po", expression = "defensive", text = "(Jordan's parking lot is where ideas go to die.)" },

        -- Sam
        { speaker = "dev", expression = "neutral", text = "Honest question -- did anyone think about mobile? These layouts are clearly desktop-first." },
        { speaker = "ux", expression = "frustrated", text = "(Mobile was never in the sprint plan. Nobody flagged it. That is a planning gap.)" },
        { speaker = "pm", expression = "stressed", text = "(That's on me. Mobile spec was supposed to come from Priya. I should have chased it. Adding to my failure list.)" },
        { speaker = "dev", expression = "neutral", text = "Half our users will be on phones. The card layout doesn't work below 900 pixels." },
        { speaker = "pm", expression = "neutral", text = "Noted. Alex, can you factor that into the next iteration?" },
        { speaker = "ux", expression = "neutral", text = "If someone gives me breakpoints, yes." },
        { speaker = "dev", expression = "neutral", text = "I'll send them today." },
        { speaker = "pm", expression = "neutral", text = "(A problem that generated a solution in the meeting. Rare. Cherish it.)" },

        -- Riley
        { speaker = "qa", expression = "neutral", text = "What happens when a user uploads a 200MB file? Screen readers? Display name with 400 characters?" },
        { speaker = "qa", expression = "neutral", text = "Zero states? Error states? What if the session expires mid-edit?" },
        { speaker = "pm", expression = "stressed", text = "(Risk register: edge cases. Add. Add. Add. My spreadsheet is going to need a spreadsheet.)" },
        { speaker = "pm", expression = "neutral", text = "Riley, top concern. One." },
        { speaker = "qa", expression = "neutral", text = "Accessibility. Everything else is negotiable. That isn't." },
        { speaker = "pm", expression = "neutral", text = "(Riley's right. And I should have made sure accessibility was in the brief from day one.)" },

        -- The choice
        { speaker = "pm", expression = "neutral", text = "Okay. Three threads of feedback. I need to pick which one we elevate." },
        { speaker = "pm", expression = "stressed", text = "(The facilitator's dilemma. Every thread I elevate is a thread I deprioritize. The team becomes whichever direction I point them.)",
            choices = {
                { text = "Elevate Sam and Casey's tech feedback. Tech debt is the silent killer.", set = {prioritized_tech = true}, rel = {dev = 2, arch = 2, po = -2} },
                { text = "Elevate Priya's product asks. Stakeholder happiness keeps the project funded.", set = {prioritized_product = true}, rel = {po = 2, dev = -1, qa = -1} },
                { text = "Elevate Riley's accessibility concerns. We can't ship something that excludes users.", set = {prioritized_users = true}, rel = {qa = 2, dev = 1, po = -2} },
            }
        },

        -- Tech
        { speaker = "pm", expression = "neutral", text = "Alex, Casey, Sam -- I want a tech-design sync this afternoon. We align before more designs land.", condition = "prioritized_tech" },
        { speaker = "dev", expression = "smiling", text = "Thank you. Seriously.", condition = "prioritized_tech" },
        { speaker = "arch", expression = "neutral", text = "I'll have the data model doc ready for the sync.", condition = "prioritized_tech" },
        { speaker = "po", expression = "defensive", text = "But the gamification...", condition = "prioritized_tech" },
        { speaker = "pm", expression = "neutral", text = "Parking lot, Priya. We'll revisit once the technical foundation is solid.", condition = "prioritized_tech" },
        { speaker = "pm", expression = "neutral", text = "I'll send a calendar invite for three o'clock. Thirty minutes. Hard stop.", condition = "prioritized_tech" },
        { speaker = "dev", expression = "neutral", text = "Hard stop? From Jordan? Mark the date.", condition = "prioritized_tech" },
        { speaker = "pm", expression = "neutral", text = "(They joke because it's true. I'm working on it.)", condition = "prioritized_tech" },

        -- Product
        { speaker = "pm", expression = "cheerful", text = "Priya, send your feature list to Alex by EOD. Alex, prioritize from the top.", condition = "prioritized_product" },
        { speaker = "po", expression = "excited", text = "Yes! On it!", condition = "prioritized_product" },
        { speaker = "dev", expression = "frustrated", text = "(More features. Great.)", condition = "prioritized_product" },
        { speaker = "pm", expression = "stressed", text = "(Risk register: scope. I'm going to regret this. But the stakeholders want wow factor for the demo.)", condition = "prioritized_product" },
        { speaker = "qa", expression = "deadpan", text = "So we're adding scope to untested designs. Bold strategy.", condition = "prioritized_product" },
        { speaker = "pm", expression = "neutral", text = "Riley, I need you and Alex to do a quick sanity check before the features go into the backlog.", condition = "prioritized_product" },
        { speaker = "qa", expression = "deadpan", text = "A sanity check implies there's sanity to check.", condition = "prioritized_product" },
        { speaker = "pm", expression = "stressed", text = "(Fair.)", condition = "prioritized_product" },

        -- Users
        { speaker = "pm", expression = "neutral", text = "Riley, you're in the next design review. Mandatory. Alex, accessibility audit before any handoff.", condition = "prioritized_users" },
        { speaker = "qa", expression = "smirk", text = "Finally, a PM with sense.", condition = "prioritized_users" },
        { speaker = "pm", expression = "neutral", text = "I'm adding accessibility as a standing agenda item. Every review, every sprint.", condition = "prioritized_users" },
        { speaker = "po", expression = "defensive", text = "But the demo is in less than two weeks!", condition = "prioritized_users" },
        { speaker = "pm", expression = "neutral", text = "Accessibility isn't a nice-to-have. It's the contract.", condition = "prioritized_users" },
        { speaker = "dev", expression = "neutral", text = "I'll make sure the components support keyboard nav and screen readers from day one.", condition = "prioritized_users" },
        { speaker = "pm", expression = "neutral", text = "Good. I'll update the definition of done to include accessibility checks.", condition = "prioritized_users" },
        { speaker = "pm", expression = "neutral", text = "(More process. But the right kind of process. The kind that prevents the wrong kind of rework.)", condition = "prioritized_users" },

        -- POST-REVIEW: Private reaction
        { bg = "office_day" },

        { speaker = "pm", expression = "stressed", text = "(That meeting was seventy-five minutes. I scheduled forty-five. The timer went off and I ignored it.)" },
        { speaker = "pm", expression = "neutral", text = "Back at my desk. I open the meeting notes. Two pages of bullet points. Three parking lot items. One actual decision." },
        { speaker = "pm", expression = "stressed", text = "(One decision in seventy-five minutes. That's... not great. But it's one more decision than most meetings produce.)" },
        { speaker = "pm", expression = "neutral", text = "(The parking lot has Casey's data model discussion, Priya's gamification ideas, and the mobile spec gap.)" },
        { speaker = "pm", expression = "neutral", text = "(Three conversations I need to schedule. Three more meetings. Meetings about the meeting. The recursion is not lost on me.)" },
        { speaker = "pm", expression = "stressed", text = "(But people talked to each other. Sam and Alex agreed on breakpoints. Riley got accessibility on the radar. Casey parked his tangent without a fight.)" },
        { speaker = "pm", expression = "cheerful", text = "(That's progress. Messy, loud, over-time progress. But progress.)" },
        { speaker = "pm", expression = "neutral", text = "(I replay the meeting in my head. The moment Sam said 'half our users will be on phones' -- that was the turning point. The room got quiet. Not uncomfortable quiet. Thinking quiet. That is the best sound a facilitator can hear.)" },
        { speaker = "pm", expression = "neutral", text = "(I also noticed who didn't speak much. Alex was presenting, so that's expected. But Priya went quiet for about ten minutes after I parked gamification. That silence worries me. A quiet Priya is a Priya who is planning. I need to check in with her before end of day.)" },
        { speaker = "pm", expression = "stressed", text = "(The timer. I set it for myself and I still ignored it. Thirty minutes over. That is thirty minutes of someone else's afternoon I borrowed without asking. I need to be better about that. Hard stops are only hard if I enforce them.)" },
        { speaker = "pm", expression = "neutral", text = "I start typing the follow-up email. Action items. Owners. Deadlines. The PM ritual." },
        { speaker = "pm", expression = "neutral", text = "(Nobody will read this email. But it exists. And when someone asks 'what did we decide,' I'll have the receipt.)" },

        { text = "", goto = "day5" }
    }
}
