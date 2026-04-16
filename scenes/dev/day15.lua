return {
    title = "Day 15",
    subtitle = "The End",
    narration = "The build is green. The office is empty. Time to push one last commit.",

    bg = "break_room",
    bgm = "late_night",

    dialogue = {
        { speaker = "dev", expression = "tired", text = "The CI pipeline is green. All 247 tests pass. I don't trust any of them." },
        { speaker = "dev", expression = "neutral", text = "Fifteen days of commits. My git log reads like a diary I didn't mean to write." },

        { text = "..." },

        -- Conditional memory: fought scope
        { speaker = "dev", expression = "neutral", text = "I remember saying no to the real-time collab feature. Priya looked at me like I'd kicked her dog.", condition = "fought_scope" },
        { speaker = "dev", expression = "tired", text = "But the codebase is clean. Maintainable. That's not nothing.", condition = "fought_scope" },

        -- Conditional memory: absorbed scope
        { speaker = "dev", expression = "frustrated", text = "I remember saying yes to the scope creep. Writing a fake real-time engine with CSS animations and prayer.", condition = "absorbed_scope" },
        { speaker = "dev", expression = "tired", text = "The code works. I'm not proud of it. But it works.", condition = "absorbed_scope" },

        -- Conditional memory: paired with UX
        { speaker = "dev", expression = "neutral", text = "I think about those pairing sessions with Alex. The designer who actually wanted to understand the constraints.", condition = "paired_with_dev" },
        { speaker = "dev", expression = "smiling", text = "First time a designer said 'show me the API response' and meant it.", condition = "paired_with_dev" },

        -- Conditional memory: took ownership of bugs
        { speaker = "dev", expression = "neutral", text = "I think about the bug triage. When I said 'these are mine' instead of pointing fingers.", condition = "took_ownership" },
        { speaker = "dev", expression = "tired", text = "Owning your bugs is like owning your code. It's all yours, the beautiful parts and the ugly ones.", condition = "took_ownership" },

        -- Conditional memory: hid bugs
        { speaker = "dev", expression = "frustrated", text = "I think about the bugs we hid for the demo. The div with display:none covering a broken feature.", condition = "hid_bugs" },
        { speaker = "dev", expression = "tired", text = "Technical debt isn't a metaphor when you're the one paying interest.", condition = "hid_bugs" },

        -- Conditional memory: set boundaries
        { speaker = "dev", expression = "neutral", text = "I think about the night I went home. Closed the laptop. Stared at the ceiling instead of a screen.", condition = "set_boundaries" },
        { speaker = "dev", expression = "tired", text = "The code I wrote the next morning was better than anything I'd have written at 2 AM.", condition = "set_boundaries" },

        -- Conditional memory: pulled allnighter
        { speaker = "dev", expression = "tired", text = "I think about the all-nighter. The empty Red Bull cans. The commit messages getting progressively less coherent.", condition = "pulled_allnighter" },
        { speaker = "dev", expression = "tired", text = "'fix: fixed the fix that fixed the thing' -- 3:47 AM. I still don't know what that commit does.", condition = "pulled_allnighter" },

        -- Conditional memory: backed Riley
        { speaker = "dev", expression = "neutral", text = "I think about Riley's moment. When they finally said what needed saying.", condition = "backed_riley" },
        { speaker = "dev", expression = "tired", text = "QA catches what developers miss. That's not a failure of development. That's the system working.", condition = "backed_riley" },

        { text = "..." },

        { speaker = "dev", expression = "neutral", text = "I run git log --oneline one last time. 312 commits. Some of them even have useful messages." },
        { speaker = "dev", expression = "tired", text = "The staging server is still running. I should shut it down." },
        { speaker = "dev", expression = "neutral", text = "I don't." },
        { speaker = "dev", expression = "tired", text = "Someone will notice eventually. Or it'll run forever, serving pages to nobody. There are worse fates for code." },

        { text = "..." },

        { speaker = "dev", expression = "neutral", text = "I unplug my headphones. Put them in my bag. Close the terminal." },
        { speaker = "dev", expression = "tired", text = "The question isn't whether the code was good. It's whether it was honest." },

        { text = "", goto = "$ending" }
    }
}
