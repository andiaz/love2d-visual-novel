return {
    title = "Day 14 -- Friday",
    subtitle = "Last Day",
    narration = "The final standup. Fifteen days. You filed 89 bugs. They closed 71. The 18 still open are immortal.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- Morning observations
        { speaker = "qa", expression = "deadpan", text = "Friday. Last day. I get to my desk early. Open the bug tracker one final time." },
        { speaker = "qa", expression = "neutral", text = "89 filed. 71 closed. 18 open. I know each of the 18 by name. They will outlive this project." },
        { speaker = "qa", expression = "smirk", text = "(The test report is 14 pages now. Comprehensive. Clear. Nobody will read it. I email it anyway. Cc: all.)" },
        { speaker = "qa", expression = "deadpan", text = "I close the bug tracker tab. Open it again. Close it. Old habits die on the fifteenth day, apparently." },

        { text = "..." },

        -- Farewell standup
        { bg = "break_room", bgm = "late_night" },

        { speaker = "pm", expression = "neutral", text = "Last standup. For real this time." },
        { speaker = "dev", expression = "neutral", text = "Is it going to be 15 minutes?" },
        { speaker = "pm", expression = "neutral", text = "It's going to be however long it needs to be." },
        { speaker = "qa", expression = "smirk", text = "(Right answer. Took 15 days.)" },

        -- Conditional goodbyes from each team member
        { speaker = "dev", expression = "smiling", text = "Riley. You made my code better by breaking it. That's the highest compliment I know.", condition = {rel_dev_gte = 5} },
        { speaker = "dev", expression = "neutral", text = "Riley. Your bug reports were brutal. But they were always right.", condition = {rel_dev_gte = 0, rel_dev_lt = 5} },
        { speaker = "dev", expression = "tired", text = "Riley. Good luck wherever you test next.", condition = {rel_dev_lt = 0} },

        { speaker = "ux", expression = "neutral", text = "Riley. You caught things I missed in every mockup. That's not QA. That's partnership.", condition = {rel_ux_gte = 5} },
        { speaker = "ux", expression = "neutral", text = "Riley. You cared about the details. More than most.", condition = {rel_ux_gte = 0, rel_ux_lt = 5} },

        { speaker = "arch", expression = "neutral", text = "Riley. You stress-tested my architecture better than any load test could. I mean that.", condition = {rel_arch_gte = 3} },
        { speaker = "arch", expression = "concerned", text = "Riley. I should have listened to your edge cases earlier. Noted for next time.", condition = {rel_arch_lt = 3} },

        { speaker = "po", expression = "neutral", text = "Riley. You told me the truth when I didn't want to hear it. I needed that.", condition = "backed_riley" },
        { speaker = "po", expression = "neutral", text = "Riley. I'll read the bug reports next time. All of them. I promise.", condition = {backed_riley = nil} },

        { speaker = "pm", expression = "neutral", text = "Riley. The conscience of the project. Every team needs one." },

        { text = "..." },

        { speaker = "pm", expression = "neutral", text = "Riley? Close us out." },
        { speaker = "qa", expression = "deadpan", text = "(QA gets the last word. They are giving QA the last word. I am going to be extremely normal about this.)" },

        -- Binary choice: final_forward vs final_backward
        { speaker = "qa", expression = "neutral", text = "(Two ways to end this.)",
            choices = {
                { text = "I'm taking this team's lessons into whatever I test next. Forward.", set = {final_forward = true}, rel = {pm = 1, dev = 1} },
                { text = "89 bugs. 71 closed. Five people who actually listened. I'll remember this one.", set = {final_backward = true}, rel = {ux = 1, po = 1, arch = 1} },
            }
        },

        { speaker = "dev", expression = "smiling", text = "Forward. With fewer bugs.", condition = "final_forward" },
        { speaker = "po", expression = "neutral", text = "I'll remember the bug count forever.", condition = "final_backward" },

        { text = "..." },

        -- 1-on-1 farewell conditional on relationships
        { speaker = "qa", expression = "deadpan", text = "The standup ends. People drift. I stay by the coffee machine." },

        { speaker = "dev", expression = "neutral", text = "Hey. Walk out together?", condition = {rel_dev_gte = 5} },
        { speaker = "qa", expression = "neutral", text = "Sure.", condition = {rel_dev_gte = 5} },
        { speaker = "dev", expression = "smiling", text = "Same team next project? I need someone to keep me honest.", condition = {rel_dev_gte = 5} },
        { speaker = "qa", expression = "smirk", text = "Same team. But I'm filing bugs from day one.", condition = {rel_dev_gte = 5} },

        { speaker = "ux", expression = "neutral", text = "Riley. One thing.", condition = {rel_ux_gte = 5, rel_dev_lt = 5} },
        { speaker = "ux", expression = "neutral", text = "Keep catching what designers miss. It matters more than you think.", condition = {rel_ux_gte = 5, rel_dev_lt = 5} },
        { speaker = "qa", expression = "smirk", text = "(That's the nicest thing a designer has ever said to me. The bar was low. Alex cleared it.)", condition = {rel_ux_gte = 5, rel_dev_lt = 5} },

        { speaker = "qa", expression = "deadpan", text = "I close my laptop. The bug tracker is someone else's problem now.", condition = {rel_dev_lt = 5, rel_ux_lt = 5} },
        { speaker = "qa", expression = "neutral", text = "The break room looks the same as day one. I don't.", condition = {rel_dev_lt = 5, rel_ux_lt = 5} },

        { speaker = "qa", expression = "deadpan", text = "Fifteen days. 89 bugs. Done." },

        { text = "", goto = "day15" }
    }
}
