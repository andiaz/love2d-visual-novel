return {
    title = "Day 12 -- Friday",
    subtitle = "Demo Day",
    narration = "Five hours to lock the story. Leadership at 2 PM. You wrote the deck. You picked the vision. The frame is yours. The moment of truth is yours.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- Pre-demo preparation
        { speaker = "po", expression = "excited", text = "Friday morning. Demo day. The real one. Six months of work in one room." },
        { speaker = "po", expression = "neutral", text = "(Six months of pitching this vision. Six months of 'what if we could.' Today I find out if any of it was real.)" },
        { speaker = "po", expression = "neutral", text = "(I've rewritten the opening three times. The first version was too ambitious. The second was too safe. The third... the third is honest. I think.)" },
        { speaker = "pm", expression = "stressed", text = "Demo at 2 PM. Five hours to finalize." },
        { speaker = "dev", expression = "neutral", text = "Last night's build is stable. Don't touch anything." },
        { speaker = "qa", expression = "smirk", text = "I have a list of buttons NOT to click. Extensive." },
        { speaker = "arch", expression = "neutral", text = "Performance fix is in. We can handle 10 concurrent users." },
        { speaker = "dev", expression = "smiling", text = "An impressive ten users. Truly revolutionary numbers." },
        { speaker = "po", expression = "neutral", text = "(Ten users. I sold leadership on a platform. They're going to see a prototype. The gap between those two words is my entire career.)" },

        { speaker = "po", expression = "neutral", text = "(We fought the scope. I hated it at the time. But the product is tighter because of it. Three features that work instead of seven that don't.)", condition = "fought_scope" },
        { speaker = "po", expression = "neutral", text = "(We absorbed the scope. I got what I wanted. More features. More vision. But the seams are showing and I can feel it.)", condition = "absorbed_scope" },

        { speaker = "po", expression = "neutral", text = "Team? I want to say something." },
        { speaker = "dev", expression = "neutral", text = "Priya--" },
        { speaker = "po", expression = "neutral", text = "No, let me finish. I push hard because I believe in this product. But I should have listened more." },
        { speaker = "qa", expression = "smirk", text = "(Is Priya... growing as a person?)" },
        { speaker = "po", expression = "neutral", text = "After the demo, I want a real retro. Real one. Where we actually say the hard things." },
        { speaker = "pm", expression = "cheerful", text = "That's actually very mature, Priya." },
        { speaker = "po", expression = "neutral", text = "(It took ten weeks and a demo day to get here. Better late than never.)" },

        -- The framing call
        { speaker = "pm", expression = "neutral", text = "Priya, you're the PO. How do we frame this for leadership?" },

        { speaker = "po", expression = "neutral", text = "(The frame is the product. I get to choose how leadership sees ten weeks of work.)",
            choices = {
                { text = "'Focused MVP.' Show what works. Sell the discipline. Less is more.", set = {polished_subset = true}, rel = {qa = 2, dev = 2, ux = 1} },
                { text = "'Ambitious vision.' Show everything. Let leadership see the full scope.", set = {showed_everything = true}, rel = {pm = -1, dev = -2, qa = -2} },
                { text = "'Honest progress.' Walk through what works, what doesn't, what's next.", set = {honest_demo = true}, rel = {pm = 1, dev = 1, qa = 1, ux = 1, arch = 1} },
            }
        },

        -- Polished
        { speaker = "po", expression = "neutral", text = "Focused MVP. Three flows that work. One story: discipline. Show me a slide deck I can pitch.", condition = "polished_subset" },
        { speaker = "dev", expression = "smiling", text = "Smart. Show strength, not surface area.", condition = "polished_subset" },
        { speaker = "po", expression = "neutral", text = "(Less is more. The hardest lesson a product owner learns. I'm learning it in real time.)", condition = "polished_subset" },

        -- Showed everything
        { speaker = "po", expression = "excited", text = "Show them everything! All of it! Vision wall to wall!", condition = "showed_everything" },
        { speaker = "qa", expression = "smirk", text = "Including the search that sorts by zodiac sign?", condition = "showed_everything" },
        { speaker = "dev", expression = "neutral", text = "It is alphabetical. Just not in English. I mentioned this.", condition = "showed_everything" },
        { speaker = "po", expression = "excited", text = "(They'll see the ambition. They have to. That's why we're here.)", condition = "showed_everything" },

        -- Honest
        { speaker = "po", expression = "neutral", text = "Honest demo. 'Here's what works. Here's what doesn't. Here's why.' Leadership respects the truth.", condition = "honest_demo" },
        { speaker = "po", expression = "neutral", text = "(Six months of selling the vision. The hardest pitch is the one without spin.)", condition = "honest_demo" },

        -- Transition to demo
        { text = "", bg = "meeting_room", bgm = "tension" },

        -- The demo
        { speaker = "pm", expression = "neutral", text = "It's 2 PM. Leadership in the room. Here we go." },
        { speaker = "po", expression = "neutral", text = "(Three VPs. The Director of Product. My skip-level. The person who approved the headcount for this team. They're all here.)" },
        { speaker = "po", expression = "neutral", text = "Good afternoon everyone. I want to walk you through what we built with Project Chimera." },
        { speaker = "po", expression = "neutral", text = "(My voice doesn't shake. I rehearsed this opener 12 times in the bathroom mirror. It shows.)" },
        { speaker = "po", expression = "neutral", text = "Six months ago, we asked: what if enterprise data management didn't have to feel like enterprise data management? What if it could feel... intuitive?" },
        { speaker = "po", expression = "neutral", text = "(The Director of Product leans forward. That's the lean. That's the good lean.)" },

        { speaker = "po", expression = "neutral", text = "(Alex walks through the flows. The pairing with Sam shows. The design and the code are in sync. When did that start happening?)", condition = "paired_with_dev" },

        { speaker = "ux", expression = "neutral", text = "Let me walk you through the core experience." },
        { speaker = "po", expression = "neutral", text = "(First flow. Login, dashboard. Clean. Sam's code is fast. Casey's architecture holds. This is the product I imagined. Almost.)" },

        -- The feature that works
        { speaker = "po", expression = "neutral", text = "(The filter feature. My baby. The one I fought for in sprint three. Alex clicks it. It works. The data updates in real time. It's smooth.)" },
        { speaker = "po", expression = "neutral", text = "(I want to cry. I will not cry in front of the Director of Product. But I want to.)" },

        -- Near-miss
        { speaker = "po", expression = "neutral", text = "(Then the VP of Engineering asks Alex to show the export. The export. The one feature I know is held together with hope and setTimeout calls.)" },
        { speaker = "po", expression = "neutral", text = "(Five seconds of loading. The longest five seconds of my career. It completes. The CSV downloads. It's correct.)" },
        { speaker = "po", expression = "neutral", text = "(I exhale. Nobody notices. Everyone is looking at the CSV. The CSV is correct. Thank you, Sam.)" },

        { speaker = "po", expression = "neutral", text = "(The absorbed scope shows here. The transition between the core features and the added ones is rough. I can see it. The VP tilts her head. She sees it too.)", condition = "absorbed_scope" },
        { speaker = "po", expression = "neutral", text = "(The scope cut made this demo tight. Every feature earns its screen time. Nothing wasted. I hated cutting scope. I was wrong.)", condition = "fought_scope" },

        -- Tough question from leadership
        { speaker = "po", expression = "neutral", text = "(Then the Director of Product looks at me directly.)" },
        { speaker = "po", expression = "neutral", text = "'Priya, what's the go-to-market timeline?'" },
        { speaker = "po", expression = "neutral", text = "(The moment of truth. The vision is on the wall. The product is on the screen. The question is: when does this become real?)" },
        { speaker = "po", expression = "neutral", text = "We can have the core experience production-ready in eight weeks. Full feature set, including the integrations we scoped for v2, in four months." },
        { speaker = "po", expression = "neutral", text = "(I said eight weeks. I believe eight weeks. The team is going to have opinions about eight weeks. But I believe it.)" },

        { speaker = "po", expression = "neutral", text = "(The honest frame means I can caveat. 'Eight weeks, with the following assumptions.' Leadership respects the caveats. They've been burned by POs who don't caveat.)", condition = "honest_demo" },

        -- Post-demo transition
        { text = "", bg = "break_room" },

        -- Leadership feedback and team processing
        { speaker = "pm", expression = "cheerful", text = "We did it, team. Demo done." },
        { speaker = "pm", expression = "cheerful", text = "VP of Product said 'promising.' Director of Product asked for a follow-up next week. That's not 'promising.' That's 'interested.'" },
        { speaker = "dev", expression = "neutral", text = "How do we feel?" },
        { speaker = "po", expression = "neutral", text = "(How do I feel? I feel like I've been holding my breath for six months and I just took the first real inhale.)" },
        { speaker = "qa", expression = "deadpan", text = "The filter worked. I tested it 14 times. I am glad it was 14 for 14." },
        { speaker = "arch", expression = "neutral", text = "The architecture held. That's enough for today." },
        { speaker = "po", expression = "neutral", text = "Eight weeks. I said eight weeks up there. Team, I need to know if that's real." },
        { speaker = "dev", expression = "tired", text = "We'll talk about it Monday." },
        { speaker = "po", expression = "neutral", text = "(Fair. Monday.)" },

        -- Choice 2: Q&A reflection
        { speaker = "po", expression = "neutral", text = "(The demo is done. My vision is on the table. The Q&A was the real test. How did I do presenting my product to leadership?)",
            choices = {
                { text = "I pitched my vision and they leaned in. This is what I was born to do.", set = {qa_confident = true}, rel = {pm = 1, dev = 1} },
                { text = "I said 'eight weeks' and immediately wanted to take it back.", set = {qa_nervous = true}, rel = {qa = 1, arch = 1} },
            }
        },

        { speaker = "po", expression = "excited", text = "(The Director leaned forward. The VP nodded. They saw the vision. They saw what I've been building toward for six months. This is what product ownership is supposed to feel like.)", condition = "qa_confident" },
        { speaker = "pm", expression = "cheerful", text = "Priya, your opener was perfect. You had them from the first sentence.", condition = "qa_confident" },

        { speaker = "po", expression = "neutral", text = "(Eight weeks. Did I just promise eight weeks? The team barely survived ten. What am I doing?)", condition = "qa_nervous" },
        { speaker = "dev", expression = "neutral", text = "Priya, the timeline is a conversation. Not a contract. We'll figure it out.", condition = "qa_nervous" },
        { speaker = "po", expression = "neutral", text = "(Sam being kind is somehow more terrifying than Sam being difficult.)", condition = "qa_nervous" },

        { speaker = "po", expression = "neutral", text = "Ask me on Monday. Right now I need to sit with the fact that this might actually work." },

        { text = "", goto = "day13" }
    }
}
