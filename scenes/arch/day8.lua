return {
    title = "Day 8 -- Thursday",
    subtitle = "QA Strikes",
    narration = "Riley has 23 bugs. Eight of them are architectural. None of them are surprising. You saw them coming. You drew them on the whiteboard. Nobody read the whiteboard.",

    bg = "office_day",
    bgm = "tension",

    dialogue = {
        { speaker = "arch", expression = "concerned", text = "Thursday. Demo tomorrow. Riley has The List. The List has been waiting." },
        { speaker = "arch", expression = "concerned", text = "(I could have predicted The List. I did predict The List. Section 4.2 of the architecture document. 'Risk: insufficient input validation across user-facing endpoints.')" },

        { speaker = "qa", expression = "neutral", text = "So I've been testing the prototype." },
        { speaker = "pm", expression = "cheerful", text = "Great! How's it looking?" },
        { speaker = "qa", expression = "deadpan", text = "I have 23 bugs." },
        { speaker = "dev", expression = "frustrated", text = "Twenty-three?!" },
        { speaker = "arch", expression = "concerned", text = "(I drew the diagram for at least 8 of those. They were in the architecture doc nobody opened. Page 11. The page after the table of contents that nobody got past.)" },

        { speaker = "qa", expression = "neutral", text = "Content feed breaks if you scroll too fast. Profile crashes if no profile picture." },
        { speaker = "dev", expression = "neutral", text = "Works on my machine." },
        { speaker = "qa", expression = "neutral", text = "Sam, your laptop literally has a face on it." },
        { speaker = "arch", expression = "concerned", text = "(Pagination mismatch. Section 3.1. 'API pagination boundary: 20 items. Frontend batch size must match.' It's in the doc. In a blue box. With an exclamation mark.)" },

        { speaker = "qa", expression = "smirk", text = "Search bar accepts HTML. I typed a script tag and the page said 'hello Riley.'" },
        { speaker = "dev", expression = "frustrated", text = "...that's a security issue." },
        { speaker = "arch", expression = "concerned", text = "(Input validation. Section 4.2. Page 11. I even wrote the regex pattern for the sanitization. The regex is in the doc. The doc is in Confluence. Confluence is in the cloud. The cloud doesn't care.)" },

        { speaker = "qa", expression = "neutral", text = "Bug 12. Emoji in a username crashes everything." },
        { speaker = "arch", expression = "concerned", text = "(UTF-8 encoding. Section 2.4. 'Database columns must support 4-byte UTF-8 for international character sets.' I specified utf8mb4 in the schema recommendations. Sam used utf8. UTF-8 is not utf8mb4. This distinction matters to a database and to nobody else on earth.)" },

        { speaker = "qa", expression = "neutral", text = "Bug 19. Auto-save fires every keystroke. 1,247 writes for one article." },
        { speaker = "arch", expression = "concerned", text = "(Event debouncing. Section 5.1. 'All user-triggered persistence events must be debounced at minimum 2000ms.' I wrote the number. 2000ms. It's right there.)" },

        -- The doc
        { speaker = "arch", expression = "concerned", text = "This is what happens when we skip the architecture review. I had a whole--" },
        { speaker = "dev", expression = "neutral", text = "Yeah, yeah. Architecture doc. Page 11. Everyone knows, Casey." },
        { speaker = "arch", expression = "concerned", text = "(They know. They knew. The knowing didn't help. Architecture documents are the most expensive wallpaper in software engineering.)" },

        -- Architectural vs implementation
        { speaker = "arch", expression = "neutral", text = "Let me categorize these. Eight are architectural -- pagination boundaries, encoding, event handling, input validation. Those were in the design doc. Those were preventable." },
        { speaker = "arch", expression = "concerned", text = "Ten are implementation bugs -- null references, off-by-ones, missing error handling. Those are Sam's domain." },
        { speaker = "arch", expression = "neutral", text = "Five are integration bugs -- the pieces work alone but break when connected. Those are the gaps between what I designed and what Sam built." },
        { speaker = "dev", expression = "tired", text = "So the bugs have a taxonomy now." },
        { speaker = "arch", expression = "concerned", text = "Everything has a taxonomy, Sam. That's how systems work." },
        { speaker = "qa", expression = "smirk", text = "(Casey just categorized the bugs into a three-tier architecture. Of course Casey did.)" },

        -- Triage
        { speaker = "pm", expression = "stressed", text = "Demo is tomorrow. Triage. Whose responsibility is this?" },

        { speaker = "arch", expression = "neutral", text = "(Three options. As the architect, I have to model the response I want everyone else to take.)",
            choices = {
                { text = "Take a slice. 'I called these out but didn't push hard enough. I should have pulled rank.'", set = {took_ownership = true}, rel = {dev = 2, qa = 2, ux = 1} },
                { text = "Spread it. 'The process broke. The doc was there. We all share this.'", set = {shared_blame = true}, rel = {dev = 0, qa = 1, pm = 1} },
                { text = "Scope down. 'Cut the broken features. We demo only the parts the architecture actually supports.'", set = {hid_bugs = true}, rel = {dev = -1, qa = -2, pm = 1} },
            }
        },

        -- Ownership
        { speaker = "arch", expression = "concerned", text = "I called these out in the doc. I didn't push hard enough. I should have pulled rank. I should have blocked the merge until the validation was in place.", condition = "took_ownership" },
        { speaker = "arch", expression = "neutral", text = "Riley, can we triage the architectural bugs together? I know exactly which sections of the codebase need fixing.", condition = "took_ownership" },
        { speaker = "qa", expression = "neutral", text = "Casey. Yes. Let's go.", condition = "took_ownership" },
        { speaker = "dev", expression = "smiling", text = "Did Casey just take responsibility?", condition = "took_ownership" },
        { speaker = "arch", expression = "neutral", text = "(Owning the failure is harder than designing the system. An architecture document that nobody reads is the architect's failure, not the team's.)", condition = "took_ownership" },

        -- Shared
        { speaker = "po", expression = "neutral", text = "Honestly... the requirements weren't exactly stable. I take some responsibility for that.", condition = "shared_blame" },
        { speaker = "dev", expression = "neutral", text = "Four times.", condition = "shared_blame" },
        { speaker = "arch", expression = "concerned", text = "The doc was there. We all share this. Let's fix what we can, and improve the process for next sprint.", condition = "shared_blame" },
        { speaker = "arch", expression = "neutral", text = "(The process. The architecture review that got skipped. The doc that got ignored. Shared blame is accurate. It's also insufficient.)", condition = "shared_blame" },

        -- Hide
        { speaker = "arch", expression = "concerned", text = "Cut the broken features. Demo only what the architecture actually supports. The feed and the create flow are on solid ground. Everything else is on sand.", condition = "hid_bugs" },
        { speaker = "qa", expression = "deadpan", text = "Casey is reframing 'we have bugs' as 'we have a focused architecture.' That's almost impressive.", condition = "hid_bugs" },
        { speaker = "arch", expression = "concerned", text = "(I am doing the architect thing where the failure becomes a virtue. I am ashamed and effective at the same time.)", condition = "hid_bugs" },
        { speaker = "arch", expression = "neutral", text = "The features we're cutting never had proper architecture support anyway. The search was bolted on. The comments were an afterthought. The architecture is showing us what's real.", condition = "hid_bugs" },

        -- Callbacks
        { speaker = "qa", expression = "neutral", text = "The paired features have half the bugs. The architecture held where the build process included real-time review.", condition = "paired_with_dev" },
        { speaker = "arch", expression = "neutral", text = "(Pairing. Real-time architecture review by proxy. When the designer and developer work together, they naturally follow the patterns I documented. The doc works when it's embodied in practice, not when it sits in Confluence.)", condition = "paired_with_dev" },

        { speaker = "qa", expression = "deadpan", text = "Six bugs trace to scope expansion. Each new feature was added without an architecture review.", condition = "absorbed_scope" },
        { speaker = "arch", expression = "concerned", text = "(Six bugs. Six features added without consulting the architecture. Each one a load-bearing wall added without checking the foundation. I should have said no louder.)", condition = "absorbed_scope" },

        -- Break room
        { speaker = "arch", expression = "concerned", text = "(Break room. I'm re-reading my own architecture document. Page 11. Section 4.2. It's all there.)", bg = "break_room" },
        { speaker = "arch", expression = "concerned", text = "(The document predicted eight bugs. Eight. I wrote the risks. I wrote the mitigations. I even wrote the code patterns. Nobody read them.)" },
        { speaker = "arch", expression = "neutral", text = "(The question isn't 'was the architecture right?' The question is 'does it matter if the architecture is right and nobody follows it?')" },
        { speaker = "arch", expression = "concerned", text = "(An unread architecture document is a tree falling in an empty forest. Technically correct. Practically silent.)" },

        -- Choice 2
        { speaker = "arch", expression = "neutral", text = "(The bugs are categorized. The fixes are mapped. But there's a larger question. What do I do with the pattern I see?)",
            choices = {
                { text = "Write the fix implementations. Inline the validation patterns from the doc directly into the codebase.", set = {bug_fix_focused = true}, rel = {dev = 1, qa = 1} },
                { text = "Create architectural decision records. Every future feature gets an ADR before code is written.", set = {bug_process_focused = true}, rel = {pm = 1, qa = 1} },
                { text = "Present the bug taxonomy to the team. Show exactly which bugs were architectural and which were preventable.", set = {bug_blame_focused = true}, rel = {dev = -1, pm = -1, qa = 1} },
            }
        },

        { speaker = "arch", expression = "neutral", text = "Opening the codebase. The validation patterns from section 4.2 are going in tonight. Input sanitization. UTF-8 encoding fix. Pagination boundary alignment.", condition = "bug_fix_focused" },
        { speaker = "arch", expression = "concerned", text = "(The architect writing code. The doc becomes implementation. This is what should have happened two weeks ago.)", condition = "bug_fix_focused" },

        { speaker = "arch", expression = "neutral", text = "ADR template. Context. Decision. Consequences. Status. Every architectural choice gets documented in a format that lives next to the code, not in Confluence.", condition = "bug_process_focused" },
        { speaker = "arch", expression = "concerned", text = "(Architecture Decision Records. The doc that nobody reads, replaced by a doc that lives where the code lives. Maybe proximity is the variable I've been missing.)", condition = "bug_process_focused" },

        { speaker = "arch", expression = "neutral", text = "Bug taxonomy presentation. Eight architectural. Ten implementation. Five integration. Slide deck. Color coded. The team needs to see where the system failed.", condition = "bug_blame_focused" },
        { speaker = "arch", expression = "concerned", text = "(Taxonomy is not blame. Taxonomy is understanding. But it's going to feel like blame. Especially to Sam.)", condition = "bug_blame_focused" },

        { speaker = "arch", expression = "concerned", text = "(QA is the team's immune system. The architect is the team's blood pressure. Today, mine is high.)" },

        { text = "", goto = "day9" }
    }
}
