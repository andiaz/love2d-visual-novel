return {
    title = "Day 10 -- Wednesday",
    subtitle = "The Long Night",
    narration = "Final demo Friday. The team is behind. The office lights are staying on. Your job is to keep them fed, sane, and pointed in the same direction.",

    bg = "office_evening",
    bgm = "late_night",

    dialogue = {
        { speaker = "pm", expression = "stressed", text = "Wednesday evening. Final demo Friday. We're behind. The Jira board is a hostage situation." },
        { speaker = "pm", expression = "stressed", text = "Status update: behind on five of seven deliverables. The Jira board is... let's call it aspirational." },
        { speaker = "dev", expression = "tired", text = "I've been coding 11 hours. The feed works. The search is held together with hope." },
        { speaker = "arch", expression = "neutral", text = "Infrastructure is solid. Performance issues under load." },
        { speaker = "qa", expression = "deadpan", text = "It doesn't need load to crash. Three users at once and the whole thing goes down." },
        { speaker = "arch", expression = "thinking", text = "That's a scaling issue. I need to revisit the caching layer--" },
        { speaker = "dev", expression = "frustrated", text = "Casey, we're at 36 hours. Nobody is touching the caching layer." },
        { speaker = "pm", expression = "stressed", text = "(I have to make the call. Crunch or no crunch. There is no good answer.)" },

        { speaker = "pm", expression = "stressed", text = "Real talk. Are we crunching tonight?" },

        -- Team responses
        { speaker = "ux", expression = "neutral", text = "I'll stay. Let me know what you need.", condition = "paired_with_dev" },
        { speaker = "ux", expression = "neutral", text = "I'll stay a few hours.", condition = "collab_with_dev" },
        { speaker = "ux", expression = "neutral", text = "I'll stay if it helps.", condition = {paired_with_dev = nil, collab_with_dev = nil} },

        { speaker = "qa", expression = "neutral", text = "I'll keep testing. Better me than leadership." },
        { speaker = "po", expression = "excited", text = "I can help! I'll update the demo script!" },
        { speaker = "dev", expression = "frustrated", text = "Priya. Please. Don't change requirements tonight." },
        { speaker = "po", expression = "neutral", text = "I won't! ...probably." },

        { speaker = "pm", expression = "stressed", text = "(I'm responsible for everyone in this room. Whatever I say next, they will follow.)",
            choices = {
                { text = "Call the all-nighter. Pizza on the company card. Push through.", set = {pulled_allnighter = true}, rel = {po = 1, dev = 0} },
                { text = "Send people home at 10. Tired team makes bad decisions on demo day.", set = {set_boundaries = true}, rel = {qa = 2, dev = 1, ux = 1} },
                { text = "Divide the work. Three slices, three owners, regroup at 7 AM. Sustainable.", set = {rallied_team = true}, rel = {dev = 2, qa = 1, ux = 1, arch = 1} },
            }
        },

        -- All-nighter
        { speaker = "pm", expression = "cheerful", text = "Alright team. We're crunching. Pizza incoming.", condition = "pulled_allnighter" },
        { speaker = "qa", expression = "neutral", text = "Crunch isn't a badge of honor, Jordan.", condition = "pulled_allnighter" },
        { speaker = "pm", expression = "stressed", text = "(She's right. But the demo won't write itself.)", condition = "pulled_allnighter" },
        { speaker = "pm", expression = "stressed", text = "I order four pizzas. Two veggie, two pepperoni. The company card declines. I use my personal card.", condition = "pulled_allnighter" },
        { speaker = "pm", expression = "stressed", text = "(I'll expense it. If we still have a project to expense it to.)", condition = "pulled_allnighter" },

        -- Boundaries
        { speaker = "pm", expression = "neutral", text = "Hard cutoff at 10 PM. Anyone still here, I'm sending home. We regroup tomorrow rested.", condition = "set_boundaries" },
        { speaker = "qa", expression = "smirk", text = "Smart. A tired team makes bad demos.", condition = "set_boundaries" },
        { speaker = "dev", expression = "tired", text = "Thank you.", condition = "set_boundaries" },
        { speaker = "pm", expression = "neutral", text = "At 10:07, I walk the floor. Sam is still coding. I close his laptop.", condition = "set_boundaries" },
        { speaker = "dev", expression = "frustrated", text = "Jordan--", condition = "set_boundaries" },
        { speaker = "pm", expression = "neutral", text = "Go home. That's not a suggestion.", condition = "set_boundaries" },

        -- Rally
        { speaker = "pm", expression = "neutral", text = "Divide and conquer. Three owners, three slices. Tonight you finish your slice and go home. Regroup at 7 AM.", condition = "rallied_team" },
        { speaker = "dev", expression = "neutral", text = "I'll take the data layer.", condition = "rallied_team" },
        { speaker = "arch", expression = "neutral", text = "I'll fix the perf issue from home.", condition = "rallied_team" },
        { speaker = "pm", expression = "cheerful", text = "(That's leadership. That's the job.)", condition = "rallied_team" },
        { speaker = "pm", expression = "neutral", text = "I build the task list in 20 minutes. Three columns. Owner, deadline, dependency. The Jira board starts to look less like a crime scene.", condition = "rallied_team" },

        -- Time-stamp: Schedule chicken
        { text = "-- 9:30 PM --" },

        { speaker = "pm", expression = "stressed", text = "(I pull up the actual timeline. Not the one I showed leadership. The real one.)" },
        { speaker = "pm", expression = "stressed", text = "The real timeline says Friday demo is impossible with full scope. Not hard. Impossible. The math does not work." },
        { speaker = "pm", expression = "stressed", text = "(Schedule chicken. The game where everyone pretends the deadline is achievable until someone blinks first.)" },
        { speaker = "pm", expression = "stressed", text = "(I open the spreadsheet I keep hidden. The one with two columns: 'What we promised' and 'What we can deliver.' The gap between those columns has been growing every day. On day one it was a crack. Now it is a canyon.)" },
        { speaker = "pm", expression = "stressed", text = "(I count the hours. Sam has maybe 18 productive hours left before the demo. Casey has 12. Alex has 8. Riley needs at least 6 for regression testing. That is 44 hours of work across a team that needs sleep, food, and the will to continue.)" },
        { speaker = "pm", expression = "stressed", text = "(The backlog has 23 items marked 'must have.' I can deliver 14 of them. The other 9 are the features Priya highlighted in yellow. Yellow means 'leadership will notice if these are missing.' Yellow means 'Jordan's problem.')" },
        { speaker = "pm", expression = "stressed", text = "(I have two options. Tell leadership now that we're cutting scope. Or wait until tomorrow and pray for a miracle.)" },
        { speaker = "pm", expression = "stressed", text = "(Telling them now means admitting I've known for days. Waiting means the surprise is bigger.)" },
        { speaker = "pm", expression = "stressed", text = "(Both options are bad. That's how you know you're a PM.)" },

        { text = "-- 10:00 PM --" },

        { speaker = "pm", expression = "stressed", text = "(I walk the floor. Three people are still here. Sam is at his desk, headphones on, typing like the keyboard owes him money.)" },
        { speaker = "pm", expression = "neutral", text = "(Alex has Figma open on both monitors. Zoomed in to something I cannot see from here. Pixel-level work at 10 PM. That is either dedication or a cry for help.)" },
        { speaker = "pm", expression = "stressed", text = "(Casey is at the whiteboard. Again. The diagram has more arrows than a medieval battlefield.)" },
        { speaker = "pm", expression = "stressed", text = "(I should say something motivating. 'We've got this.' 'You're all doing great.' 'The demo will be fine.' But I am a bad liar at 10 PM.)" },
        { speaker = "pm", expression = "neutral", text = "(Instead I refill the coffee machine. Nobody asked me to. Nobody will notice. But the coffee will be ready when they need it. That is project management at 10 PM. Infrastructure, not inspiration.)" },
        { speaker = "pm", expression = "stressed", text = "(Priya messages: 'Can we add a loading animation to the feed?' I reply: 'Ask Alex. But no new tickets tonight.' She sends a thumbs up. I do not trust the thumbs up.)", condition = "fought_scope" },

        { text = "-- 10:45 PM --" },

        { speaker = "pm", expression = "stressed", text = "I draft the email to leadership. 'Scope adjustment for Friday demo.' I rewrite it four times." },
        { speaker = "pm", expression = "stressed", text = "Version one is honest. Version two is political. Version three is somewhere between. Version four is version one again." },
        { speaker = "pm", expression = "neutral", text = "I send version one. The honest one. Then I close the laptop before I can unsend it." },
        { speaker = "pm", expression = "stressed", text = "(If they fire me, at least the team gets a realistic timeline.)" },

        { text = "-- 11:30 PM --" },

        { speaker = "pm", expression = "stressed", text = "Sam messages: 'Build is green.' Three words. Best three words I have heard in weeks.", condition = "pulled_allnighter" },
        { speaker = "pm", expression = "stressed", text = "Sam messages from home: 'Pushed the search fix. Build might go green.' I refresh the dashboard six times.", condition = {pulled_allnighter = nil} },

        { speaker = "pm", expression = "stressed", text = "(The team is working. The timeline email is sent. I am sitting in a dark office refreshing a CI dashboard.)" },
        { speaker = "pm", expression = "stressed", text = "(This is project management. The gap between what the team can build and what leadership wants to see. I live in that gap.)" },

        { text = "-- 11:45 PM --" },

        { speaker = "pm", expression = "stressed", text = "(I open the demo run-of-show document. It was 22 steps. I cut it to 14. Then 11. Each cut is a feature the team built that nobody will see on Friday.)" },
        { speaker = "pm", expression = "neutral", text = "(The notification system. Cut. The profile page. Cut. The admin dashboard. Cut. Each one cost somebody late nights.)" },
        { speaker = "pm", expression = "stressed", text = "(I am the person who decides which of my team's work gets shown and which gets hidden. That is not in the PM job description. It should be.)" },
        { speaker = "pm", expression = "neutral", text = "(Casey's async patch just landed. The staging server is responding. I add one step back to the demo: 'Show content creation flow.' Sam earned that one.)", condition = "rallied_team" },

        -- Interpersonal: Riley check-in
        { speaker = "pm", expression = "neutral", text = "I message Riley: 'You still up? How's the regression suite?'" },
        { speaker = "qa", expression = "deadpan", text = "14 of 47 bugs verified fixed. 8 are new. The rest are... waiting." },
        { speaker = "pm", expression = "neutral", text = "'Go to sleep, Riley.'" },
        { speaker = "qa", expression = "deadpan", text = "'After the next suite.' She won't go to sleep." },
        { speaker = "pm", expression = "stressed", text = "(I can't make Riley rest. I can't make the timeline work. I can't make the build stay green. I can hold the space for all of it.)" },

        -- Choice 2: personal/emotional
        { speaker = "pm", expression = "stressed", text = "(It's midnight. The office is empty. I should go home. But if I go home, who's watching the dashboard?)" },
        { speaker = "pm", expression = "stressed", text = "(What does this team need from me right now?)",
            choices = {
                { text = "Send a team-wide message: 'Proud of all of you tonight. We've got this.' Be the anchor.", set = {crunch_bonded = true}, rel = {dev = 1, qa = 1, ux = 1} },
                { text = "Stay quiet. Keep refreshing the build dashboard. The team doesn't need inspiration. They need me ready.", set = {crunch_isolated = true}, rel = {pm = 1} },
            }
        },

        { speaker = "pm", expression = "neutral", text = "I send the message. It feels cheesy. It is cheesy. Three heart reacts appear in under a minute.", condition = "crunch_bonded" },
        { speaker = "pm", expression = "neutral", text = "(Cheesy works at midnight. Genuine always works at midnight.)", condition = "crunch_bonded" },
        { speaker = "dev", expression = "tired", text = "Thanks, Jordan. Needed that.", condition = "crunch_bonded" },

        { speaker = "pm", expression = "stressed", text = "I close Slack. Open the spreadsheet. Start prepping the demo scope for tomorrow's meeting.", condition = "crunch_isolated" },
        { speaker = "pm", expression = "stressed", text = "(The team needs a PM who's ready, not a PM who's sentimental. I'll be sentimental at the retro.)", condition = "crunch_isolated" },
        { speaker = "pm", expression = "stressed", text = "I build three versions of the demo. Full scope, reduced scope, emergency scope. Leadership gets to pick.", condition = "crunch_isolated" },

        -- End of day
        { speaker = "pm", expression = "stressed", text = "(The crunch. Every project has one. Whether the team survives it together is on me.)" },
        { speaker = "pm", expression = "stressed", text = "(I leave the office at 12:40 AM. The drive home takes nine minutes. I rehearse the leadership conversation the entire way.)" },

        { text = "", goto = "day11" }
    }
}
