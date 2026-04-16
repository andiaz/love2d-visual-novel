return {
    title = "Day 10 -- Wednesday",
    subtitle = "The Long Night",
    narration = "Final demo Friday. The build is fragile. The team is fraying. The office lights are staying on tonight.",

    bg = "office_evening",
    bgm = "late_night",

    dialogue = {
        { speaker = "dev", expression = "tired", text = "Wednesday evening. Final demo Friday. The build is held together with hope and one staging server." },
        { speaker = "pm", expression = "stressed", text = "Status: behind on five of seven deliverables. The Jira board is... aspirational." },
        { speaker = "dev", expression = "tired", text = "11 hours coding today. Feed works. Search is held together with regex and despair." },
        { speaker = "arch", expression = "neutral", text = "Infrastructure is solid. But there are performance issues under load." },
        { speaker = "qa", expression = "deadpan", text = "'Performance issues' is generous. It falls over the moment a third person logs in." },
        { speaker = "arch", expression = "thinking", text = "That's a scaling issue. I need to revisit the caching layer--" },
        { speaker = "dev", expression = "frustrated", text = "Casey. We have 36 hours. There is no caching layer revision." },
        { speaker = "dev", expression = "tired", text = "(I love Casey. I would love him more if he had a sense of time.)" },

        { speaker = "pm", expression = "stressed", text = "Real talk. We need to decide what we're doing tonight. Are we crunching?" },

        -- Team responses depend on relationship
        { speaker = "ux", expression = "thinking", text = "I'll stay. I want to make sure the flows hold up under stress.", condition = "paired_with_dev" },
        { speaker = "ux", expression = "neutral", text = "I'll stay a bit. But I need to sleep at some point.", condition = "collab_with_dev" },
        { speaker = "ux", expression = "neutral", text = "I'll stay if I can be useful.", condition = {paired_with_dev = nil, collab_with_dev = nil} },

        { speaker = "qa", expression = "neutral", text = "I'll keep testing. Better me than leadership." },
        { speaker = "po", expression = "excited", text = "I can help! I'll update the demo script!" },
        { speaker = "dev", expression = "frustrated", text = "Priya. PLEASE. Don't change requirements tonight." },
        { speaker = "po", expression = "neutral", text = "I won't! ...probably." },

        { speaker = "pm", expression = "neutral", text = "Sam? You're the linchpin here. Call it.",
            choices = {
                { text = "I'm staying till it's done. Whatever it takes. Bring pizza.", set = {pulled_allnighter = true}, rel = {pm = 2, po = 1} },
                { text = "I'll stay till midnight. I do bad work tired. I'll be back at 6 AM sharp.", set = {set_boundaries = true}, rel = {qa = 2, ux = 1, pm = -1} },
                { text = "Split the work. Three of us each take a slice. Go home, regroup at 7.", set = {rallied_team = true}, rel = {ux = 2, qa = 1, arch = 1, pm = 1} },
            }
        },

        -- All-nighter
        { speaker = "pm", expression = "cheerful", text = "That's the spirit! Pizza incoming!", condition = "pulled_allnighter" },
        { speaker = "qa", expression = "neutral", text = "Crunch isn't a badge of honor, Sam.", condition = "pulled_allnighter" },
        { speaker = "dev", expression = "tired", text = "(Riley's right. But the code won't write itself.)", condition = "pulled_allnighter" },
        { speaker = "dev", expression = "tired", text = "The pizza arrives at 9:14. It is cold. I eat three slices without tasting any of them.", condition = "pulled_allnighter" },
        { speaker = "dev", expression = "tired", text = "By 10 PM, the office is half-dark. Alex leaves at 11. Jordan leaves at midnight. Casey was never sure if he was staying.", condition = "pulled_allnighter" },

        -- Boundaries
        { speaker = "qa", expression = "neutral", text = "Smart. A tired engineer writes the bugs of tomorrow.", condition = "set_boundaries" },
        { speaker = "pm", expression = "neutral", text = "But the demo--", condition = "set_boundaries" },
        { speaker = "dev", expression = "tired", text = "Will be better if I can think straight Friday.", condition = "set_boundaries" },
        { speaker = "dev", expression = "neutral", text = "I push one last commit at 11:47. Clean up the search index. Add a null check I should have written three days ago.", condition = "set_boundaries" },
        { speaker = "dev", expression = "tired", text = "I walk to the parking lot. The air is cold. My brain is still compiling.", condition = "set_boundaries" },

        -- Rally
        { speaker = "ux", expression = "excited", text = "Yes. Divide and conquer. Give me the front-end fixes.", condition = "rallied_team" },
        { speaker = "arch", expression = "neutral", text = "I'll fix the perf issue from home. Just need VPN.", condition = "rallied_team" },
        { speaker = "dev", expression = "neutral", text = "Task list in Slack by 9. Everyone picks their slice.", condition = "rallied_team" },
        { speaker = "dev", expression = "neutral", text = "I divvy up the remaining work like a field medic doing triage. Critical, severe, cosmetic. The cosmetic list is long. We are ignoring it.", condition = "rallied_team" },
        { speaker = "qa", expression = "neutral", text = "I'll run smoke tests on each slice as it lands. Sustainable loop.", condition = "rallied_team" },

        -- Time-stamp: Late night
        { text = "-- 10:30 PM --" },

        { speaker = "dev", expression = "tired", text = "(The pizza is gone. The coffee is not. I am on cup number five. Cup five is where the hands start to shake but the brain stays sharp. Allegedly.)" },
        { speaker = "dev", expression = "tired", text = "I open the notification service. It has been sending duplicate emails since Tuesday. Nobody noticed because nobody reads the emails." },
        { speaker = "dev", expression = "tired", text = "(I fix the duplicate. A missing deduplication check. Three lines. The kind of bug that exists because someone was rushed. The someone was me.)" },
        { speaker = "dev", expression = "neutral", text = "Priya messages: 'Can the feed show timestamps in relative format? Like 2 hours ago instead of 14:32?'", condition = "fought_scope" },
        { speaker = "dev", expression = "tired", text = "(At 10:30 PM. She's asking for formatting changes at 10:30 PM. I write the helper function in four minutes. It is not scope creep. It is polish. There is a difference. The difference is whether I am annoyed.)", condition = "fought_scope" },

        { text = "..." },

        { speaker = "dev", expression = "tired", text = "(Casey messages: 'I patched the connection pool. Can you pull and verify?' I pull. I verify. The staging server responds in 200ms instead of 4 seconds.)" },
        { speaker = "dev", expression = "tired", text = "(40 lines from Casey. Two days of pain. I send a thumbs up. At this hour, a thumbs up is a standing ovation.)" },

        { text = "-- 11:42 PM --" },

        { speaker = "dev", expression = "tired", text = "(The office is quiet now. The hum of the HVAC. The flicker of two monitors. Mine and the build server.)" },
        { speaker = "dev", expression = "tired", text = "I stare at the search function. It works. It also does not work. It returns results in an order that is technically alphabetical but emotionally random." },
        { speaker = "dev", expression = "tired", text = "(I wrote this function at 4 PM when I still believed in myself. It is now almost midnight and I believe in nothing.)" },
        { speaker = "dev", expression = "tired", text = "(I refactor the search ranking. Relevance score based on title match, then recency, then popularity. It takes 45 minutes. The results make sense now. The function does not know it is midnight. The function does not care.)" },

        { text = "-- 12:15 AM --" },

        { speaker = "dev", expression = "tired", text = "Jordan messages: 'Status update for tomorrow's standup?' At 12:15 AM." },
        { speaker = "dev", expression = "tired", text = "(I type: 'Search fixed. Notifications fixed. Build is red. Working on it.' I do not type: 'I have been here for 17 hours and I am starting to talk to the compiler.')" },
        { speaker = "dev", expression = "tired", text = "(The status update is the project. The feelings are mine. Those do not go in Slack.)" },

        { text = "-- 1:15 AM --" },

        { speaker = "dev", expression = "tired", text = "Slack notification. Riley.", condition = "pulled_allnighter" },
        { speaker = "dev", expression = "tired", text = "Slack notification. Riley. She said she'd go home. She did not go home.", condition = "set_boundaries" },
        { speaker = "dev", expression = "tired", text = "Slack notification. Riley. Testing from home.", condition = "rallied_team" },

        { speaker = "qa", expression = "deadpan", text = "The build is still red.", condition = "pulled_allnighter" },
        { speaker = "qa", expression = "deadpan", text = "Tested from home. The build is still red.", condition = {pulled_allnighter = nil} },
        { speaker = "dev", expression = "tired", text = "(Of course it is. The build has been red since Tuesday. Red is its natural state now.)" },

        { text = "-- 2:30 AM --" },

        { speaker = "dev", expression = "tired", text = "I find the bug. It is a single misplaced bracket. One character. Two days of broken builds." },
        { speaker = "dev", expression = "tired", text = "(I want to scream. I want to laugh. I do neither. I fix the bracket and push.)" },
        { speaker = "dev", expression = "tired", text = "The build turns green. I stare at it like it is a miracle. It might be." },

        { text = "-- 3:00 AM --" },
        { bgm = "late_night" },

        { speaker = "dev", expression = "tired", text = "3 AM. The commit message reads: 'fix bracket that broke everything. I am sorry to everyone including myself.'" },
        { speaker = "dev", expression = "tired", text = "(I sit back. Stare at the green checkmark on the CI dashboard. The room is so quiet I can hear the fluorescent lights buzzing. I never noticed that sound before. You have to be the last person in a building to hear it.)" },
        { speaker = "dev", expression = "tired", text = "(I look at the git diff. One character. Plus sign, closing bracket, line 847. The entire build pipeline, the staging server, the demo -- all of it hinged on this one bracket being in the right place. Software is absurd.)" },
        { speaker = "dev", expression = "tired", text = "(My hands are still shaking from the coffee. Or the adrenaline. Or the fact that I have been awake for twenty-one hours. The human body was not designed for this. The human body was designed for hunting and gathering. I am hunting a bracket.)" },
        { speaker = "dev", expression = "tired", text = "I message Riley: 'Build is green. Go to sleep.'" },
        { speaker = "qa", expression = "deadpan", text = "Confirmed green. Going to sleep. Don't touch anything." },
        { speaker = "dev", expression = "tired", text = "(Don't touch anything. The developer's lullaby.)" },

        -- Interpersonal moment with Alex
        { speaker = "dev", expression = "tired", text = "Alex messages at 3:12 AM. 'Are you still there?'", condition = "paired_with_dev" },
        { speaker = "ux", expression = "neutral", text = "I couldn't sleep. I kept thinking about the onboarding flow. I tweaked the spacing.", condition = "paired_with_dev" },
        { speaker = "dev", expression = "tired", text = "(Alex. It is 3 AM. Nobody cares about spacing. ...I care about spacing.)", condition = "paired_with_dev" },
        { speaker = "dev", expression = "neutral", text = "It looks good. Push it. Then sleep.", condition = "paired_with_dev" },

        { speaker = "dev", expression = "tired", text = "Alex messages at 3:12 AM. 'You still up? The onboarding mockup is done. Pushed to Figma.'", condition = {paired_with_dev = nil} },
        { speaker = "dev", expression = "tired", text = "(People are awake who should not be awake. This project has infected everyone's sleep schedule.)", condition = {paired_with_dev = nil} },

        -- Choice 2: personal/emotional crunch moment
        { speaker = "dev", expression = "tired", text = "3:30 AM. The office is completely empty. Just me, the glow of the monitor, and the hum of the server rack." },
        { speaker = "dev", expression = "tired", text = "(This is the loneliest I have felt in months. And also the most focused. Is that normal?)" },
        { speaker = "dev", expression = "tired", text = "(Do I reach out right now, or do I sit with this?)",
            choices = {
                { text = "Message the team Slack: 'Build is green. You're all brilliant. See you at 7.' Something warm.", set = {crunch_bonded = true}, rel = {ux = 1, qa = 1, pm = 1} },
                { text = "Close Slack. Just me and the code. This is the part I'm good at.", set = {crunch_isolated = true}, rel = {dev = 1} },
            }
        },

        { speaker = "dev", expression = "neutral", text = "I type the message. Delete it. Retype it. Send.", condition = "crunch_bonded" },
        { speaker = "dev", expression = "neutral", text = "Three thumbs-up emojis appear within a minute. People are awake. People are in this with me.", condition = "crunch_bonded" },
        { speaker = "dev", expression = "tired", text = "(We are a team. Even at 3 AM. Especially at 3 AM.)", condition = "crunch_bonded" },

        { speaker = "dev", expression = "tired", text = "I close Slack. The notification light dies. The screen is just code.", condition = "crunch_isolated" },
        { speaker = "dev", expression = "tired", text = "I write three more functions. Clean. Tight. The best code I have written all sprint.", condition = "crunch_isolated" },
        { speaker = "dev", expression = "tired", text = "(The code does not need me to be social. The code just needs me to be precise. That is easier right now.)", condition = "crunch_isolated" },

        -- End of day
        { speaker = "dev", expression = "tired", text = "(The crunch. Every project has one. The question is whether you survive it together or fall apart.)" },
        { speaker = "dev", expression = "tired", text = "(I close the laptop at 4:11 AM. The alarm is set for 6:30. The build is green. That has to be enough.)" },

        { text = "", goto = "day11" }
    }
}
