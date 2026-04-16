return {
    title = "Day 8 -- Thursday",
    subtitle = "QA Strikes",
    narration = "Demo tomorrow. Riley has a list. The list is long. Some of those bugs are because of features YOU added.",

    bg = "office_day",
    bgm = "tension",

    dialogue = {
        { speaker = "po", expression = "excited", text = "Thursday. Demo tomorrow. The vision is almost real." },
        { speaker = "po", expression = "defensive", text = "(Almost. The most dangerous word in product ownership. 'Almost' means 'not yet' with better marketing.)" },

        { speaker = "qa", expression = "neutral", text = "Been hammering on the prototype since yesterday." },
        { speaker = "pm", expression = "cheerful", text = "Great! How's it looking?" },
        { speaker = "qa", expression = "deadpan", text = "I have 23 bugs." },
        { speaker = "dev", expression = "frustrated", text = "Twenty-three?!" },
        { speaker = "po", expression = "defensive", text = "(Twenty-three bugs. I know what's coming. I can count the requirement changes in my head. I can map them to bugs before Riley even reads the list.)" },

        { speaker = "qa", expression = "neutral", text = "The content feed breaks if you scroll too fast. Profile crashes if no profile picture." },
        { speaker = "dev", expression = "neutral", text = "Works on my machine." },
        { speaker = "qa", expression = "neutral", text = "Your machine has a profile picture, Sam." },

        { speaker = "qa", expression = "smirk", text = "Search bar accepts HTML. I typed a script tag and the page said 'hello Riley.'" },
        { speaker = "dev", expression = "frustrated", text = "...we have a security problem there." },
        { speaker = "po", expression = "defensive", text = "(Search was my idea. I pushed for full-text search in sprint one. Sam said it was premature. Sam was right.)" },

        { speaker = "qa", expression = "neutral", text = "Bug 12. Emoji in a username crashes the entire application." },
        { speaker = "po", expression = "neutral", text = "(International user support. That was my requirement from day three. 'Support all character sets.' I said it in the meeting like it was one line of code.)" },

        { speaker = "qa", expression = "neutral", text = "And the comment threads -- they break if a parent comment is deleted." },
        { speaker = "po", expression = "defensive", text = "(That's mine. Comments were my compromise from the scope negotiation. The cascading delete edge case never made it into the requirements because I never thought of it.)" },
        { speaker = "qa", expression = "neutral", text = "The comment nesting also breaks at depth 4. The layout overflows. The reply button disappears off-screen." },
        { speaker = "po", expression = "defensive", text = "(Nesting depth. I said 'infinite nesting' in the requirements doc. Sam asked 'how deep?' and I said 'as deep as the conversation goes.' That's not a requirement. That's a poem.)" },

        { speaker = "qa", expression = "neutral", text = "Bug 19. Auto-save fires on every keystroke. 1,247 database writes for a 200-word article." },
        { speaker = "po", expression = "neutral", text = "(Auto-save. 'Like Google Docs.' I said 'like Google Docs' as though Google Docs was built by five people in two weeks.)" },

        { speaker = "arch", expression = "concerned", text = "No architecture review, no surprise it broke. I literally had a whole--" },
        { speaker = "dev", expression = "neutral", text = "The diagram again, Casey? We get it. You warned us." },

        -- Triage - scope creep reckoning
        { speaker = "pm", expression = "stressed", text = "Demo is tomorrow. We need to triage. Whose responsibility is this?" },
        { speaker = "po", expression = "neutral", text = "(I already know the answer. Eight of these bugs trace back to my requirement changes. The product vision had bugs before the product had bugs.)" },

        { speaker = "po", expression = "neutral", text = "(Three options. None of them feel like product strategy. All of them feel like adulthood.)",
            choices = {
                { text = "Step up. 'A lot of these are because I changed the requirements. I own it.'", set = {took_ownership = true}, rel = {dev = 2, qa = 2, pm = 1} },
                { text = "Spread it. 'We all share this. The requirements were a moving target.'", set = {shared_blame = true}, rel = {dev = 0, qa = 1, pm = 1} },
                { text = "Scope down. 'Cut the broken features from the demo. Show only what works.'", set = {hid_bugs = true}, rel = {pm = 1, dev = -1, qa = -2} },
            }
        },

        -- Ownership
        { speaker = "po", expression = "neutral", text = "I changed requirements four times. Eight of these bugs are direct consequences. The comment threading, the search, the auto-save -- those are my scope decisions gone wrong.", condition = "took_ownership" },
        { speaker = "po", expression = "neutral", text = "Riley, can we triage together? I need to understand which requirements caused which bugs.", condition = "took_ownership" },
        { speaker = "qa", expression = "neutral", text = "...yes. Yes, we can. Thank you, Priya.", condition = "took_ownership" },
        { speaker = "dev", expression = "smiling", text = "(Did Priya just OWN something?)", condition = "took_ownership" },
        { speaker = "po", expression = "neutral", text = "(That cost me. It also bought me something. The team looks different at me now. Less guarded. More 'we.')", condition = "took_ownership" },

        -- Shared
        { speaker = "po", expression = "neutral", text = "Look... I know the requirements shifted. More than once. That's partly on me.", condition = "shared_blame" },
        { speaker = "dev", expression = "neutral", text = "Four times.", condition = "shared_blame" },
        { speaker = "pm", expression = "neutral", text = "Let's focus on fixing, not counting. What can we ship by tomorrow?", condition = "shared_blame" },
        { speaker = "po", expression = "neutral", text = "(Four times. Sam counted. Sam always counts. The shared blame is technically accurate and emotionally insufficient.)", condition = "shared_blame" },

        -- Hide
        { speaker = "po", expression = "neutral", text = "Cut the broken features. Demo only the parts that work. Spin it as 'focus.'", condition = "hid_bugs" },
        { speaker = "qa", expression = "deadpan", text = "Including the comment threads I just spent a week testing?", condition = "hid_bugs" },
        { speaker = "po", expression = "defensive", text = "(I'm sorry, Riley. The feature I pushed for is the feature we're hiding.)", condition = "hid_bugs" },
        { speaker = "pm", expression = "neutral", text = "A focused demo. I like the spin.", condition = "hid_bugs" },
        { speaker = "po", expression = "defensive", text = "(Spin. The word POs use when 'lying' feels too honest.)", condition = "hid_bugs" },

        -- Callbacks
        { speaker = "qa", expression = "neutral", text = "The paired features have half the bug rate. Scope changes that were built collaboratively broke less.", condition = "paired_with_dev" },
        { speaker = "po", expression = "neutral", text = "(Pairing. When the designer and developer built my requirements together, the requirements actually worked. Maybe requirements aren't documents. Maybe they're conversations.)", condition = "paired_with_dev" },

        { speaker = "qa", expression = "deadpan", text = "Six of these bugs trace directly to scope expansion. Every feature you added was another surface for failure.", condition = "absorbed_scope" },
        { speaker = "po", expression = "defensive", text = "(Six. Riley counted. Riley always counts. Six bugs from my ambition. The product vision has a bug count now.)", condition = "absorbed_scope" },
        { speaker = "po", expression = "neutral", text = "(The features I pushed for. The scope I expanded. The bugs those decisions created. Product ownership means owning the bugs too.)", condition = "absorbed_scope" },

        -- Break room
        { speaker = "po", expression = "neutral", text = "(Break room. I'm reading Riley's bug report. Eight bugs trace to my requirement changes. That's not Riley's opinion. That's a fact.)", bg = "break_room" },
        { speaker = "po", expression = "defensive", text = "(I said 'like Google Docs.' I said 'infinite nesting.' I said 'support all character sets.' Each one sounded like a sentence. Each one was actually a month of engineering.)" },
        { speaker = "po", expression = "neutral", text = "(The gap between 'what users need' and 'what we can build in two weeks' is measured in bugs. Twenty-three bugs. That's my gap, made visible.)" },
        { speaker = "po", expression = "neutral", text = "(QA. The conscience of the project. I have spent a week not listening. Riley was counting the whole time.)" },

        -- Choice 2
        { speaker = "po", expression = "neutral", text = "(Tomorrow is the demo. Tonight is the reckoning. How do I process this?)",
            choices = {
                { text = "Rewrite the requirements doc. Make every requirement testable. No more 'like Google Docs.'", set = {bug_fix_focused = true}, rel = {qa = 1, dev = 1} },
                { text = "Build a scope change impact tracker. Every future requirement gets a bug risk score.", set = {bug_process_focused = true}, rel = {qa = 1, arch = 1} },
                { text = "Schedule a meeting with the director. The vision needs to be grounded in what this team can actually ship.", set = {bug_blame_focused = true}, rel = {pm = -1, dev = -1, qa = 1} },
            }
        },

        { speaker = "po", expression = "neutral", text = "Requirements rewrite. 'Auto-save: debounced, 3-second delay, conflict resolution on concurrent edits.' That's a requirement. 'Like Google Docs' is a dream.", condition = "bug_fix_focused" },
        { speaker = "po", expression = "neutral", text = "(Writing requirements that engineers can actually build. That's the job I should have been doing from day one.)", condition = "bug_fix_focused" },

        { speaker = "po", expression = "neutral", text = "Scope change tracker. Every new feature gets a complexity estimate, a test surface estimate, and a bug risk score before it enters the sprint.", condition = "bug_process_focused" },
        { speaker = "po", expression = "neutral", text = "(Process. The thing I always thought slowed us down. Turns out no process is what slows us down.)", condition = "bug_process_focused" },

        { speaker = "po", expression = "neutral", text = "Meeting request sent. 'Product Vision Reality Check.' The director needs to know what this team can and cannot ship in a two-week sprint.", condition = "bug_blame_focused" },
        { speaker = "po", expression = "defensive", text = "(If leadership keeps expecting Google Docs from a five-person team in two weeks, the bugs will keep coming. Someone has to say it.)", condition = "bug_blame_focused" },

        { speaker = "po", expression = "neutral", text = "(Day 8. The product vision has 23 bugs. The PO is learning that vision without testing is just imagination.)" },

        { text = "", goto = "day9" }
    }
}
