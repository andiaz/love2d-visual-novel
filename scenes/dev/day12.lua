return {
    title = "Day 12 -- Friday",
    subtitle = "Demo Day",
    narration = "This is it. Five hours to lock the build. Leadership is waiting. Don't push to main. Don't breathe near the deploy script.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- Pre-demo preparation
        { speaker = "dev", expression = "tired", text = "Friday morning. Demo day. The real one this time. The build is frozen. The build had better STAY frozen." },
        { speaker = "dev", expression = "tired", text = "(I dreamed about the deploy script last night. In the dream, I pushed to main during the demo. The build failed. The error message just said 'why.' I woke up at 4 AM and checked the build status. It was green. I checked it again at 4:15.)" },
        { speaker = "pm", expression = "stressed", text = "Demo at 2 PM. Five hours to finalize." },
        { speaker = "dev", expression = "neutral", text = "Last night's build is stable. Nobody touches it. Nobody pushes to main. Nobody opens a PR. Nobody breathes near the deploy script." },
        { speaker = "qa", expression = "smirk", text = "I have a list of buttons NOT to click during the demo. It's extensive." },
        { speaker = "arch", expression = "neutral", text = "The performance fix is in. We can handle 10 concurrent users." },
        { speaker = "dev", expression = "smiling", text = "Ten users. One per week of my life. Solid trade." },
        { speaker = "dev", expression = "tired", text = "(Ten users. I wrote a real-time sync engine for ten users. That's one user per week of my life. Good trade, Sam. Great career.)" },

        { speaker = "dev", expression = "neutral", text = "(We fought the scope. The build is clean. Three features, solid. I can demo this without my eye twitching.)", condition = "fought_scope" },
        { speaker = "dev", expression = "tired", text = "(We absorbed the scope. There are two features held together with setTimeout calls and CSS animations pretending to be real functionality. If anyone clicks too deep, it's over.)", condition = "absorbed_scope" },

        { speaker = "po", expression = "neutral", text = "Team? I just want to say... I know I've been a lot." },
        { speaker = "dev", expression = "neutral", text = "Priya--" },
        { speaker = "po", expression = "neutral", text = "No, let me finish. I push hard because I believe in this product. But I should have listened more." },
        { speaker = "qa", expression = "smirk", text = "(Is Priya... growing?)" },
        { speaker = "po", expression = "neutral", text = "After the demo, real retro. Real one." },
        { speaker = "pm", expression = "cheerful", text = "That's actually very mature, Priya." },
        { speaker = "dev", expression = "neutral", text = "(Huh. Maybe people do change. Or maybe the demo pressure is making everyone temporarily sane.)" },

        -- The framing choice
        { speaker = "pm", expression = "neutral", text = "Sam, you're walking through the technical side. How do we frame this?" },

        { speaker = "dev", expression = "tired", text = "(Last call. How do I represent ten weeks of compromise?)",
            choices = {
                { text = "Show the parts that work. Don't even open the broken stuff.", set = {polished_subset = true}, rel = {qa = 2, ux = 2, pm = 1} },
                { text = "Show the whole thing. Let leadership see the full ambition.", set = {showed_everything = true}, rel = {po = 2, pm = -1, qa = -2} },
                { text = "Be honest. Here's what works. Here's what doesn't. Here's why.", set = {honest_demo = true}, rel = {pm = 1, ux = 1, qa = 1, po = 1, arch = 1} },
            }
        },

        -- Polished
        { speaker = "ux", expression = "excited", text = "Smart. Strength, not surface area.", condition = "polished_subset" },
        { speaker = "qa", expression = "neutral", text = "I approve. The parts that work actually work well.", condition = "polished_subset" },
        { speaker = "dev", expression = "neutral", text = "(Three flows. I know exactly what each one does. I wrote every line. I can explain every line. That's the only confidence I have right now.)", condition = "polished_subset" },

        -- Show all
        { speaker = "po", expression = "excited", text = "YES! Show them everything!", condition = "showed_everything" },
        { speaker = "qa", expression = "smirk", text = "Including the search that sorts by zodiac sign?", condition = "showed_everything" },
        { speaker = "dev", expression = "neutral", text = "It's alphabetical in Korean. I told you.", condition = "showed_everything" },
        { speaker = "dev", expression = "tired", text = "(If leadership clicks on the settings panel, I am going to have a very public panic attack.)", condition = "showed_everything" },

        -- Honest
        { speaker = "pm", expression = "neutral", text = "Radical transparency. Leadership respects honesty.", condition = "honest_demo" },
        { speaker = "dev", expression = "neutral", text = "Here's what we built. Here's what works. Here's what needs more time. No spin.", condition = "honest_demo" },
        { speaker = "dev", expression = "neutral", text = "(The scariest demo is the honest one. Because if they don't like what's real, there's nowhere to hide.)", condition = "honest_demo" },

        -- Transition to demo
        { text = "", bg = "meeting_room", bgm = "tension" },

        -- The demo
        { speaker = "pm", expression = "neutral", text = "It's 2 PM. Leadership in the room. Here we go." },
        { speaker = "dev", expression = "neutral", text = "(My hands are on the keyboard. The build is green. The deploy is frozen. I have three terminal tabs open and I will not touch any of them.)" },
        { speaker = "dev", expression = "neutral", text = "Good afternoon. Let me walk you through the technical side of Project Chimera." },

        { speaker = "dev", expression = "neutral", text = "(The pairing with Alex paid off. The UI matches the code. No last-minute CSS hacks. No 'it looked different in Figma' moments. Just... clean handoff.)", condition = "paired_with_dev" },

        { speaker = "dev", expression = "neutral", text = "(First flow. Login, dashboard, data load. Two seconds. Casey's caching layer is doing the work. It's fast. It's actually fast.)" },
        { speaker = "dev", expression = "neutral", text = "(Second flow. The filter component. I wrote this at 11 PM on Wednesday. It has 340 lines and a comment that says 'I am sorry.' But it works.)" },

        -- Near-miss: the live coding fear
        { speaker = "dev", expression = "tired", text = "(Third flow. I click the export button. Nothing happens. One second. Two seconds.)" },
        { speaker = "dev", expression = "tired", text = "(My chest tightens. The cursor is spinning. Three seconds. This worked in testing. This worked 20 minutes ago.)" },
        { speaker = "dev", expression = "tired", text = "(Four seconds. I glance at Riley. Riley's face is stone. I glance at Jordan. Jordan is already reaching for the backup slides.)" },
        { speaker = "dev", expression = "smiling", text = "(Five seconds. The export completes. The file downloads. A CSV. It's correct. I can breathe.)" },
        { speaker = "dev", expression = "neutral", text = "As you can see, the export generates a full report in about five seconds." },
        { speaker = "dev", expression = "neutral", text = "('About five seconds' is generous framing for 'I nearly died just now.')" },

        { speaker = "dev", expression = "tired", text = "(The absorbed scope shows. The transition between features three and four hitches. A loading state that shouldn't be there. Leadership doesn't comment. I see it. I see it.)", condition = "absorbed_scope" },
        { speaker = "dev", expression = "neutral", text = "(Tight. Clean. The scope cut means every feature I'm showing was built properly. No duct tape. No setTimeout pretending to be a WebSocket.)", condition = "fought_scope" },

        -- Tough question
        { speaker = "dev", expression = "tired", text = "(Then the CTO asks: 'What's the tech stack and why?')" },
        { speaker = "dev", expression = "neutral", text = "(This is my question. This one is mine.)" },
        { speaker = "dev", expression = "neutral", text = "React frontend with a Node backend. PostgreSQL for persistence. We chose boring tech on purpose. Boring scales. Boring has documentation. Boring doesn't break at 2 AM." },
        { speaker = "dev", expression = "neutral", text = "(The CTO nods. That nod is worth ten weeks of overtime.)" },

        { speaker = "dev", expression = "neutral", text = "(The honest frame means I can talk about the tech debt openly. 'Here's what we'd refactor with more time.' The CTO respects that. Engineers always respect the engineer who knows what's wrong with their own code.)", condition = "honest_demo" },

        -- Post-demo transition
        { text = "", bg = "break_room" },

        -- Leadership feedback and team processing
        { speaker = "pm", expression = "cheerful", text = "We did it, team. Demo is done." },
        { speaker = "pm", expression = "cheerful", text = "VP of Product said 'promising.' The CTO said 'solid foundation.' That's CTO for 'I won't fire anyone today.'" },
        { speaker = "ux", expression = "neutral", text = "How do we feel?" },
        { speaker = "dev", expression = "tired", text = "I feel like that export button took five years off my life." },
        { speaker = "qa", expression = "deadpan", text = "It took three years off mine and I wasn't even clicking it." },
        { speaker = "arch", expression = "neutral", text = "The 'boring tech' answer was perfect, Sam." },
        { speaker = "dev", expression = "neutral", text = "(Casey's approval means more than the CTO's nod. Don't tell Casey that.)" },

        -- Choice 2: Q&A reflection
        { speaker = "dev", expression = "neutral", text = "(The demo is over. The code held. But the Q&A... how did I actually do up there?)",
            choices = {
                { text = "I explained our tech decisions and the CTO nodded. I owned that room.", set = {qa_confident = true}, rel = {pm = 1, arch = 1} },
                { text = "I spent the whole Q&A terrified the build would crash if I breathed wrong.", set = {qa_nervous = true}, rel = {qa = 1, ux = 1} },
            }
        },

        { speaker = "dev", expression = "smiling", text = "(I knew the codebase. Every line. Every tradeoff. Every hack. And when they asked, I could explain all of it. That's not luck. That's ten weeks of work.)", condition = "qa_confident" },
        { speaker = "pm", expression = "cheerful", text = "Sam, the 'boring tech' line was brilliant. Leadership loved it.", condition = "qa_confident" },

        { speaker = "dev", expression = "tired", text = "(I held it together. Barely. The export freeze almost killed me. But the code held. The code held and that's what matters.)", condition = "qa_nervous" },
        { speaker = "arch", expression = "neutral", text = "Sam, you looked solid up there. The five-second pause was nothing. Nobody noticed.", condition = "qa_nervous" },
        { speaker = "dev", expression = "tired", text = "(Casey is lying. Casey noticed. But it's a kind lie.)", condition = "qa_nervous" },

        { speaker = "dev", expression = "tired", text = "Ask me on Monday. Right now I just want to delete every Slack notification I have and sleep for 40 hours." },

        { text = "", goto = "day13" }
    }
}
