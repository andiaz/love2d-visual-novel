return {
    title = "Day 8 -- Thursday",
    subtitle = "QA Strikes",
    narration = "Demo tomorrow. Riley has been testing. Riley has found things.",

    bg = "office_day",
    bgm = "tension",

    dialogue = {
        { speaker = "ux", expression = "neutral", text = "Thursday. Demo tomorrow. The prototype is real. The prototype is also, apparently, broken." },
        { speaker = "ux", expression = "frustrated", text = "(I spent three days refining the interaction design. Riley spent one night proving half of it doesn't work.)" },

        -- Riley strikes
        { speaker = "qa", expression = "neutral", text = "I've been putting the prototype through its paces." },
        { speaker = "pm", expression = "cheerful", text = "Great! How's it looking?" },
        { speaker = "qa", expression = "deadpan", text = "I have 23 bugs." },
        { speaker = "dev", expression = "frustrated", text = "Twenty-three?!" },
        { speaker = "ux", expression = "frustrated", text = "(Twenty-three. Some of those are going to be design issues. I can feel it.)" },
        { speaker = "qa", expression = "neutral", text = "Want the highlights?" },
        { speaker = "pm", expression = "neutral", text = "Do we have a choice?" },

        -- The bug parade
        { speaker = "qa", expression = "neutral", text = "The content feed breaks if you scroll too fast. The profile page crashes if the user has no profile picture." },
        { speaker = "dev", expression = "neutral", text = "Works on my machine." },
        { speaker = "qa", expression = "neutral", text = "Is that a profile picture on your laptop, Sam?" },
        { speaker = "ux", expression = "frustrated", text = "(The empty state. I designed a beautiful empty state for profiles. I never told Sam about the fallback image. That's a design handoff failure. That's mine.)" },

        { speaker = "qa", expression = "smirk", text = "The search bar accepts HTML. I typed a script tag and the page said 'hello Riley.'" },
        { speaker = "dev", expression = "frustrated", text = "...yeah, that's a security hole." },
        { speaker = "qa", expression = "neutral", text = "That's bug number 7. Want to hear about what happens when a user's name contains an emoji?" },
        { speaker = "dev", expression = "frustrated", text = "Please don't." },
        { speaker = "qa", expression = "smirk", text = "The whole app crashes. One emoji in a username and every screen that displays a name breaks." },

        -- Accessibility discovery
        { speaker = "qa", expression = "neutral", text = "Oh, and I ran the accessibility audit." },
        { speaker = "ux", expression = "neutral", text = "(Please no. Please not the accessibility audit.)" },
        { speaker = "qa", expression = "deadpan", text = "The color contrast on the primary buttons fails WCAG AA. The font size on the caption text is 11px. The drag-and-drop has no keyboard alternative." },
        { speaker = "ux", expression = "frustrated", text = "The drag-and-drop has no keyboard--" },
        { speaker = "qa", expression = "neutral", text = "None. A screen reader user cannot reorder content. At all. The feature is invisible to them." },
        { speaker = "ux", expression = "frustrated", text = "(I designed an interaction that excludes people. That's not a bug. That's a design failure. That's the worst kind of failure.)" },
        { speaker = "qa", expression = "neutral", text = "The tab order skips the navigation and lands on the footer. I tried to use the site with only a keyboard. I got trapped in the modal. Couldn't escape. Had to refresh." },
        { speaker = "ux", expression = "frustrated", text = "Trapped in the modal." },
        { speaker = "qa", expression = "deadpan", text = "Trapped. Like a user in an escape room designed by someone who forgot about doors." },

        { speaker = "arch", expression = "concerned", text = "I said we needed the architecture review first. I had an entire--" },
        { speaker = "dev", expression = "neutral", text = "Yes, Casey. The diagram. We've seen the diagram." },

        -- The blame game
        { speaker = "pm", expression = "stressed", text = "Okay, the demo is tomorrow. We need to triage these. Whose responsibility is this?" },

        { speaker = "ux", expression = "neutral", text = "The blame game begins. What do I do?",
            choices = {
                { text = "Some of these are design issues. I should have caught edge cases.", set = {took_ownership = true}, rel = {qa = 2, dev = 2, pm = 1} },
                { text = "The requirements were unclear. We all share responsibility.", set = {shared_blame = true}, rel = {pm = 1, qa = 1, po = 1} },
                { text = "We can't fix 23 bugs by tomorrow. Let's hide the broken parts.", set = {hid_bugs = true}, rel = {pm = 2, po = 1, qa = -2, dev = -1} },
            }
        },

        -- Ownership path
        { speaker = "ux", expression = "neutral", text = "The empty state crash is a design handoff issue. I designed the fallback but never documented it. The accessibility failures are mine. All of them.", condition = "took_ownership" },
        { speaker = "dev", expression = "neutral", text = "Hold on -- the profile crash isn't a design issue. That's on me.", condition = "took_ownership" },
        { speaker = "qa", expression = "neutral", text = "I appreciate you both owning it. Shall we triage together?", condition = "took_ownership" },
        { speaker = "ux", expression = "neutral", text = "(Taking responsibility. It's scary but it builds trust. And the accessibility stuff -- I need to fix that regardless.)", condition = "took_ownership" },

        -- Shared blame path
        { speaker = "po", expression = "neutral", text = "In my defense... I may have moved the goalposts a few times...", condition = "shared_blame" },
        { speaker = "dev", expression = "neutral", text = "Four times.", condition = "shared_blame" },
        { speaker = "pm", expression = "neutral", text = "Let's focus on fixing, not counting. What can we fix by tomorrow?", condition = "shared_blame" },
        { speaker = "ux", expression = "neutral", text = "(Shared blame is comfortable. It's also true. But the accessibility issues are still mine to fix regardless of who caused them.)", condition = "shared_blame" },

        -- Hide bugs path
        { speaker = "qa", expression = "deadpan", text = "Hide them? That's your solution?", condition = "hid_bugs" },
        { speaker = "ux", expression = "neutral", text = "Not hide -- scope the demo to the parts that work. We don't show search. We don't show profiles. We show the core flow.", condition = "hid_bugs" },
        { speaker = "qa", expression = "deadpan", text = "So we demo... the feed. Just the feed.", condition = "hid_bugs" },
        { speaker = "pm", expression = "neutral", text = "A focused demo. I like the spin.", condition = "hid_bugs" },
        { speaker = "ux", expression = "thinking", text = "(A focused demo. Also known as 'the parts where my designs actually work.')", condition = "hid_bugs" },

        -- Callbacks
        { speaker = "dev", expression = "smiling", text = "The features we paired on have half the bugs of the solo work. Just saying.", condition = "paired_with_dev" },
        { speaker = "ux", expression = "neutral", text = "(Pairing worked. The real-time feedback caught the edge cases I always miss. Maybe design handoffs aren't the only way.)", condition = "paired_with_dev" },

        { speaker = "qa", expression = "deadpan", text = "Six of these bugs trace to the scope expansion. More screens, more interactions, more ways to break.", condition = "absorbed_scope" },
        { speaker = "ux", expression = "frustrated", text = "(Six bugs from the features I agreed to add. More scope meant more design work, which meant less attention to the details that matter. Like accessibility.)", condition = "absorbed_scope" },

        -- Break room processing
        { speaker = "ux", expression = "frustrated", text = "(Break room. I'm staring at the accessibility report on my phone.)", bg = "break_room" },
        { speaker = "ux", expression = "thinking", text = "(Color contrast. Keyboard navigation. Screen reader support. These aren't nice-to-haves. These are 'can a person with a disability use what I built.')" },
        { speaker = "ux", expression = "frustrated", text = "(The answer is no. The answer is I designed something beautiful that a significant portion of users cannot access. Beautiful and exclusionary.)" },
        { speaker = "ux", expression = "thinking", text = "(This is the moment where UX stops being about aesthetics and starts being about equity. I need to remember this feeling.)" },
        { speaker = "ux", expression = "neutral", text = "(The contrast fix is easy. Darker button color. The keyboard navigation is a day of work. The screen reader support is a week. We don't have a week.)" },

        -- Choice 2
        { speaker = "ux", expression = "thinking", text = "(I can't fix everything tonight. But I can decide what matters most.)",
            choices = {
                { text = "Fix the accessibility issues first. Contrast, tab order, keyboard shortcuts. Users before demos.", set = {bug_fix_focused = true}, rel = {qa = 1, dev = 1} },
                { text = "Write an accessibility checklist for the team. Prevent this from happening next sprint.", set = {bug_process_focused = true}, rel = {qa = 1, arch = 1} },
                { text = "Flag the accessibility gaps to leadership in the demo notes. They should know what we shipped.", set = {bug_blame_focused = true}, rel = {pm = -1, po = -1, qa = 1} },
            }
        },

        { speaker = "ux", expression = "neutral", text = "Contrast fix first. Button color from #6B9AFF to #2563EB. Passes AA now. Then the tab order. Then the modal trap.", condition = "bug_fix_focused" },
        { speaker = "ux", expression = "thinking", text = "(Fixing what I broke. It's not glamorous. It's necessary. Design is responsibility.)", condition = "bug_fix_focused" },

        { speaker = "ux", expression = "neutral", text = "Accessibility checklist. Contrast ratios. Keyboard navigation. ARIA labels. Focus management. Every screen, every component.", condition = "bug_process_focused" },
        { speaker = "ux", expression = "thinking", text = "(A checklist won't fix tomorrow's demo. It'll prevent next sprint's failures. That's the long game.)", condition = "bug_process_focused" },

        { speaker = "ux", expression = "neutral", text = "Demo notes updated. 'Known accessibility gaps: contrast, keyboard navigation, screen reader support. Remediation planned for sprint two.'", condition = "bug_blame_focused" },
        { speaker = "ux", expression = "thinking", text = "(Leadership should know. If they choose to demo anyway, that's their call. But they should know what we're showing and who it excludes.)", condition = "bug_blame_focused" },

        { speaker = "ux", expression = "thinking", text = "QA is the team's immune system. You don't appreciate it until something goes wrong." },
        { speaker = "ux", expression = "frustrated", text = "And right now, everything is going wrong." },

        { text = "", goto = "day9" }
    }
}
