return {
    title = "Day 8 -- Thursday",
    subtitle = "QA Strikes",
    narration = "Demo tomorrow. Riley walks into your standup with a clipboard. There is a bug count on the clipboard. The number is large.",

    bg = "office_day",
    bgm = "tension",

    dialogue = {
        { speaker = "pm", expression = "stressed", text = "Thursday. Demo tomorrow. The Jira board has more open tickets than yesterday. The burndown chart is burning up, not down." },
        { speaker = "pm", expression = "stressed", text = "(I sent the status report to the director last night. 'On track with minor risks.' That was twelve hours ago. That was a different universe.)" },

        { speaker = "qa", expression = "neutral", text = "I spent the morning running tests on the prototype." },
        { speaker = "pm", expression = "cheerful", text = "Great! How's it looking?" },
        { speaker = "qa", expression = "deadpan", text = "I have 23 bugs." },
        { speaker = "dev", expression = "frustrated", text = "Twenty-three?!" },
        { speaker = "pm", expression = "stressed", text = "(Risk register: catastrophic. Add 23 entries. Delete the status report. Rewrite everything.)" },

        { speaker = "qa", expression = "neutral", text = "Want the highlights?" },
        { speaker = "pm", expression = "stressed", text = "Do we have a choice?" },

        { speaker = "qa", expression = "neutral", text = "Content feed breaks if you scroll too fast. Profile crashes if no profile picture." },
        { speaker = "dev", expression = "neutral", text = "Works on my machine." },
        { speaker = "qa", expression = "neutral", text = "Why does your computer have a profile picture, Sam?" },
        { speaker = "pm", expression = "stressed", text = "(The director is going to try the profile page. The director never uploads a profile picture. The director is going to see a white screen.)" },

        { speaker = "qa", expression = "smirk", text = "Search bar accepts HTML. I typed a script tag and the page said 'hello Riley.'" },
        { speaker = "dev", expression = "frustrated", text = "...that opens up a security vulnerability." },
        { speaker = "pm", expression = "stressed", text = "(Bug 7 is an XSS. The security team is going to find out. The security team is going to write a report. That report is going to end up on the CTO's desk.)" },

        { speaker = "qa", expression = "neutral", text = "Bug 12. Emoji in a username crashes the entire app." },
        { speaker = "pm", expression = "stressed", text = "(The director's name on Slack has a flag emoji. The director's name has an emoji. THE DIRECTOR'S NAME HAS AN EMOJI.)" },

        { speaker = "qa", expression = "neutral", text = "Bug 15. Notifications send duplicates. Eleven alerts for one comment." },
        { speaker = "pm", expression = "stressed", text = "(Eleven emails to the director about a test comment. This is how projects get cancelled.)" },

        { speaker = "arch", expression = "concerned", text = "We skipped the architecture review and now look where we are. I had a plan--" },
        { speaker = "dev", expression = "neutral", text = "Casey, we all know about the diagram. Not the time." },

        -- Anonymous feedback bomb
        { speaker = "pm", expression = "stressed", text = "(And then the morale survey results came in. Anonymous. Brutal.)" },
        { speaker = "pm", expression = "stressed", text = "Also, the mid-sprint pulse survey results are back." },
        { speaker = "dev", expression = "neutral", text = "...and?" },
        { speaker = "pm", expression = "stressed", text = "'The PM doesn't understand what we're building.' 'Planning is reactive, not proactive.' 'Feels like we're making it up as we go.'" },
        { speaker = "pm", expression = "stressed", text = "(Anonymous. So I don't know who wrote it. But I know they're right.)" },
        { speaker = "qa", expression = "neutral", text = "Jordan, those surveys are rough. For what it's worth, we all feel behind." },
        { speaker = "pm", expression = "stressed", text = "(Riley being kind. That's how I know the survey was bad.)" },

        -- Triage time
        { speaker = "pm", expression = "stressed", text = "Demo is tomorrow. Triage. Whose responsibility is this?" },
        { speaker = "pm", expression = "stressed", text = "(How I frame this sets the tone for the rest of the project. The survey says the team doesn't trust my planning. This moment is my chance to earn it back.)" },

        { speaker = "pm", expression = "neutral", text = "(Three options. Each one is a different kind of hard.)",
            choices = {
                { text = "Step up: 'This is on the team, but I own the process. I should have caught it.'", set = {took_ownership = true}, rel = {dev = 2, qa = 2, ux = 1} },
                { text = "Distribute: 'Requirements were unclear. We all share this.'", set = {shared_blame = true}, rel = {qa = 1, po = 1, dev = 0} },
                { text = "Scope down: 'We can't fix 23 bugs. We hide the broken parts and demo the rest.'", set = {hid_bugs = true}, rel = {po = 1, qa = -2, dev = -1} },
            }
        },

        -- Ownership
        { speaker = "pm", expression = "neutral", text = "I should have made sure QA was in the loop earlier. I should have checked the staging environment last week. That's a process failure. I own that.", condition = "took_ownership" },
        { speaker = "qa", expression = "neutral", text = "Appreciated, Jordan. Let's triage together.", condition = "took_ownership" },
        { speaker = "dev", expression = "smiling", text = "Respect. Let's go.", condition = "took_ownership" },
        { speaker = "pm", expression = "stressed", text = "(The survey said I don't understand the work. Maybe this is how I start understanding.)", condition = "took_ownership" },

        -- Shared
        { speaker = "po", expression = "neutral", text = "To be fair... I did rewrite the acceptance criteria more than once...", condition = "shared_blame" },
        { speaker = "dev", expression = "neutral", text = "Four times.", condition = "shared_blame" },
        { speaker = "pm", expression = "neutral", text = "Let's focus on fixing, not counting. What can we ship by tomorrow?", condition = "shared_blame" },
        { speaker = "pm", expression = "stressed", text = "(Shared blame. The diplomatic play. Also the play that changes nothing. But right now, nothing needs to change -- the bugs need to get fixed.)", condition = "shared_blame" },

        -- Hide
        { speaker = "qa", expression = "deadpan", text = "Hide them? That's your solution?", condition = "hid_bugs" },
        { speaker = "pm", expression = "neutral", text = "Not hide. Scope. We don't show search. We don't show profiles. We demo the feed.", condition = "hid_bugs" },
        { speaker = "qa", expression = "deadpan", text = "Is everyone going to remember not to click those features tomorrow?", condition = "hid_bugs" },
        { speaker = "pm", expression = "stressed", text = "I'll write a demo script. Step by step. We rehearse it. Nobody clicks anything that isn't in the script.", condition = "hid_bugs" },
        { speaker = "pm", expression = "stressed", text = "(A scripted demo. The project management equivalent of duct tape and prayer.)", condition = "hid_bugs" },

        -- Callbacks
        { speaker = "qa", expression = "neutral", text = "The features that were built with the pairing approach have half the bugs. Just so you know for sprint planning.", condition = "paired_with_dev" },
        { speaker = "pm", expression = "stressed", text = "(Pairing. Fewer bugs. That's a data point. That's a process change I can actually make for next sprint. Write it down, Jordan.)", condition = "paired_with_dev" },

        { speaker = "qa", expression = "deadpan", text = "Six of these bugs trace directly to scope changes. Each new feature added new surface area for failures.", condition = "absorbed_scope" },
        { speaker = "pm", expression = "stressed", text = "(Six bugs from scope creep. And I approved every scope change. Risk register: PM approved the risk. PM is the risk.)", condition = "absorbed_scope" },

        -- Break room processing
        { speaker = "pm", expression = "stressed", text = "(Break room. The morale survey is still open on my phone. The bug list is on my laptop. Both are telling me the same thing.)", bg = "break_room" },
        { speaker = "pm", expression = "stressed", text = "('The PM doesn't understand what we're building.' They're not wrong. I understand the Gantt chart. I understand the Jira board. I don't understand the code.)" },
        { speaker = "pm", expression = "stressed", text = "(23 bugs. 3 anonymous complaints. 1 demo tomorrow. The math doesn't work. The math never works. That's the PM life -- making impossible math look possible.)" },
        { speaker = "pm", expression = "neutral", text = "(But. The team showed up. Sam is fixing bugs right now. Riley is triaging. Casey is reviewing the architecture. The people are better than the process.)" },

        -- Choice 2
        { speaker = "pm", expression = "stressed", text = "(Tomorrow's demo is in 16 hours. What do I do with the next two?)",
            choices = {
                { text = "Help Sam and Riley triage. Roll up sleeves. Be useful, not managerial.", set = {bug_fix_focused = true}, rel = {dev = 1, qa = 1} },
                { text = "Write the post-mortem framework. QA earlier, test environments on day one, weekly bug reviews.", set = {bug_process_focused = true}, rel = {qa = 1, arch = 1} },
                { text = "Update the director. Honest assessment. 'Demo will be focused. Here is what works and what does not.'", set = {bug_blame_focused = true}, rel = {po = -1, dev = -1, qa = 1} },
            }
        },

        { speaker = "pm", expression = "neutral", text = "Riley, Sam -- what do you need from me? Not as a PM. As a pair of hands.", condition = "bug_fix_focused" },
        { speaker = "pm", expression = "stressed", text = "(The survey said I don't understand the work. Time to learn.)", condition = "bug_fix_focused" },

        { speaker = "pm", expression = "neutral", text = "Post-mortem template. Root causes. Process gaps. Sprint two starts with QA infrastructure on day one.", condition = "bug_process_focused" },
        { speaker = "pm", expression = "stressed", text = "(Fixing the process won't fix tomorrow. But it'll fix the sprint after. That's the PM long game.)", condition = "bug_process_focused" },

        { speaker = "pm", expression = "stressed", text = "Email to the director. 'Demo will focus on core workflow. Known issues documented. Remediation plan attached.'", condition = "bug_blame_focused" },
        { speaker = "pm", expression = "stressed", text = "(Honesty with leadership. The scariest email I've ever sent. But better they hear it from me than discover it live.)", condition = "bug_blame_focused" },

        { speaker = "pm", expression = "stressed", text = "(QA is the team's immune system. I just learned this for the 47th time.)" },

        { text = "", goto = "day9" }
    }
}
