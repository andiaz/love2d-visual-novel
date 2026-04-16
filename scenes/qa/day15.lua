return {
    title = "Day 15",
    subtitle = "The End",
    narration = "The bug log is closed. 18 open issues remain. They always remain.",

    bg = "break_room",
    bgm = "late_night",

    dialogue = {
        { speaker = "qa", expression = "deadpan", text = "18 open bugs. That's the final count. Down from a peak of 47." },
        { speaker = "qa", expression = "neutral", text = "In QA, you don't celebrate zero bugs. Zero bugs means you stopped looking." },
        { speaker = "qa", expression = "deadpan", text = "18 is honest. 18 says 'we know what's broken and we shipped anyway.'" },

        { text = "..." },

        -- Conditional memory: pushed early
        { speaker = "qa", expression = "neutral", text = "I think about the first day. When I asked about testing strategy before anyone had written a line of code.", condition = "qa_pushed_early" },
        { speaker = "qa", expression = "deadpan", text = "They looked at me like I'd asked for a fire escape plan at a pool party. But I was right.", condition = "qa_pushed_early" },

        -- Conditional memory: stayed quiet
        { speaker = "qa", expression = "deadpan", text = "I think about the first day. When I kept my mouth shut and took notes.", condition = "qa_stayed_quiet" },
        { speaker = "qa", expression = "neutral", text = "Sometimes the best thing QA can do is observe. Learn the system before testing it.", condition = "qa_stayed_quiet" },

        -- Conditional memory: fought scope
        { speaker = "qa", expression = "neutral", text = "I remember the scope fight. Every new feature is a new surface area for bugs.", condition = "fought_scope" },
        { speaker = "qa", expression = "deadpan", text = "I said that out loud and Priya looked at me like I'd cursed her firstborn.", condition = "fought_scope" },

        -- Conditional memory: absorbed scope
        { speaker = "qa", expression = "deadpan", text = "I remember when the scope expanded. My test matrix doubled overnight.", condition = "absorbed_scope" },
        { speaker = "qa", expression = "neutral", text = "More features, same timeline, same QA headcount. The math doesn't lie, even if the project plan does.", condition = "absorbed_scope" },

        -- Conditional memory: took ownership
        { speaker = "qa", expression = "neutral", text = "I think about the bug triage. When the team owned the problems instead of pointing fingers.", condition = "took_ownership" },
        { speaker = "qa", expression = "deadpan", text = "That was the first time in fifteen days I felt like QA was part of the team, not just the team's critic.", condition = "took_ownership" },

        -- Conditional memory: hid bugs
        { speaker = "qa", expression = "deadpan", text = "I think about the bugs we hid for the demo. The div with display:none.", condition = "hid_bugs" },
        { speaker = "qa", expression = "neutral", text = "Hidden bugs are just bugs with better timing. They always come back.", condition = "hid_bugs" },

        -- Conditional memory: backed Riley (self)
        { speaker = "qa", expression = "neutral", text = "I think about the day I finally said what I'd been thinking for a week.", condition = "backed_riley" },
        { speaker = "qa", expression = "deadpan", text = "The room went quiet. Good. Quiet means they were listening for once.", condition = "backed_riley" },

        -- Conditional memory: set boundaries
        { speaker = "qa", expression = "neutral", text = "I think about going home that night. While the others stayed.", condition = "set_boundaries" },
        { speaker = "qa", expression = "deadpan", text = "Tired testers find fewer bugs. That's not opinion. That's data.", condition = "set_boundaries" },

        -- Conditional memory: pulled allnighter
        { speaker = "qa", expression = "deadpan", text = "I think about the all-nighter. Running regression suites at 3 AM. The green checkmarks felt like small victories.", condition = "pulled_allnighter" },
        { speaker = "qa", expression = "neutral", text = "But the bugs I missed the next morning cost more than the bugs I caught that night.", condition = "pulled_allnighter" },

        { text = "..." },

        { speaker = "qa", expression = "neutral", text = "I close the test management tool. Export the final report. Nobody will read it. They never do." },
        { speaker = "qa", expression = "deadpan", text = "That's fine. The report isn't for them. It's for the next QA engineer who inherits this codebase." },
        { speaker = "qa", expression = "neutral", text = "A little note in the wilderness: 'Someone was here. Someone cared about the edge cases.'" },

        { text = "..." },

        { speaker = "qa", expression = "deadpan", text = "I clean my desk. Wash my mug. Put it back in the cabinet." },
        { speaker = "qa", expression = "neutral", text = "The question isn't whether the product has bugs. Everything has bugs. The question is whether anyone listened when I found them." },

        { text = "", goto = "$ending" }
    }
}
