return {
    title = "Day 14 -- Friday",
    subtitle = "Last Day",
    narration = "The final standup. Fifteen days, six people, one architecture that started with fourteen boxes and ended with eleven. Subtraction is the hardest design.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- Morning observations
        { speaker = "arch", expression = "concerned", text = "Friday. Last day. I get to my desk early. The meeting room whiteboard is blank. Someone wiped it clean overnight." },
        { speaker = "arch", expression = "neutral", text = "The architecture exists in code now. Not on the board. Eleven boxes. I started with fourteen." },
        { speaker = "arch", expression = "concerned", text = "(The three boxes I removed were my favorites. That is how I know removing them was correct.)" },
        { speaker = "arch", expression = "neutral", text = "I open the decision records one last time. Fourteen entries. Each one a compromise between the ideal and the real." },

        { text = "..." },

        -- Farewell standup
        { bg = "break_room", bgm = "late_night" },

        { speaker = "pm", expression = "neutral", text = "Last standup. For real this time." },
        { speaker = "dev", expression = "neutral", text = "Is it going to be 15 minutes?" },
        { speaker = "pm", expression = "neutral", text = "It's going to be however long it needs to be." },
        { speaker = "arch", expression = "neutral", text = "(The right answer. Systems thinking applied to meetings. Jordan is learning.)" },

        -- Conditional goodbyes from each team member
        { speaker = "dev", expression = "smiling", text = "Casey. You challenged every shortcut I tried to take. Made the code better every time.", condition = {rel_dev_gte = 5} },
        { speaker = "dev", expression = "neutral", text = "Casey. We didn't always agree on patterns. But your architecture held. That matters.", condition = {rel_dev_gte = 0, rel_dev_lt = 5} },
        { speaker = "dev", expression = "tired", text = "Casey. Less whiteboard next time.", condition = {rel_dev_lt = 0} },

        { speaker = "qa", expression = "neutral", text = "Casey. Your edge case handling went from theoretical to practical. I saw the change.", condition = {rel_qa_gte = 5} },
        { speaker = "qa", expression = "deadpan", text = "Casey. Your architecture survived my test suite. That's the best compliment QA gives.", condition = {rel_qa_gte = 0, rel_qa_lt = 5} },

        { speaker = "ux", expression = "neutral", text = "Casey. You helped me understand what the system could do. That shaped every design decision.", condition = {rel_ux_gte = 3} },
        { speaker = "ux", expression = "neutral", text = "Casey. I hope next time we bridge the gap between architecture and experience earlier.", condition = {rel_ux_lt = 3} },

        { speaker = "po", expression = "neutral", text = "Casey. Thank you for pushing back on the scope. The architecture is better because you said no.", condition = "fought_scope" },
        { speaker = "po", expression = "excited", text = "Casey. You built the foundation for everything I dreamed. That's not nothing.", condition = "absorbed_scope" },
        { speaker = "po", expression = "neutral", text = "Casey. You found the line between vision and reality. I'm still learning where that line is.", condition = {fought_scope = nil, absorbed_scope = nil} },

        { speaker = "pm", expression = "neutral", text = "Casey. The architect who learned that fewer boxes is more boxes. Best compliment I've got." },

        { text = "..." },

        { speaker = "pm", expression = "neutral", text = "Casey? Close us out." },
        { speaker = "arch", expression = "concerned", text = "(They're handing me the floor. The architect always wants the floor. The architect never knows what to do with it.)" },

        -- Binary choice: final_forward vs final_backward
        { speaker = "arch", expression = "neutral", text = "(Two ways to end this.)",
            choices = {
                { text = "I'm taking these lessons into whatever I architect next. Simpler systems. Braver decisions. Forward.", set = {final_forward = true}, rel = {pm = 1, dev = 1} },
                { text = "Fourteen boxes became eleven. Six people became a team. I'll remember how that happened.", set = {final_backward = true}, rel = {qa = 1, ux = 1, po = 1} },
            }
        },

        { speaker = "dev", expression = "smiling", text = "Simpler systems. I'm holding you to that, Casey.", condition = "final_forward" },
        { speaker = "qa", expression = "smirk", text = "Eleven boxes. I remember when it was fourteen. Progress.", condition = "final_backward" },

        { text = "..." },

        -- 1-on-1 farewell conditional on relationships
        { speaker = "arch", expression = "concerned", text = "The standup ends. People drift. I stay by the blank whiteboard." },

        { speaker = "dev", expression = "neutral", text = "Casey. Walk out together?", condition = {rel_dev_gte = 5} },
        { speaker = "arch", expression = "neutral", text = "I'd like that.", condition = {rel_dev_gte = 5} },
        { speaker = "dev", expression = "smiling", text = "Same team next project? I need someone to tell me my abstractions are wrong.", condition = {rel_dev_gte = 5} },
        { speaker = "arch", expression = "neutral", text = "Same team. But I reserve the right to whiteboard occasionally.", condition = {rel_dev_gte = 5} },

        { speaker = "qa", expression = "neutral", text = "Casey. One thing.", condition = {rel_qa_gte = 5, rel_dev_lt = 5} },
        { speaker = "qa", expression = "neutral", text = "You started over-designing and ended practical. That's a harder arc than most people manage.", condition = {rel_qa_gte = 5, rel_dev_lt = 5} },
        { speaker = "arch", expression = "concerned", text = "(That might be the most generous thing Riley has ever said. I will not explain why it moved me. I will just nod.)", condition = {rel_qa_gte = 5, rel_dev_lt = 5} },

        { speaker = "arch", expression = "concerned", text = "I stand by the blank whiteboard. My hand reaches for the marker one last time.", condition = {rel_dev_lt = 5, rel_qa_lt = 5} },
        { speaker = "arch", expression = "neutral", text = "I put it down. The architecture is in the code. Where it belongs.", condition = {rel_dev_lt = 5, rel_qa_lt = 5} },

        { speaker = "arch", expression = "neutral", text = "Fifteen days. Eleven boxes. Done." },

        { text = "", goto = "day15" }
    }
}
