return {
    title = "Day 13 -- Monday",
    subtitle = "The Feedback",
    narration = "Demo done. Leadership has spoken. The director sent you an email. You haven't opened it. You're afraid.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- Morning at desk
        { speaker = "po", expression = "neutral", text = "Monday. Coffee. Inbox. Director's email at the top. Subject line: 'Re: Chimera Demo.'" },
        { speaker = "po", expression = "neutral", text = "I've refreshed my email eleven times since 7 AM. The preview text starts with 'Thank you for' and I can't tell if that's good or devastating." },
        { speaker = "po", expression = "defensive", text = "(Six months. Six months of pitching this in hallways, in elevators, in parking lots after all-hands meetings.)" },
        { speaker = "po", expression = "neutral", text = "(I pitched Chimera to the VP in a Starbucks line. He said 'interesting' and I built a roadmap before he got his latte.)" },
        { speaker = "po", expression = "neutral", text = "(All of that. Every slide. Every late night rewriting the narrative. It comes down to one email.)" },
        { speaker = "po", expression = "defensive", text = "Open it. Just open it." },
        { speaker = "po", expression = "neutral", text = "(I open it.)" },
        { speaker = "po", expression = "neutral", text = "(I read it three times. Then I close my laptop and sit very still for about thirty seconds.)" },

        -- Team meeting
        { bg = "meeting_room" },

        { speaker = "pm", expression = "neutral", text = "Team meeting. I have the feedback from leadership." },
        { speaker = "dev", expression = "neutral", text = "On a scale of 'fired' to 'promoted,' where are we?" },
        { speaker = "pm", expression = "cheerful", text = "They liked it. With caveats." },
        { speaker = "po", expression = "neutral", text = "(They liked it. THEY LIKED IT. I am going to stay very calm right now.)" },

        -- Reactions per demo style
        { speaker = "pm", expression = "neutral", text = "They said the demo felt focused and professional. They want more depth in the next cycle.", condition = "polished_subset" },
        { speaker = "po", expression = "neutral", text = "(Focused. Professional. That's code for 'small but competent.' I'll take it. I'll absolutely take it.)", condition = "polished_subset" },

        { speaker = "pm", expression = "neutral", text = "They appreciated the ambition. But they flagged some rough edges. The search, the mobile views.", condition = "showed_everything" },
        { speaker = "po", expression = "defensive", text = "(Rough edges. I pushed us to show everything and the cracks showed. That one's on me.)", condition = "showed_everything" },

        { speaker = "pm", expression = "cheerful", text = "Direct quote from the VP: 'Finally, a team that tells us the truth.'", condition = "honest_demo" },
        { speaker = "po", expression = "neutral", text = "(The truth. I spent six months selling a vision and the thing that landed was honesty. I don't know how to feel about that.)", condition = "honest_demo" },

        -- Verdict
        { speaker = "pm", expression = "neutral", text = "Bottom line: Project Chimera is greenlit for another sprint. Two more weeks." },
        { speaker = "po", expression = "excited", text = "Two more weeks! We can add the analytics dashboard, the onboarding flow, the--" },
        { speaker = "dev", expression = "neutral", text = "Priya." },
        { speaker = "po", expression = "neutral", text = "Right. I know. Look back before looking forward." },
        { speaker = "po", expression = "neutral", text = "(I am literally learning in real time. This is humbling. This is also growth. I think.)" },

        -- Retro
        { speaker = "pm", expression = "neutral", text = "Retro time. What went well, what didn't, what changes." },

        { speaker = "dev", expression = "neutral", text = "What went well: we shipped something. What didn't: the scope changed four times in the last week alone. That's not sustainable." },
        { speaker = "po", expression = "defensive", text = "(Four times. Was it four? It might have been four.)" },

        { speaker = "qa", expression = "neutral", text = "What went well: we caught 47 bugs before the demo. What didn't: 12 are still open and three of them are regressions from features that changed mid-sprint." },
        { speaker = "po", expression = "neutral", text = "(Regressions from features I changed. Riley didn't say my name. They didn't have to.)" },

        { speaker = "arch", expression = "concerned", text = "What went well: the architecture held up under the demo load. What didn't: I should have been more flexible earlier. And the late pivots strained the data model." },

        { speaker = "ux", expression = "neutral", text = "What went well: we eventually paired and the design landed. What didn't: I redesigned the main flow three times because the requirements kept shifting." },
        { speaker = "po", expression = "defensive", text = "(Three redesigns. Because of me. Alex is being diplomatic about it and that's almost worse.)" },

        { speaker = "pm", expression = "neutral", text = "Priya? Your turn." },
        { speaker = "po", expression = "neutral", text = "(Honest. The team is asking me to be honest. Every single retro item pointed at me without saying my name. I owe them a real answer.)",
            choices = {
                { text = "I changed the requirements too much. I should have committed to scope earlier and trusted the team to build the right thing.", set = {retro_research = true}, rel = {dev = 2, qa = 1, arch = 1} },
                { text = "I should have been in the design room more. I assumed the deck was enough context. It wasn't.", set = {retro_communication = true}, rel = {ux = 2, dev = 1, arch = 1} },
                { text = "Best team I've ever worked with. The product is better because of every single argument we had.", set = {retro_trust = true}, rel = {pm = 1, ux = 1, qa = 1, dev = 1, arch = 1} },
            }
        },

        -- Retro reactions
        { speaker = "dev", expression = "smiling", text = "That's... exactly what I needed to hear. Thank you.", condition = "retro_research" },
        { speaker = "pm", expression = "neutral", text = "Next sprint, scope locks at planning. Agreed?", condition = "retro_research" },
        { speaker = "po", expression = "neutral", text = "Agreed. (It physically hurts to say that. But it's the right call.)", condition = "retro_research" },

        { speaker = "ux", expression = "excited", text = "If you're in the design room, I can keep you aligned in real time. No more surprises. Deal?", condition = "retro_communication" },
        { speaker = "po", expression = "neutral", text = "Deal. (The deck was never enough. I just wanted it to be.)", condition = "retro_communication" },

        { speaker = "dev", expression = "smiling", text = "I'm putting that on a sticky note above my monitor.", condition = "retro_trust" },
        { speaker = "qa", expression = "smirk", text = "Arguments made the product better. I'm quoting you on that in every bug report.", condition = "retro_trust" },

        { speaker = "po", expression = "neutral", text = "(The retro. Where teams either learn or repeat. I think we learned something today.)" },

        { text = "..." },

        -- Post-retro 1-on-1
        { bg = "break_room", bgm = "late_night" },

        { speaker = "po", expression = "neutral", text = "I grab a coffee after the retro. The break room is quiet. I can still hear my own heartbeat from the meeting." },

        -- High-rel with dev
        { speaker = "dev", expression = "neutral", text = "Hey. Got a second?", condition = {rel_dev_gte = 5} },
        { speaker = "po", expression = "neutral", text = "Sam. Yeah. Sit down.", condition = {rel_dev_gte = 5} },
        { speaker = "dev", expression = "neutral", text = "You meant what you said in the retro?", condition = {rel_dev_gte = 5} },
        { speaker = "po", expression = "neutral", text = "Every word.", condition = {rel_dev_gte = 5} },
        { speaker = "dev", expression = "smiling", text = "Good. Because next sprint, I'm holding you to it.", condition = {rel_dev_gte = 5} },
        { speaker = "po", expression = "neutral", text = "(Sam doesn't give trust easily. That felt like trust.)", condition = {rel_dev_gte = 5} },

        -- High-rel with UX (only if dev not high)
        { speaker = "ux", expression = "neutral", text = "Mind if I join you?", condition = {rel_ux_gte = 5, rel_dev_lt = 5} },
        { speaker = "po", expression = "neutral", text = "Please.", condition = {rel_ux_gte = 5, rel_dev_lt = 5} },
        { speaker = "ux", expression = "thinking", text = "The three redesigns. I wasn't angry about those. I was frustrated because I could see what you were reaching for. You just couldn't land on it.", condition = {rel_ux_gte = 5, rel_dev_lt = 5} },
        { speaker = "po", expression = "neutral", text = "(Alex understood me better than I understood myself this sprint. That's terrifying and wonderful.)", condition = {rel_ux_gte = 5, rel_dev_lt = 5} },
        { speaker = "ux", expression = "excited", text = "Next sprint. Same room. We'll find it together.", condition = {rel_ux_gte = 5, rel_dev_lt = 5} },

        -- Nobody high
        { speaker = "po", expression = "neutral", text = "The break room is empty. Just me and a coffee machine that sounds like it's giving up on life.", condition = {rel_dev_lt = 5, rel_ux_lt = 5} },
        { speaker = "po", expression = "defensive", text = "(Fifteen days and I'm drinking coffee alone. Maybe the retro honesty was too little too late.)", condition = {rel_dev_lt = 5, rel_ux_lt = 5} },
        { speaker = "po", expression = "neutral", text = "(Or maybe it was exactly on time. I'll find out next sprint.)", condition = {rel_dev_lt = 5, rel_ux_lt = 5} },

        -- Forward choice
        { speaker = "po", expression = "neutral", text = "(One more sprint. Two more weeks. The deck has a dozen features and the product has 9. What do I do with that gap?)",
            choices = {
                { text = "Commit to scope this time. Nine features, polished. No new slides until these are done.", set = {forward_cautious = true}, rel = {dev = 1, qa = 1, arch = 1} },
                { text = "Push the vision further. We earned the greenlight. Time to be ambitious.", set = {forward_ambitious = true}, rel = {po = 1, ux = 1} },
            }
        },

        { speaker = "po", expression = "neutral", text = "(Nine features. Polished. Solid. The deck can wait. The product can't.)", condition = "forward_cautious" },
        { speaker = "po", expression = "excited", text = "(Ambitious. We have momentum now. Leadership believed in us. Time to deliver on the whole vision.)", condition = "forward_ambitious" },

        { text = "", goto = "day14" }
    }
}
