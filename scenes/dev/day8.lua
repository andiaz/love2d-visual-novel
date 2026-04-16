return {
    title = "Day 8 -- Thursday",
    subtitle = "QA Strikes Back",
    narration = "Demo tomorrow. Riley has been testing your code. Riley has notes.",

    bg = "office_day",
    bgm = "tension",

    dialogue = {
        { speaker = "dev", expression = "tired", text = "Thursday. Demo tomorrow. Everything is fine. Everything is absolutely fine." },
        { speaker = "dev", expression = "tired", text = "(I pushed the last commit at 1 AM. The tests pass. My tests pass. Riley's tests are a different universe.)" },

        { speaker = "qa", expression = "neutral", text = "So I've been testing the build." },
        { speaker = "pm", expression = "cheerful", text = "Great! How's it looking?" },
        { speaker = "qa", expression = "deadpan", text = "I have 23 bugs." },
        { speaker = "dev", expression = "frustrated", text = "TWENTY-THREE?!" },
        { speaker = "dev", expression = "tired", text = "(Twenty-three. I wrote unit tests. I wrote integration tests. I tested on three browsers. Twenty-three.)" },
        { speaker = "qa", expression = "neutral", text = "Want the highlights?" },
        { speaker = "dev", expression = "tired", text = "(I do not. But I will get them anyway.)" },

        -- The bug parade - debugging montage
        { speaker = "qa", expression = "neutral", text = "The content feed breaks if you scroll too fast. The API paginates at 20 but the frontend requests 50." },
        { speaker = "dev", expression = "neutral", text = "Works on my machine." },
        { speaker = "qa", expression = "neutral", text = "Your machine has a profile picture, Sam." },
        { speaker = "dev", expression = "frustrated", text = "(She's right. Of course she's right. I never test the empty state because I always have data.)" },

        { speaker = "qa", expression = "smirk", text = "The search bar accepts HTML. I typed a script tag and the page said 'hello Riley.'" },
        { speaker = "dev", expression = "frustrated", text = "...that's an XSS vulnerability." },
        { speaker = "dev", expression = "tired", text = "(I forgot to sanitize inputs on the search bar. I sanitized the form fields. I sanitized the comments. I forgot the search bar. The one field everyone types into.)" },

        { speaker = "qa", expression = "neutral", text = "That's bug number 7. Want to hear what happens when a user's name contains an emoji?" },
        { speaker = "dev", expression = "tired", text = "(I do not.)" },
        { speaker = "qa", expression = "smirk", text = "It crashes. The whole app. The emoji gets encoded as a four-byte UTF-8 sequence and the database column is set to three-byte max." },
        { speaker = "dev", expression = "frustrated", text = "(A charset issue. A CHARSET ISSUE. I've been writing code for eight years and I got taken down by a smiley face.)" },

        { speaker = "qa", expression = "neutral", text = "Bug 15. The notification system sends duplicates. Eleven alerts for one comment." },
        { speaker = "dev", expression = "tired", text = "(The event listener isn't deregistering. I knew this. I wrote a TODO comment. The TODO is still a TODO.)" },

        { speaker = "qa", expression = "neutral", text = "Bug 19. Auto-save fires on every keystroke. 1,247 database writes for a 200-word article." },
        { speaker = "dev", expression = "frustrated", text = "That's a debounce issue. I forgot the debounce." },
        { speaker = "dev", expression = "tired", text = "(I literally have a utility function called debounce. I imported it. I never called it. The import statement is sitting there, mocking me.)" },

        { speaker = "arch", expression = "concerned", text = "This is what happens when we skip the architecture review. I had a whole--" },
        { speaker = "dev", expression = "neutral", text = "Let me guess -- page 11 of the architecture doc. We know." },

        -- Stack trace montage
        { speaker = "dev", expression = "tired", text = "(I open the console. The stack traces are everywhere. Each one is a story. Each story ends with 'Sam forgot something.')" },
        { speaker = "dev", expression = "tired", text = "(Line 247: null reference. Line 512: unhandled promise rejection. Line 89: off-by-one in the pagination offset. The classics. All the classics.)" },

        -- Triage
        { speaker = "pm", expression = "stressed", text = "Demo is tomorrow. We need to triage. Whose responsibility is this?" },

        { speaker = "dev", expression = "neutral", text = "(Three honest answers. None of them feel good.)",
            choices = {
                { text = "Most of these are mine. I should have written tests. I'll own it.", set = {took_ownership = true}, rel = {qa = 2, ux = 1, pm = 1} },
                { text = "Requirements were a moving target. We all share this.", set = {shared_blame = true}, rel = {pm = 1, qa = 1, po = 1} },
                { text = "We can't fix 23 bugs by tomorrow. Let's scope the demo around the parts that work.", set = {hid_bugs = true}, rel = {pm = 2, po = 1, qa = -2} },
            }
        },

        -- Ownership
        { speaker = "dev", expression = "neutral", text = "The XSS, the empty state crash, the scroll bug, the debounce -- those are all mine. I'll fix them tonight.", condition = "took_ownership" },
        { speaker = "qa", expression = "neutral", text = "I appreciate that. Let me triage with you. We can knock out the worst ones together.", condition = "took_ownership" },
        { speaker = "dev", expression = "tired", text = "(Owning it hurts. Not owning it hurts more, eventually.)", condition = "took_ownership" },
        { speaker = "dev", expression = "neutral", text = "Give me the priority list. I'll start with the XSS. Security first.", condition = "took_ownership" },

        -- Shared
        { speaker = "po", expression = "neutral", text = "Well... the scope did shift a couple of times. That might be on me.", condition = "shared_blame" },
        { speaker = "dev", expression = "neutral", text = "Four times.", condition = "shared_blame" },
        { speaker = "pm", expression = "neutral", text = "Let's focus on fixing, not counting. What can we ship by tomorrow?", condition = "shared_blame" },
        { speaker = "dev", expression = "tired", text = "(Four requirement changes. Each one meant rewriting a component. Each rewrite introduced new bugs. The math is simple. The blame is shared.)", condition = "shared_blame" },

        -- Hide
        { speaker = "qa", expression = "deadpan", text = "Hide them? That's your solution?", condition = "hid_bugs" },
        { speaker = "dev", expression = "neutral", text = "Not hide. Scope. We don't show search. We don't show profiles. We demo the feed and the create flow.", condition = "hid_bugs" },
        { speaker = "qa", expression = "deadpan", text = "So we demo... the feed. Just the feed.", condition = "hid_bugs" },
        { speaker = "pm", expression = "neutral", text = "A focused demo. I like the spin.", condition = "hid_bugs" },
        { speaker = "dev", expression = "tired", text = "(A focused demo. Also known as 'the only part that doesn't crash.')", condition = "hid_bugs" },

        -- Callbacks
        { speaker = "qa", expression = "neutral", text = "For what it's worth, the features you and Alex paired on? Half the bug rate of the solo work.", condition = "paired_with_dev" },
        { speaker = "dev", expression = "smiling", text = "(Pairing worked. The features Alex watched me build have fewer bugs. Real-time feedback catches the dumb mistakes before they become dumb bugs.)", condition = "paired_with_dev" },

        { speaker = "qa", expression = "neutral", text = "Six of these bugs trace back to the scope changes. More features, more surface area, more breaks.", condition = "absorbed_scope" },
        { speaker = "dev", expression = "tired", text = "(Six bugs from scope creep. Each scope change was a rewrite. Each rewrite was a chance to introduce new errors. I knew this. I said nothing.)", condition = "absorbed_scope" },

        -- Break room
        { speaker = "dev", expression = "tired", text = "(Break room. Alone with my laptop. The stack traces glow in the dark.)", bg = "break_room" },
        { speaker = "dev", expression = "tired", text = "(I open the debugger. Line 247. Null reference. The profile picture URL is undefined when no picture exists. A ternary operator would fix this. One line. One line I didn't write.)" },
        { speaker = "dev", expression = "tired", text = "(I start fixing. The XSS first. Input sanitization. DOMPurify. Import, wrap, done. That's five minutes for a bug that could have stolen session tokens.)" },
        { speaker = "dev", expression = "neutral", text = "(The debounce. Add the call. Test. The database writes drop from 1,247 to 3. Three saves for a 200-word article. That's sane. That's human.)" },
        { speaker = "dev", expression = "tired", text = "(QA is the team's immune system. You don't appreciate it until something goes wrong. Right now, my code is the something.)" },

        -- Choice 2
        { speaker = "dev", expression = "tired", text = "(It's getting late. The critical bugs are fixed. But there are still fifteen more on the list. How do I spend the rest of the night?)",
            choices = {
                { text = "Keep coding. Fix every bug I can reach. Sleep is for after the demo.", set = {bug_fix_focused = true}, rel = {qa = 1, pm = 1} },
                { text = "Write regression tests for every fix. Make sure these bugs never come back.", set = {bug_process_focused = true}, rel = {qa = 1, arch = 1} },
                { text = "Document which bugs came from which requirement changes. The team needs to see this pattern.", set = {bug_blame_focused = true}, rel = {po = -1, pm = -1, qa = 1} },
            }
        },

        { speaker = "dev", expression = "tired", text = "Headphones on. Coffee poured. Bug 8. Bug 9. Bug 10. Each one a conversation with my own past mistakes.", condition = "bug_fix_focused" },
        { speaker = "dev", expression = "neutral", text = "(Fix the bug. Test the fix. Move to the next. The rhythm of atonement.)", condition = "bug_fix_focused" },

        { speaker = "dev", expression = "neutral", text = "Every fix gets a test. Unit test for the XSS. Integration test for the pagination. End-to-end test for the auto-save.", condition = "bug_process_focused" },
        { speaker = "dev", expression = "tired", text = "(If I'd written these tests a week ago, Riley's list would have been 12, not 23. Lesson learned. Lesson documented in code.)", condition = "bug_process_focused" },

        { speaker = "dev", expression = "tired", text = "Bug-to-requirement mapping. Bug 3: added when profiles were redesigned. Bug 7: search was a late addition. Bug 12: emoji names came from the i18n requirement change.", condition = "bug_blame_focused" },
        { speaker = "dev", expression = "neutral", text = "(This isn't about blame. This is about showing the team that every scope change has a cost measured in defects.)", condition = "bug_blame_focused" },

        { speaker = "dev", expression = "tired", text = "(Day 8. Twenty-three bugs. A night of stack traces. Tomorrow we demo whatever survives.)" },

        { text = "", goto = "day9" }
    }
}
