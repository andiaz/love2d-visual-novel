return {
    title = "Day 14 -- Friday",
    subtitle = "Last Day",
    narration = "The final standup. One last commit message. Make it a good one.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- Morning at desk
        { speaker = "dev", expression = "tired", text = "Friday. I run git log --oneline one last time. 312 commits. A few of them even have useful messages." },
        { speaker = "dev", expression = "neutral", text = "The staging server is still running. I should shut it down." },
        { speaker = "dev", expression = "tired", text = "I leave it running. Someone will notice. Or it'll serve pages to nobody forever." },

        { speaker = "dev", expression = "neutral", text = "I scroll through the commit history. The first one: 'initial project scaffold.' Dated fifteen days ago. Written by someone who thought six weeks was enough time." },
        { speaker = "dev", expression = "tired", text = "(Commit 47: 'fix null pointer in feed render.' That was the 2 AM fix. I remember the coffee. I remember the silence.)" },
        { speaker = "dev", expression = "neutral", text = "(Commit 189: 'refactor search index after pivot discussion.' The commit message is professional. The actual mood was not.)" },
        { speaker = "dev", expression = "tired", text = "(Commit 312: 'final polish pass, update version.' The last line of code I will write on this project. It was a version bump. Anticlimactic.)" },

        { speaker = "dev", expression = "neutral", text = "The desk looks strange when it's clean. No sticky notes. No coffee rings. Just a monitor and a keyboard that someone else will use on Monday." },
        { speaker = "dev", expression = "tired", text = "(I check the CI dashboard one more time. Green. All green. I take a screenshot. I don't know why.)" },
        { speaker = "dev", expression = "neutral", text = "I unplug my headphones. Put them in my bag. Close the terminal." },

        { text = "..." },

        -- Farewell standup
        { bg = "break_room", bgm = "late_night" },

        { speaker = "pm", expression = "neutral", text = "Last standup. Keeping it short." },

        -- Conditional goodbyes
        { speaker = "ux", expression = "neutral", text = "Sam. You taught me what an API call costs. I'll never design the same way again.", condition = {rel_ux_gte = 5} },
        { speaker = "ux", expression = "neutral", text = "And the pairing sessions were the highlight of my sprint. For real.", condition = {rel_ux_gte = 5} },
        { speaker = "dev", expression = "neutral", text = "(Alex means it. I can tell because the notebook is closed. Alex only closes the notebook for things that matter.)", condition = {rel_ux_gte = 5} },
        { speaker = "ux", expression = "neutral", text = "Sam. I wish we'd paired sooner.", condition = {rel_ux_gte = 0, rel_ux_lt = 5} },

        { speaker = "qa", expression = "neutral", text = "Sam. You owned your bugs. That's more than most devs can say.", condition = "took_ownership" },
        { speaker = "qa", expression = "neutral", text = "The bug log was better because of you. The product was better because of the bug log. Transitive property.", condition = "took_ownership" },
        { speaker = "qa", expression = "deadpan", text = "Sam. Your code has fewer bugs than most. That's my version of a compliment.", condition = {took_ownership = nil} },

        { speaker = "arch", expression = "neutral", text = "Sam. You challenged my patterns. Made me justify every abstraction. I'm better for it.", condition = {rel_arch_gte = 3} },
        { speaker = "arch", expression = "concerned", text = "Sam. I hope next time we find middle ground between your pragmatism and my patterns.", condition = {rel_arch_lt = 3} },

        { speaker = "po", expression = "neutral", text = "Sam. Thank you for being honest about what was possible. Even when I didn't want to hear it.", condition = "fought_scope" },
        { speaker = "po", expression = "neutral", text = "You were right more often than I admitted. I'm admitting it now.", condition = "fought_scope" },
        { speaker = "po", expression = "excited", text = "Sam. You built things I didn't think were possible in two weeks.", condition = "absorbed_scope" },

        { speaker = "pm", expression = "neutral", text = "Sam. Straightforward, reliable, slightly terrifying. Perfect dev." },
        { speaker = "dev", expression = "neutral", text = "(Jordan smiles. I almost smile back. Almost.)" },

        { text = "..." },

        { speaker = "pm", expression = "neutral", text = "Sam? Close us out." },

        { speaker = "dev", expression = "neutral", text = "(Last words. Keep it short. Keep it real.)",
            choices = {
                { text = "I'm taking this codebase's lessons into whatever I build next. Forward.", set = {final_forward = true}, rel = {arch = 1, pm = 1} },
                { text = "Best team I've shipped with. The arguments made the code better.", set = {final_backward = true}, rel = {ux = 1, qa = 1, po = 1} },
            }
        },

        { speaker = "arch", expression = "neutral", text = "Forward. With better abstractions.", condition = "final_forward" },
        { speaker = "ux", expression = "neutral", text = "The arguments were the collaboration.", condition = "final_backward" },

        { text = "..." },

        -- 1-on-1 farewell
        { speaker = "dev", expression = "tired", text = "People start drifting away. I stay at my laptop for one more minute." },
        { speaker = "dev", expression = "tired", text = "(One more minute. The developer's lie. One more minute is always ten.)" },

        { speaker = "ux", expression = "neutral", text = "Walk out together?", condition = {rel_ux_gte = 5} },
        { speaker = "dev", expression = "smiling", text = "Yeah. Let's.", condition = {rel_ux_gte = 5} },
        { speaker = "dev", expression = "neutral", text = "We walk to the elevator. Alex is carrying the sketchbook. I notice it's thicker than it was on day one.", condition = {rel_ux_gte = 5} },
        { speaker = "ux", expression = "neutral", text = "You know what I'll miss? The arguments.", condition = {rel_ux_gte = 5} },
        { speaker = "dev", expression = "smiling", text = "They weren't arguments. They were code reviews with feelings.", condition = {rel_ux_gte = 5} },
        { speaker = "ux", expression = "neutral", text = "Same team next time?", condition = {rel_ux_gte = 5} },
        { speaker = "dev", expression = "neutral", text = "Same team.", condition = {rel_ux_gte = 5} },
        { speaker = "dev", expression = "neutral", text = "(The elevator doors close. The building shrinks behind us. And that is how a project ends -- not with a deploy, but with a walk to the parking lot.)", condition = {rel_ux_gte = 5} },

        { speaker = "arch", expression = "neutral", text = "Sam. One thing.", condition = {rel_arch_gte = 5, rel_ux_lt = 5} },
        { speaker = "arch", expression = "neutral", text = "Your instinct to keep things simple. Don't lose that.", condition = {rel_arch_gte = 5, rel_ux_lt = 5} },
        { speaker = "dev", expression = "smiling", text = "(Coming from Casey, that's a complete philosophical surrender.)", condition = {rel_arch_gte = 5, rel_ux_lt = 5} },
        { speaker = "dev", expression = "neutral", text = "And your instinct to think three steps ahead. I'll steal that.", condition = {rel_arch_gte = 5, rel_ux_lt = 5} },
        { speaker = "arch", expression = "neutral", text = "It's not stealing if I'm offering.", condition = {rel_arch_gte = 5, rel_ux_lt = 5} },
        { speaker = "dev", expression = "smiling", text = "(Casey and I shake hands. It's awkward. Neither of us are hand-shake people. But the awkwardness is the point.)", condition = {rel_arch_gte = 5, rel_ux_lt = 5} },

        { speaker = "dev", expression = "tired", text = "I close my laptop. Slide it into my bag. The desk looks strange without it.", condition = {rel_ux_lt = 5, rel_arch_lt = 5} },
        { speaker = "dev", expression = "tired", text = "(No one asks me to walk out together. That's fine. Some projects end quietly. The code doesn't care about goodbyes.)", condition = {rel_ux_lt = 5, rel_arch_lt = 5} },
        { speaker = "dev", expression = "neutral", text = "(I check the staging server one last time. Still green. Still serving pages to nobody. A monument to two weeks of work.)", condition = {rel_ux_lt = 5, rel_arch_lt = 5} },

        { speaker = "dev", expression = "neutral", text = "Fifteen days of commits. Done." },
        { speaker = "dev", expression = "tired", text = "(The repo will outlive the team. The code will be read by people who never met us. That's the closest a developer gets to leaving a message in a bottle.)" },
        { speaker = "dev", expression = "neutral", text = "(I think about the first commit. 'Initial project scaffold.' I remember typing it. I remember the empty directory. I remember thinking: this could be anything.)" },
        { speaker = "dev", expression = "neutral", text = "(It became something. Not what I expected. Not what Priya envisioned. Not what Casey architected. Something in between all of it. Something shaped by arguments and late nights and cold pizza.)" },
        { speaker = "dev", expression = "tired", text = "(I open the terminal one last time. Type 'git log --stat' and watch the numbers scroll. 312 commits. 47,000 lines added. 18,000 lines deleted. The lines deleted are the ones I'm proudest of. Knowing what to remove is harder than knowing what to write.)" },
        { speaker = "dev", expression = "neutral", text = "(The parking lot is half empty. The afternoon sun hits the window at that angle where you can see dust in the air. It looks almost peaceful. Almost like the building knows the project is ending.)" },
        { speaker = "dev", expression = "tired", text = "(I close the terminal. The cursor blinks one last time, then the screen goes dark. Funny. I've been staring at that cursor for two weeks. I never noticed the rhythm before.)" },
        { speaker = "dev", expression = "neutral", text = "(Bag over shoulder. Badge in pocket. One foot in front of the other. That's all any of this ever was.)" },

        { text = "", goto = "day15" }
    }
}
