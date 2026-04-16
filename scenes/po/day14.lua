return {
    title = "Day 14 -- Friday",
    subtitle = "Last Day",
    narration = "The final standup. Last words. The team is letting their walls down. So are you.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- Morning at desk: the deck vs reality
        { speaker = "po", expression = "neutral", text = "Friday. Last day. I open the Chimera deck one more time. Slide 1 of 47." },
        { speaker = "po", expression = "neutral", text = "Slide 47 has a roadmap that stretches to Q4. Twelve features. Three integrations. A marketplace. An AI assistant." },
        { speaker = "po", expression = "neutral", text = "The product has nine features. No marketplace. No AI. The onboarding flow doesn't even have a confirmation screen yet." },
        { speaker = "po", expression = "defensive", text = "(Forty-seven slides. Nine features. The gap between what I pitched and what we built is thirty-eight slides of ambition.)" },
        { speaker = "po", expression = "neutral", text = "(But the nine things that exist are real. People can touch them. Click them. Break them, according to Riley.)" },
        { speaker = "po", expression = "neutral", text = "I close the deck. I don't delete it. But I close it." },

        { text = "..." },

        -- Farewell standup
        { bg = "break_room", bgm = "late_night" },

        { speaker = "pm", expression = "cheerful", text = "Last standup, everyone. For real this time." },
        { speaker = "dev", expression = "neutral", text = "Is it going to be 15 minutes?" },
        { speaker = "pm", expression = "neutral", text = "It's going to be however long it needs to be." },
        { speaker = "dev", expression = "smiling", text = "...that's actually the right answer." },

        -- Team goodbyes, conditional on relationship
        { speaker = "dev", expression = "neutral", text = "Priya. You drove us all insane with the scope changes. But you also cared more than anyone. Both things are true.", condition = {rel_dev_gte = 5} },
        { speaker = "dev", expression = "neutral", text = "Priya. I wish you'd trusted us earlier. But I respect that you got there.", condition = {rel_dev_gte = 0, rel_dev_lt = 5} },
        { speaker = "po", expression = "neutral", text = "(Sam. Who told me 'no' more than anyone. And was right every time.)" },

        { speaker = "qa", expression = "neutral", text = "Priya. You actually started reading the bug reports by the end. I noticed. For the record.", condition = {rel_qa_gte = 5} },
        { speaker = "qa", expression = "deadpan", text = "Priya. Dozens of bugs. Twelve still open. Next time, read the reports.", condition = {rel_qa_gte = 0, rel_qa_lt = 5} },
        { speaker = "po", expression = "neutral", text = "(Riley. Who never sugarcoated anything. I needed that more than I knew.)" },

        { speaker = "ux", expression = "neutral", text = "Priya. You have the best product instincts of any PO I've worked with. You just need to slow down enough to let others catch up.", condition = {rel_ux_gte = 5} },
        { speaker = "ux", expression = "neutral", text = "Priya. The vision was always there. The communication wasn't. But I think you know that now.", condition = {rel_ux_gte = 0, rel_ux_lt = 5} },

        { speaker = "arch", expression = "neutral", text = "Priya. You challenged every technical assumption I had. It was exhausting and educational.", condition = {rel_arch_gte = 3} },
        { speaker = "arch", expression = "concerned", text = "Priya. I hope next time we find a better rhythm between vision and architecture.", condition = {rel_arch_lt = 3} },

        { speaker = "pm", expression = "neutral", text = "Priya. You brought the fire. Every project needs someone who refuses to build something small." },
        { speaker = "po", expression = "neutral", text = "(Jordan. Who held the room together when I kept trying to blow it open.)" },

        { text = "..." },

        { speaker = "pm", expression = "neutral", text = "Priya? You started this project six months ago with a deck and a dream. Close us out." },

        -- Binary choice
        { speaker = "po", expression = "neutral", text = "(They're handing me the floor. The whole team. After every requirement I changed, every scope I expanded, every late-night slide revision. I have to mean this.)",
            choices = {
                { text = "Next time, I bring the problem first. The deck comes after the team agrees on the problem.", set = {final_forward = true}, rel = {dev = 2, qa = 2, ux = 1} },
                { text = "I'll remember every argument and every compromise. They all made Chimera real.", set = {final_backward = true}, rel = {pm = 1, ux = 1, qa = 1, dev = 1, arch = 1} },
            }
        },

        { speaker = "dev", expression = "smiling", text = "Problem first. Deck after. I'm framing that.", condition = "final_forward" },
        { speaker = "qa", expression = "smirk", text = "If she actually does that next time, I'll buy everyone coffee.", condition = "final_forward" },

        { speaker = "ux", expression = "excited", text = "Don't make me cry in a standup, Priya.", condition = "final_backward" },
        { speaker = "dev", expression = "neutral", text = "The arguments made the code better. I'll give you that.", condition = "final_backward" },

        { text = "..." },

        -- 1-on-1 farewell with closest character
        { speaker = "po", expression = "neutral", text = "People start packing up. I stay in the break room, staring at my coffee." },

        -- Closest: dev
        { speaker = "dev", expression = "neutral", text = "Hey. Before you go.", condition = {rel_dev_gte = 5} },
        { speaker = "po", expression = "neutral", text = "Sam.", condition = {rel_dev_gte = 5} },
        { speaker = "dev", expression = "neutral", text = "The scope fights. I don't regret them.", condition = {rel_dev_gte = 5} },
        { speaker = "po", expression = "neutral", text = "Neither do I. You made Chimera honest.", condition = {rel_dev_gte = 5} },
        { speaker = "dev", expression = "smiling", text = "Same team next time?", condition = {rel_dev_gte = 5} },
        { speaker = "po", expression = "excited", text = "Same team. (And I mean it.)", condition = {rel_dev_gte = 5} },

        -- Closest: UX (if dev not high)
        { speaker = "ux", expression = "neutral", text = "Walk out together?", condition = {rel_ux_gte = 5, rel_dev_lt = 5} },
        { speaker = "po", expression = "neutral", text = "Yeah. Please.", condition = {rel_ux_gte = 5, rel_dev_lt = 5} },
        { speaker = "ux", expression = "thinking", text = "You know what I learned from you? Ambition isn't the enemy. Ambition without listening is.", condition = {rel_ux_gte = 5, rel_dev_lt = 5} },
        { speaker = "po", expression = "neutral", text = "(That's the most Alex thing anyone has ever said. And it's exactly right.)", condition = {rel_ux_gte = 5, rel_dev_lt = 5} },

        -- Closest: QA (if dev and ux not high)
        { speaker = "qa", expression = "neutral", text = "Priya. One thing.", condition = {rel_qa_gte = 5, rel_dev_lt = 5, rel_ux_lt = 5} },
        { speaker = "po", expression = "neutral", text = "Riley?", condition = {rel_qa_gte = 5, rel_dev_lt = 5, rel_ux_lt = 5} },
        { speaker = "qa", expression = "neutral", text = "The bug reports. If you actually read them next sprint, I'll know you changed.", condition = {rel_qa_gte = 5, rel_dev_lt = 5, rel_ux_lt = 5} },
        { speaker = "po", expression = "neutral", text = "Every single one. (I mean it this time.)", condition = {rel_qa_gte = 5, rel_dev_lt = 5, rel_ux_lt = 5} },

        -- Nobody high enough
        { speaker = "po", expression = "neutral", text = "The break room empties out. I sit with my coffee and the silence.", condition = {rel_dev_lt = 5, rel_ux_lt = 5, rel_qa_lt = 5} },
        { speaker = "po", expression = "defensive", text = "(I built walls out of slide decks and called them bridges. Next time, I walk across first.)", condition = {rel_dev_lt = 5, rel_ux_lt = 5, rel_qa_lt = 5} },

        -- Closing monologue
        { text = "..." },

        { speaker = "po", expression = "neutral", text = "(A whole deck of ambition. Nine features shipped. Two sprints. Six people who told me the truth whether I wanted to hear it or not.)" },
        { speaker = "po", expression = "neutral", text = "(The deck didn't ship. The team did. And the product... the product is real. Smaller than the slides. Bigger than I expected.)" },
        { speaker = "po", expression = "neutral", text = "(Vision is easy. Listening is the hard part. I'm getting better at the hard part.)" },
        { speaker = "po", expression = "neutral", text = "(Time to see how this ends.)" },

        { text = "", goto = "day15" }
    }
}
