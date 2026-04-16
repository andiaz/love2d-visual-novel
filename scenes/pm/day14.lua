return {
    title = "Day 14 -- Friday",
    subtitle = "Last Day",
    narration = "The final standup. Last words. Fifteen days, six people, one product. You held the room together. Or you didn't.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- Morning at desk: packing up
        { speaker = "pm", expression = "neutral", text = "Friday. The Jira board is still open on my screen. Force of habit." },
        { speaker = "pm", expression = "neutral", text = "43 tickets in 'Done.' 12 in 'Won't Fix.' 7 still in 'Needs Grooming' that nobody will ever groom." },
        { speaker = "pm", expression = "stressed", text = "(Digital fossils. Every project leaves them behind.)" },
        { speaker = "pm", expression = "neutral", text = "The meeting room is empty. Whiteboard still has Casey's architecture diagram. Someone drew a tiny dinosaur in the corner. I think that was Riley." },
        { speaker = "pm", expression = "neutral", text = "(The calendar. Forty-three meetings in fifteen days. I organized every single one. Nobody will remember who booked the rooms or wrote the agendas or sent the follow-ups.)" },
        { speaker = "pm", expression = "stressed", text = "(That's the job. The invisible labor. You hold the space so other people can do visible work.)" },
        { speaker = "pm", expression = "neutral", text = "(I wouldn't trade it. Probably.)" },

        -- Farewell standup
        { bg = "break_room", bgm = "late_night" },
        { speaker = "pm", expression = "cheerful", text = "Last standup, everyone. For real this time." },
        { speaker = "dev", expression = "neutral", text = "Is it going to be 15 minutes?" },
        { speaker = "pm", expression = "neutral", text = "It's going to be however long it needs to be." },
        { speaker = "dev", expression = "smiling", text = "...that's actually the right answer." },
        { speaker = "pm", expression = "cheerful", text = "(Took me fifteen days to learn it.)" },

        -- Sam's farewell (conditional)
        { speaker = "dev", expression = "smiling", text = "Jordan. You're the first PM I've worked with who actually understood what 'blocked' means. Not 'I'll follow up,' but actually unblocked me.", condition = {rel_dev_gte = 5} },
        { speaker = "dev", expression = "neutral", text = "This project was a mess. But it was a good mess. At least we argued, which means people cared.", condition = {rel_dev_gte = nil} },

        -- Alex's farewell (conditional)
        { speaker = "ux", expression = "excited", text = "I've never had a PM fight for design time the way you did. Most of them treat UX like a nice-to-have. You made it part of the process.", condition = {rel_ux_gte = 4} },
        { speaker = "ux", expression = "neutral", text = "Best collaboration I've had in a while. The pairing sessions saved me. Let's do that again.", condition = {rel_ux_gte = nil} },

        -- Riley's farewell (conditional)
        { speaker = "qa", expression = "neutral", text = "You listened to QA. Before the fire, not after. That's rare. I mean it.", condition = {rel_qa_gte = 5} },
        { speaker = "qa", expression = "neutral", text = "Thank you for listening. Eventually. Most teams never do.", condition = {rel_qa_gte = nil} },

        -- Casey's farewell
        { speaker = "arch", expression = "concerned", text = "I owe the team an apology. I spent too much time on the 'right' architecture and not enough on the one that ships." },
        { speaker = "dev", expression = "smiling", text = "Casey, that's the most practical thing you've ever said." },
        { speaker = "arch", expression = "neutral", text = "Don't get used to it. I still think we need microservices eventually." },

        -- Priya's farewell (conditional)
        { speaker = "po", expression = "excited", text = "Jordan, I know we clashed on scope. But you kept this project honest. Chimera is real because of you.", condition = {rel_po_gte = 4} },
        { speaker = "po", expression = "neutral", text = "Chimera is real now. That's because of all of you. And I promise, next sprint, I'll read the bug reports. All of them.", condition = {rel_po_gte = nil} },
        { speaker = "qa", expression = "smirk", text = "I'll believe it when I see it.", condition = {rel_po_gte = nil} },
        { speaker = "po", expression = "neutral", text = "Fair.", condition = {rel_po_gte = nil} },

        -- PM gets the last word
        { speaker = "dev", expression = "neutral", text = "Jordan? You're up. PM gets the last word." },

        { speaker = "pm", expression = "neutral", text = "(Five faces. Fifteen days. The right thing to say is somewhere in there.)",
            choices = {
                { text = "Taking the process lessons forward. Scope protection, cross-team communication, real retros.", set = {final_forward = true}, rel = {dev = 1, qa = 1, arch = 1} },
                { text = "Remembering this team. The arguments, the late nights, the terrible coffee. That's what I'm keeping.", set = {final_backward = true}, rel = {dev = 1, ux = 1, qa = 1, po = 1, arch = 1} },
            }
        },

        { speaker = "pm", expression = "neutral", text = "I learned more about process in fifteen days than in fifteen sprints. Scope locks. QA in design reviews. Pairing from day one. I'm taking all of it.", condition = "final_forward" },
        { speaker = "qa", expression = "neutral", text = "Write it down. PMs forget things after the retro.", condition = "final_forward" },
        { speaker = "pm", expression = "cheerful", text = "Already in Confluence. With a real template this time.", condition = "final_forward" },

        { speaker = "pm", expression = "cheerful", text = "I've run a lot of projects. Most of them blur together. Status updates, risk registers, capacity planning. This one I'll remember.", condition = "final_backward" },
        { speaker = "ux", expression = "excited", text = "Don't make me cry in a standup, Jordan.", condition = "final_backward" },
        { speaker = "pm", expression = "cheerful", text = "No promises.", condition = "final_backward" },

        -- 1-on-1 farewell: closest character (conditional)
        { text = "..." },

        { speaker = "dev", expression = "smiling", text = "Hey. One more thing.", condition = {rel_dev_gte = 6} },
        { speaker = "pm", expression = "neutral", text = "Yeah?", condition = {rel_dev_gte = 6} },
        { speaker = "dev", expression = "smiling", text = "If you ever need a dev who actually shows up to standups on time... don't call me. But seriously, it was good working with you.", condition = {rel_dev_gte = 6} },
        { speaker = "pm", expression = "cheerful", text = "(Sam. The dev who hates meetings but stayed for every single one. That's trust you can't put in a Jira ticket.)", condition = {rel_dev_gte = 6} },

        { speaker = "qa", expression = "neutral", text = "Jordan. Walk with me a second.", condition = {rel_qa_gte = 6, rel_dev_gte = nil} },
        { speaker = "pm", expression = "neutral", text = "Sure, Riley.", condition = {rel_qa_gte = 6, rel_dev_gte = nil} },
        { speaker = "qa", expression = "neutral", text = "I've been doing QA for six years. You're the second PM who actually changed process because of a bug report. Keep doing that.", condition = {rel_qa_gte = 6, rel_dev_gte = nil} },
        { speaker = "pm", expression = "cheerful", text = "(Second. I'll take second. From Riley, that's practically a standing ovation.)", condition = {rel_qa_gte = 6, rel_dev_gte = nil} },

        { speaker = "ux", expression = "neutral", text = "Jordan, thanks for making space for design. It doesn't always happen.", condition = {rel_ux_gte = 6, rel_dev_gte = nil, rel_qa_gte = nil} },
        { speaker = "pm", expression = "cheerful", text = "Design is half the product, Alex. The other half is convincing leadership that design is half the product.", condition = {rel_ux_gte = 6, rel_dev_gte = nil, rel_qa_gte = nil} },
        { speaker = "ux", expression = "excited", text = "Ha. Yeah. That part never changes.", condition = {rel_ux_gte = 6, rel_dev_gte = nil, rel_qa_gte = nil} },

        -- Closing inner monologue
        { text = "..." },
        { speaker = "pm", expression = "neutral", text = "(The break room empties out. One by one. Sam first, headphones already on. Then Casey, muttering about microservices. Alex waves. Priya hugs everyone. Riley just nods.)" },
        { speaker = "pm", expression = "neutral", text = "(I close the Jira board. Close the Confluence space. Archive the Slack channel.)" },
        { speaker = "pm", expression = "stressed", text = "(Somewhere in all those status updates and stand-up notes is the real story of this project. But nobody reads the project wiki. They never do.)" },
        { speaker = "pm", expression = "neutral", text = "(I flip through my notebook one last time. Page one has the agenda from day one. Page forty-seven has today's standup notes. Between them is every decision, every escalation, every parking lot item I tracked. The margins are full of tiny observations. 'Sam checked out at 10:15.' 'Riley smiled during the demo.' 'Casey and Sam agreed on something.' These are not action items. These are the moments I was paying attention.)" },
        { speaker = "pm", expression = "neutral", text = "(The Slack channel will be archived but not deleted. Someone might search for it in six months, looking for a decision that was made in a thread at 11 PM. They will find it because I documented it. That is the PM's legacy. Not the product. The receipts.)" },
        { speaker = "pm", expression = "stressed", text = "(I wonder if the next PM will read the retro notes. I wonder if they will learn from what we learned, or if they will make the same mistakes with different sticky notes. Probably the second one. Every team thinks they are the first team to discover that scope creep is bad.)" },
        { speaker = "pm", expression = "neutral", text = "(I pick up my notebook. My lanyard. My faith in structured process.)" },
        { speaker = "pm", expression = "neutral", text = "(The question isn't whether I kept the project on track. It's whether I kept the people together.)" },

        { text = "", goto = "day15" }
    }
}
