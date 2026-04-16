return {
    title = "Day 11 -- Thursday",
    subtitle = "The Breaking Point",
    narration = "One day left. You've filed 47 bugs. You've been polite for 47 of them. The 48th is going to be different.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        { speaker = "qa", expression = "deadpan", text = "Thursday. One day before the demo. I have filed 47 bugs. Same number as the deck. The symmetry is not lost on me." },
        { speaker = "qa", expression = "deadpan", text = "I slept four hours. The regression suite ran in my dreams. 201 passing. 31 failing. The numbers follow me home." },

        { speaker = "pm", expression = "neutral", text = "OK, standup time. Short and sweet, people." },
        { speaker = "dev", expression = "tired", text = "I fixed 9 bugs last night. Three new ones appeared. Code whack-a-mole." },
        { speaker = "qa", expression = "smirk", text = "Search now works. Returns results in random order." },
        { speaker = "dev", expression = "tired", text = "It's alphabetical. In a language I don't recognize." },
        { speaker = "qa", expression = "deadpan", text = "(Sam fixed 9 of my 47 bugs. Nine. That leaves 38. Plus the 3 new ones. Plus the 12 I filed at midnight. The math never goes in QA's favor.)" },

        { bgm = "tension" },

        { speaker = "arch", expression = "concerned", text = "Look, I have to flag something. Our approach is fundamentally off." },
        { speaker = "dev", expression = "frustrated", text = "Casey. Not now." },
        { speaker = "arch", expression = "concerned", text = "If we'd built on the architecture I designed in week one--" },
        { speaker = "dev", expression = "frustrated", text = "With your architecture plan, we'd be writing config files instead of shipping features." },
        { speaker = "qa", expression = "deadpan", text = "(The team is fighting. Two days before the demo. The team always fights two days before the demo.)" },
        { speaker = "qa", expression = "deadpan", text = "(I have worked on seven projects. The fight always happens on the same day. Thursday. The day before the reckoning.)" },

        { speaker = "po", expression = "neutral", text = "Can I just say something? I know I've changed requirements a lot--" },
        { speaker = "qa", expression = "deadpan", text = "A lot." },
        { speaker = "po", expression = "defensive", text = "But it's because I CARE about this product! I want it to be amazing!" },
        { speaker = "qa", expression = "deadpan", text = "We can discuss amazing later. First it needs to actually run." },

        -- The buildup -- EXPANDED from Riley's perspective
        { speaker = "qa", expression = "deadpan", text = "(Two weeks of bugs. Fourteen of them are in flagged risk areas I called out at the design review on Day 4.)" },
        { speaker = "qa", expression = "deadpan", text = "(I filed bug 12 on Day 3. The empty state crash. Sam closed it as 'won't fix.' It reopened on Day 7. I refiled it. Sam fixed it on Day 9.)" },
        { speaker = "qa", expression = "deadpan", text = "(I flagged the search performance on Day 5. Casey said 'the caching layer will handle it.' The caching layer did not handle it.)" },
        { speaker = "qa", expression = "deadpan", text = "(I wrote a risk assessment on Day 6. Priya said 'we'll address it in the next sprint.' There might not be a next sprint if the demo fails.)" },
        { speaker = "qa", expression = "deadpan", text = "(Eleven days. Dozens of bugs. Zero process changes. The definition of insanity is filing the same bug report and expecting a different response.)" },

        -- The breaking point
        { speaker = "qa", expression = "deadpan", text = "(I am about to say a thing. The thing has been in my mouth for 11 days. The thing is going to come out now.)" },
        { speaker = "qa", expression = "deadpan", text = "(I have been polite. I have been professional. I have written clear steps-to-reproduce and attached screenshots with red circles. I have followed the process.)" },
        { speaker = "qa", expression = "deadpan", text = "(The process did not work. The politeness did not work. The red circles did not work.)" },

        { speaker = "qa", expression = "deadpan", text = "Actually, you know what? I'm done being polite." },
        { speaker = "qa", expression = "deadpan", text = "Forty-seven bugs. Same number as Priya's slide deck. I've filed every single one with steps to reproduce, screenshots, and severity ratings. Nobody opened them." },
        { speaker = "qa", expression = "deadpan", text = "And now everything is on fire and you're all looking around like somebody else was supposed to bring the extinguisher." },

        { speaker = "pm", expression = "neutral", text = "..." },
        { speaker = "dev", expression = "neutral", text = "..." },
        { speaker = "qa", expression = "deadpan", text = "(I just said the quiet part out loud. The room is silent. I should feel bad. I do not feel bad.)" },
        { speaker = "qa", expression = "deadpan", text = "(Five faces. Sam looks guilty. Casey looks hurt. Priya looks defensive. Jordan looks like a PM calculating damage. Alex looks like someone who finally sees me.)" },

        -- Callback: took_ownership (day 8)
        { speaker = "qa", expression = "deadpan", text = "(On Day 8, the team owned the bugs together. For one afternoon, I felt like QA was part of the team. That afternoon ended. The bugs kept coming.)", condition = "took_ownership" },
        { speaker = "qa", expression = "neutral", text = "(But that afternoon mattered. It proved the team CAN listen. They just... stopped.)", condition = "took_ownership" },

        -- Callback: rallied_team (day 10)
        { speaker = "qa", expression = "neutral", text = "(Last night's smoke test loop worked. Sam fixed, I tested, the numbers went up. We can be a team. When we try.)", condition = "rallied_team" },

        { speaker = "qa", expression = "neutral", text = "(Three ways to land this. The team is watching me decide what kind of QA I am.)",
            choices = {
                { text = "Stand my ground. 'Listen to QA earlier next sprint. Process change. Non-negotiable.'", set = {backed_riley = true}, rel = {dev = 1, ux = 1, pm = 0, po = -1} },
                { text = "Refocus. 'Feelings later. Right now, what are we shipping tomorrow?'", set = {refocused_team = true}, rel = {dev = 2, ux = 1, pm = 2} },
                { text = "Walk it back a step. 'I shouldn't have framed it that way. But the point stands.'", set = {owned_mistakes = true}, rel = {dev = 1, ux = 1, pm = 1, po = 1, arch = 1} },
            }
        },

        -- Stand ground
        { speaker = "qa", expression = "neutral", text = "Process change. Next sprint. QA in design reviews from day one. No exceptions.", condition = "backed_riley" },
        { speaker = "pm", expression = "neutral", text = "Done. Booked. Calendar.", condition = "backed_riley" },
        { speaker = "po", expression = "neutral", text = "I should have been reading your reports.", condition = "backed_riley" },
        { speaker = "qa", expression = "smirk", text = "All 47 of them. Yes.", condition = "backed_riley" },
        { speaker = "qa", expression = "neutral", text = "(Jordan booked it. In front of everyone. That is accountability. That is what I have been asking for since Day 3.)", condition = "backed_riley" },

        -- Refocused
        { speaker = "qa", expression = "neutral", text = "Look. Feelings can wait. What can we ship tomorrow? List, please. I'll re-prioritize the bug queue around it.", condition = "refocused_team" },
        { speaker = "dev", expression = "neutral", text = "Feed works. Content creation works. Search is optimistic.", condition = "refocused_team" },
        { speaker = "qa", expression = "neutral", text = "Pull profiles. Pull search. The bugs in those won't fit before tomorrow.", condition = "refocused_team" },
        { speaker = "qa", expression = "deadpan", text = "(I just said 'feelings can wait.' Two seconds after the most emotional outburst of my career. Compartmentalization is a QA skill.)", condition = "refocused_team" },

        -- Walked back
        { speaker = "qa", expression = "neutral", text = "I shouldn't have framed it like that. The point stands. The delivery was sharper than it needed to be.", condition = "owned_mistakes" },
        { speaker = "dev", expression = "neutral", text = "And I should have spoken up about tech debt sooner.", condition = "owned_mistakes" },
        { speaker = "arch", expression = "concerned", text = "The architecture got away from me. I added too many layers.", condition = "owned_mistakes" },
        { speaker = "po", expression = "neutral", text = "And I changed requirements too much. Maybe.", condition = "owned_mistakes" },
        { speaker = "qa", expression = "neutral", text = "(They are all owning a piece. Because I showed them how. The outburst worked. The apology made it land.)", condition = "owned_mistakes" },

        -- The aftermath -- EXPANDED from Riley's perspective
        { speaker = "qa", expression = "deadpan", text = "After standup I walk back to my desk. I sit down. My hands are shaking." },
        { speaker = "qa", expression = "deadpan", text = "(I do not shake. I am the steady one. I am the one who writes bug reports while the building is on fire. And right now my hands are shaking.)" },
        { speaker = "qa", expression = "deadpan", text = "(I said the thing. The thing I have been holding for 11 days. The room heard it. Now what?)" },
        { speaker = "qa", expression = "deadpan", text = "I open the bug tracker. 47 bugs. I re-triage against the new demo scope. 23 are relevant. 24 are for features that got cut." },
        { speaker = "qa", expression = "neutral", text = "(Twenty-four bugs for features nobody will see tomorrow. Twenty-four artifacts of work that mattered and then didn't.)" },

        -- Post-crisis quiet moment
        { bg = "break_room", bgm = "late_night" },

        { speaker = "qa", expression = "deadpan", text = "Break room. 3 PM. I am drinking water because caffeine would not improve the shaking." },

        { speaker = "dev", expression = "tired", text = "Sam sits down. He does not speak for 30 seconds. That is a long time for Sam.", condition = "backed_riley" },
        { speaker = "dev", expression = "tired", text = "Riley. I'm sorry. I should have read bug 12 the first time.", condition = "backed_riley" },
        { speaker = "qa", expression = "neutral", text = "(Sam remembered the bug number. Bug 12. The empty state crash. He remembered.)", condition = "backed_riley" },
        { speaker = "qa", expression = "smirk", text = "Apology accepted. Now fix bugs 34 through 38.", condition = "backed_riley" },

        { speaker = "pm", expression = "neutral", text = "Jordan sits down. 'Riley. The demo scope is cut. You were right about which features were ready.'", condition = "refocused_team" },
        { speaker = "qa", expression = "neutral", text = "I know. I've been right about that since Day 6.", condition = "refocused_team" },
        { speaker = "pm", expression = "neutral", text = "I know. I should have listened on Day 6.", condition = "refocused_team" },

        { speaker = "ux", expression = "neutral", text = "Alex sits down. Tea in hand. Doesn't say anything for a minute.", condition = "owned_mistakes" },
        { speaker = "ux", expression = "neutral", text = "Riley. Your bug reports are the best documentation on this project.", condition = "owned_mistakes" },
        { speaker = "qa", expression = "deadpan", text = "(Alex called my bug reports 'documentation.' That is... the nicest thing a designer has ever said to me.)", condition = "owned_mistakes" },

        -- Choice 2: personal/emotional
        { speaker = "qa", expression = "deadpan", text = "(I sit in the break room. My hands have stopped shaking. The outburst is an hour old. It already feels like a year ago.)" },
        { speaker = "qa", expression = "deadpan", text = "(I am the one who breaks things for a living. Today I broke the silence. The silence was the biggest bug of all.)" },
        { speaker = "qa", expression = "neutral", text = "(How do I go back in there?)",
            choices = {
                { text = "Find Priya. Say: 'The slides comparison was unfair. I'm sorry for that part.' Repair what I can.", set = {crisis_empathy = true}, rel = {po = 1, pm = 1, dev = 1} },
                { text = "Go back to the bug tracker. Run the regression suite. Let the numbers be my re-entry.", set = {crisis_pragmatism = true}, rel = {qa = 1, dev = 1} },
            }
        },

        { speaker = "qa", expression = "neutral", text = "I find Priya at her desk. She's staring at the demo script. The one she rewrote last night.", condition = "crisis_empathy" },
        { speaker = "qa", expression = "neutral", text = "Priya. The slides comparison. That was a cheap shot. I'm sorry for that specific part.", condition = "crisis_empathy" },
        { speaker = "po", expression = "neutral", text = "It was accurate, though. 47 and 47. You can't make that up.", condition = "crisis_empathy" },
        { speaker = "qa", expression = "smirk", text = "Accurate and cheap are not mutually exclusive.", condition = "crisis_empathy" },
        { speaker = "po", expression = "neutral", text = "No. They're not. Thank you, Riley.", condition = "crisis_empathy" },
        { speaker = "qa", expression = "neutral", text = "(Priya and I are not friends. We might be allies. That is more useful.)", condition = "crisis_empathy" },

        { speaker = "qa", expression = "deadpan", text = "I sit down. Open the regression suite. 23 relevant bugs. New run.", condition = "crisis_pragmatism" },
        { speaker = "qa", expression = "deadpan", text = "First pass on reduced scope: 207 pass. 24 fail. 16 flaky. Better. Not good. Better.", condition = "crisis_pragmatism" },
        { speaker = "qa", expression = "deadpan", text = "(The numbers are the only thing I trust right now. The numbers do not have feelings. The numbers do not hold grudges. The numbers just count.)", condition = "crisis_pragmatism" },

        -- End
        { speaker = "pm", expression = "neutral", text = "That standup was 28 minutes. New record. For real this time." },
        { speaker = "qa", expression = "deadpan", text = "(Tomorrow is demo day. At least we're being honest with each other now.)" },
        { speaker = "qa", expression = "deadpan", text = "(I said the thing. The room survived. The team survived. I survived. Bug 48 is 'team communication.' Status: in progress.)" },

        { text = "", goto = "day12" }
    }
}
