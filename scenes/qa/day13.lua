return {
    title = "Day 13 -- Monday",
    subtitle = "The Feedback",
    narration = "Demo done. The director sent feedback. You have the bug count memorized. Nobody asked for the bug count. You will share it anyway.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- Morning at desk: reading the email privately
        { speaker = "qa", expression = "deadpan", text = "Monday morning. I'm at my desk before anyone else. The director's email is in my inbox." },
        { speaker = "qa", expression = "neutral", text = "I open it. Scan for the word 'quality.' It appears zero times. Typical." },
        { speaker = "qa", expression = "smirk", text = "(The demo went out with 14 open bugs. Nobody mentioned the bugs. The bugs are fine. The bugs are always fine until they aren't.)" },
        { speaker = "qa", expression = "deadpan", text = "I pull up the test report I wrote Friday night. Twelve pages. Comprehensive. Nobody will read it." },
        { speaker = "qa", expression = "smirk", text = "(I read it. Twice. It's good work. Someone should know.)" },

        { bg = "meeting_room" },

        -- Team meeting: leadership feedback
        { speaker = "pm", expression = "neutral", text = "Alright, team. Feedback from leadership." },
        { speaker = "dev", expression = "neutral", text = "On a scale of 'fired' to 'promoted,' where are we?" },
        { speaker = "pm", expression = "cheerful", text = "They liked it. With caveats." },
        { speaker = "po", expression = "neutral", text = "What kind of caveats?" },

        -- Conditional feedback based on demo approach
        { speaker = "pm", expression = "neutral", text = "They said the demo felt focused. Professional. They want more depth next time, but they respect the discipline.", condition = "polished_subset" },
        { speaker = "qa", expression = "smirk", text = "(Discipline. That's what they call 'not clicking the 23 things I told them not to click.')", condition = "polished_subset" },

        { speaker = "pm", expression = "neutral", text = "They appreciated the ambition. But they flagged the search. And the loading times.", condition = "showed_everything" },
        { speaker = "qa", expression = "deadpan", text = "(I flagged the search on day four. But sure. Leadership noticed. That's what matters.)", condition = "showed_everything" },

        { speaker = "pm", expression = "cheerful", text = "Direct quote: 'Finally, a team that tells us the truth.'", condition = "honest_demo" },
        { speaker = "qa", expression = "smirk", text = "(The truth came from the bug log. The bug log came from QA. QA is the truth. I will not say this out loud.)", condition = "honest_demo" },

        -- The verdict
        { speaker = "pm", expression = "neutral", text = "So, the verdict: Chimera gets another sprint. Two weeks to polish and ship." },
        { speaker = "po", expression = "excited", text = "Yes! We can finally add the--" },
        { speaker = "dev", expression = "neutral", text = "Priya. Retro." },
        { speaker = "po", expression = "neutral", text = "...okay. Retro." },
        { speaker = "qa", expression = "deadpan", text = "(She's learning. Slowly. Like a browser loading on dial-up. But loading.)" },

        { text = "..." },

        -- Retro: expanded, with callbacks
        { speaker = "pm", expression = "neutral", text = "Retro. What worked. What didn't. What changes." },

        -- Sam's retro (varies based on relationship)
        { speaker = "dev", expression = "neutral", text = "What worked: pairing with QA on the triage. What didn't: waiting until week two to do it.", condition = "backed_riley" },
        { speaker = "dev", expression = "neutral", text = "What worked: we shipped. What didn't: I should have asked for help earlier.", condition = {backed_riley = nil} },

        -- Alex's retro
        { speaker = "ux", expression = "neutral", text = "What worked: the design held up in the demo. What didn't: I should have brought QA into the reviews sooner.", condition = "paired_with_dev" },
        { speaker = "ux", expression = "neutral", text = "What worked: we found a rhythm by the end. What didn't: it took too long to get there.", condition = {paired_with_dev = nil} },

        -- Casey's retro
        { speaker = "arch", expression = "concerned", text = "What worked: nothing broke in the demo. What didn't: I built for a product three times bigger than what we shipped." },

        -- Priya's retro
        { speaker = "po", expression = "neutral", text = "What worked: we shipped. What didn't: I pivoted so often that nobody trusted the next priority would stick." },

        { speaker = "pm", expression = "neutral", text = "Riley?" },

        { speaker = "qa", expression = "deadpan", text = "(My turn. The retro where QA is asked. Not told. Asked.)",
            choices = {
                { text = "QA was brought in too late. We need to be in design reviews from day one. Not as a gate. As eyes.", set = {retro_research = true}, rel = {dev = 1, ux = 1, arch = 1} },
                { text = "Bug triage was ad hoc. We need a real cadence. Twice a week. With the whole team in the room.", set = {retro_communication = true}, rel = {dev = 2, pm = 1, arch = 1} },
                { text = "This team listened. Eventually. Most teams never do. The trust we built is the thing I'd keep.", set = {retro_trust = true}, rel = {pm = 1, ux = 1, po = 1, dev = 1, arch = 1} },
            }
        },

        { speaker = "pm", expression = "neutral", text = "QA in design reviews from day one. I'm booking it.", condition = "retro_research" },
        { speaker = "dev", expression = "smiling", text = "Twice a week triage. I'll be there. With coffee.", condition = "retro_communication" },
        { speaker = "po", expression = "neutral", text = "I'm writing that down. 'The trust we built.'", condition = "retro_trust" },

        { text = "..." },

        -- Post-retro: 1-on-1 (conditional on relationship)
        { bg = "break_room", bgm = "late_night" },

        { speaker = "qa", expression = "deadpan", text = "After the retro I head to the break room. The coffee machine sounds like it's filing a grievance." },

        -- High dev relationship
        { speaker = "dev", expression = "neutral", text = "Hey. Got a second?", condition = {rel_dev_gte = 5} },
        { speaker = "qa", expression = "neutral", text = "For you? Sure.", condition = {rel_dev_gte = 5} },
        { speaker = "dev", expression = "smiling", text = "The triage sessions were actually useful. I don't say that about meetings.", condition = {rel_dev_gte = 5} },
        { speaker = "qa", expression = "smirk", text = "(Sam just complimented a process. I should document this. Nobody will believe me.)", condition = {rel_dev_gte = 5} },

        -- High UX relationship (fallback)
        { speaker = "ux", expression = "neutral", text = "Riley. Quick word.", condition = {rel_ux_gte = 5, rel_dev_lt = 5} },
        { speaker = "qa", expression = "neutral", text = "Go ahead.", condition = {rel_ux_gte = 5, rel_dev_lt = 5} },
        { speaker = "ux", expression = "neutral", text = "Thank you for catching the accessibility issues. I should have caught them in the mockups.", condition = {rel_ux_gte = 5, rel_dev_lt = 5} },
        { speaker = "qa", expression = "smirk", text = "(A designer thanking QA. Add it to the list of things I didn't expect this sprint.)", condition = {rel_ux_gte = 5, rel_dev_lt = 5} },

        -- Default: alone
        { speaker = "qa", expression = "deadpan", text = "The break room is empty. Just me and the dying coffee machine. We understand each other.", condition = {rel_dev_lt = 5, rel_ux_lt = 5} },
        { speaker = "qa", expression = "neutral", text = "Quiet is fine. QA does its best thinking in quiet.", condition = {rel_dev_lt = 5, rel_ux_lt = 5} },

        { text = "..." },

        -- Second choice: forward direction
        { speaker = "qa", expression = "neutral", text = "(One more sprint. What does QA fight for?)",
            choices = {
                { text = "Lock down what we have. Regression suite. Zero known bugs before new features.", set = {forward_cautious = true}, rel = {dev = 1, arch = 1} },
                { text = "Test the hard stuff. Push the edge cases. Find out what this product can actually handle.", set = {forward_ambitious = true}, rel = {po = 1, ux = 1} },
            }
        },

        { speaker = "qa", expression = "deadpan", text = "(Zero known bugs. It's never happened in my career. But there's a first time.)", condition = "forward_cautious" },
        { speaker = "qa", expression = "smirk", text = "(Edge cases. Where the interesting failures live. Where QA earns its keep.)", condition = "forward_ambitious" },

        { text = "", goto = "day14" }
    }
}
