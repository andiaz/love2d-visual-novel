return {
    title = "Day 12 -- Friday",
    subtitle = "Demo Day",
    narration = "This is it. The final demo. Five hours to prepare. Leadership is waiting. Your design is about to meet real eyes for the first time.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- Pre-demo preparation
        { speaker = "ux", expression = "neutral", text = "Friday morning. Demo day. The real one this time." },
        { speaker = "ux", expression = "neutral", text = "(My design is about to be projected onto a wall in front of people who control budgets. Every pixel choice I made over ten weeks is going to be judged in 20 minutes.)" },
        { speaker = "ux", expression = "neutral", text = "(I redesigned the dashboard three times. I know which version shipped. I also know which version was better. They are not the same version.)" },
        { speaker = "pm", expression = "stressed", text = "Okay team. Demo at 2 PM. That gives us five hours to finalize." },
        { speaker = "dev", expression = "neutral", text = "The build from last night is stable. Don't touch anything." },
        { speaker = "qa", expression = "smirk", text = "I've prepared a list of things NOT to click during the demo. It's... extensive." },
        { speaker = "arch", expression = "neutral", text = "The performance fix is in. We can handle up to 10 concurrent users now." },
        { speaker = "dev", expression = "smiling", text = "A whole ten users. We're practically at scale." },
        { speaker = "ux", expression = "neutral", text = "(I'm leading the walkthrough. That means my voice, my clicks, my pacing. If I hesitate on a screen, leadership will think the design is uncertain. If I move too fast, they'll think I'm hiding something.)" },

        { speaker = "ux", expression = "neutral", text = "(The scope fight paid off. Fewer screens means a cleaner story. I can walk through this without detours.)", condition = "fought_scope" },
        { speaker = "ux", expression = "neutral", text = "(We absorbed the extra scope. Some of those screens were designed in a day. They look like they were designed in a day. I hope nobody lingers on them.)", condition = "absorbed_scope" },

        -- Priya's moment
        { speaker = "po", expression = "neutral", text = "Team? I just want to say... I know I've been a lot." },
        { speaker = "dev", expression = "neutral", text = "Priya--" },
        { speaker = "po", expression = "neutral", text = "No, let me finish. I push hard because I believe in this product. But I should have listened more." },
        { speaker = "qa", expression = "smirk", text = "(Is Priya... growing as a person?)" },
        { speaker = "po", expression = "neutral", text = "After the demo, I want to do a proper retrospective. A real one." },
        { speaker = "pm", expression = "cheerful", text = "That's... actually very mature, Priya." },
        { speaker = "ux", expression = "neutral", text = "(A real retro. Where I can finally say what I think about the design process. I'm ready for that conversation.)" },

        -- The demo prep choice
        { speaker = "pm", expression = "neutral", text = "Alex, you're leading the demo walkthrough. How do you want to present this?" },

        { speaker = "ux", expression = "neutral", text = "Last design decision. How do we frame Project Chimera?",
            choices = {
                { text = "Show the polished core. Less is more.", set = {polished_subset = true}, rel = {qa = 2, dev = 2, pm = 1} },
                { text = "Show everything, warts and all. Demonstrate scope.", set = {showed_everything = true}, rel = {po = 2, pm = -1, qa = -2} },
                { text = "Be honest about where we are and where we're going.", set = {honest_demo = true}, rel = {pm = 1, dev = 1, qa = 1, po = 1, arch = 1} },
            }
        },

        -- Polished subset
        { speaker = "dev", expression = "neutral", text = "Smart. Show strength, not surface area.", condition = "polished_subset" },
        { speaker = "qa", expression = "neutral", text = "I approve. The parts that work actually work well.", condition = "polished_subset" },
        { speaker = "ux", expression = "neutral", text = "(Three screens I'm proud of. That's the demo. That's enough.)", condition = "polished_subset" },

        -- Show everything
        { speaker = "po", expression = "excited", text = "Yes! Show them the vision! All of it!", condition = "showed_everything" },
        { speaker = "qa", expression = "smirk", text = "Including the search that sorts by zodiac sign?", condition = "showed_everything" },
        { speaker = "dev", expression = "neutral", text = "Like I said, it's sorted alphabetically -- in Korean.", condition = "showed_everything" },
        { speaker = "ux", expression = "neutral", text = "(Some of these screens were designed under duress. Leadership is about to see my duress work. Deep breaths.)", condition = "showed_everything" },

        -- Honest demo
        { speaker = "pm", expression = "neutral", text = "Radical transparency. I like it. Leadership respects honesty.", condition = "honest_demo" },
        { speaker = "ux", expression = "neutral", text = "Here's what we built. Here's what works. Here's what needs more time.", condition = "honest_demo" },
        { speaker = "dev", expression = "neutral", text = "Refreshing. Let's do it.", condition = "honest_demo" },
        { speaker = "ux", expression = "neutral", text = "(The honest frame means I can explain the design choices. Not just show them. Explain the 'why.' That's where design lives.)", condition = "honest_demo" },

        -- Transition to demo
        { text = "", bg = "meeting_room", bgm = "tension" },

        -- The demo
        { speaker = "pm", expression = "neutral", text = "It's 2 PM. Leadership is in the room. Here we go." },
        { speaker = "ux", expression = "neutral", text = "Good afternoon everyone. Let me walk you through Project Chimera." },
        { speaker = "ux", expression = "neutral", text = "(I click the first screen. The login page. I designed this in week two. It's simple. Clean. It loads fast.)" },
        { speaker = "ux", expression = "neutral", text = "(The VP of Product is watching. Her eyes move the way a user's eyes move. Top-left. Navigation. Then content. She's reading my information architecture without knowing it.)" },

        { speaker = "ux", expression = "neutral", text = "(The pairing with Sam shows. Every interaction I designed, Sam built exactly. No compromises. No 'close enough.' Exact. That never happens.)", condition = "paired_with_dev" },

        -- Watching users interact with the design
        { speaker = "ux", expression = "neutral", text = "(The dashboard loads. The Director of Product leans forward and squints at the data cards. He's reading them. He's actually reading them.)" },
        { speaker = "ux", expression = "neutral", text = "(That squint. That's the squint of someone trying to use the interface. Not evaluate it. Use it. That's the moment every designer lives for.)" },
        { speaker = "ux", expression = "neutral", text = "(The filter component. I click it. The dropdown appears. Clean animation. The data updates. The VP nods.)" },

        -- The feature that works
        { speaker = "ux", expression = "neutral", text = "(The data visualization section. My favorite part. The chart renders in real time. The colors I chose - the muted palette with one accent - it works on the projector. I tested it on three different screens but I wasn't sure about projectors.)" },
        { speaker = "ux", expression = "neutral", text = "(It works. The contrast is readable. The hierarchy is clear. Ten weeks of design decisions in one chart, and it reads correctly.)" },

        -- Near-miss
        { speaker = "ux", expression = "neutral", text = "(Then I navigate to the detail view. And the layout shifts. Just slightly. A CSS issue Sam and I never caught. The sidebar jumps 4 pixels to the left.)" },
        { speaker = "ux", expression = "neutral", text = "(I see it. Riley sees it. Nobody else sees it. But I see it. Four pixels. That's going to haunt me all weekend.)" },
        { speaker = "ux", expression = "neutral", text = "(I keep talking. I don't pause on the screen. Move forward. Don't linger on the broken pixel.)" },

        { speaker = "ux", expression = "neutral", text = "(The absorbed scope screens are next. The design is thinner here. Faster iterations, less refinement. The VP's eyes move differently on these screens. She's scanning, not reading. She can tell.)", condition = "absorbed_scope" },
        { speaker = "ux", expression = "neutral", text = "(Every screen in this demo was given proper time. The scope cut meant I could polish. Leadership is seeing my best work, not my rushed work.)", condition = "fought_scope" },

        -- Tough question
        { speaker = "ux", expression = "neutral", text = "(The VP of Product asks: 'How did you validate these design decisions?')" },
        { speaker = "ux", expression = "neutral", text = "We ran lightweight usability tests with five internal users during week eight. Three core tasks. Average completion rate was 87%. The main pain point was the filter discoverability, which we addressed in the iteration you're seeing now." },
        { speaker = "ux", expression = "neutral", text = "(I said 87%. The real number is 86.4%. Close enough. The point is we tested. Most teams don't even test.)" },

        -- Post-demo transition
        { text = "", bg = "break_room" },

        -- Leadership feedback and team processing
        { speaker = "pm", expression = "cheerful", text = "We did it, team. The demo is done." },
        { speaker = "pm", expression = "cheerful", text = "VP of Product said 'the UX is stronger than expected.' Alex, she was talking about your work." },
        { speaker = "ux", expression = "neutral", text = "(Stronger than expected. I'll take it. That's VP for 'I was prepared to be disappointed and I wasn't.')" },
        { speaker = "dev", expression = "neutral", text = "How do we feel?" },
        { speaker = "qa", expression = "deadpan", text = "My hands are still shaking." },
        { speaker = "ux", expression = "neutral", text = "I feel like every design decision I've ever made was just projected onto a wall and judged." },
        { speaker = "dev", expression = "neutral", text = "Welcome to live demos." },
        { speaker = "arch", expression = "neutral", text = "The four-pixel shift. I saw it too, Alex." },
        { speaker = "ux", expression = "neutral", text = "(Of course Casey saw it.)" },

        { speaker = "ux", expression = "neutral", text = "(The honest frame let me explain my design rationale. Leadership asked 'why' questions, not 'what' questions. 'Why' means they care about the thinking. That's the best feedback a designer can get.)", condition = "honest_demo" },

        -- Choice 2: Q&A reflection
        { speaker = "ux", expression = "neutral", text = "(The demo is over. My design was on the wall. Leadership saw it. They asked questions. How did I hold up under the design scrutiny?)",
            choices = {
                { text = "I walked them through every design decision with confidence. They saw my process.", set = {qa_confident = true}, rel = {pm = 1, po = 1} },
                { text = "I spent the whole Q&A praying nobody would ask about the four-pixel shift.", set = {qa_nervous = true}, rel = {dev = 1, qa = 1} },
            }
        },

        { speaker = "ux", expression = "neutral", text = "(I explained the design. The rationale. The research. And they listened. Not just politely. Actually listened. That's new. That's really new.)", condition = "qa_confident" },
        { speaker = "po", expression = "neutral", text = "Alex, the usability data was the strongest part of the Q&A. Leadership loves numbers.", condition = "qa_confident" },

        { speaker = "ux", expression = "neutral", text = "(I survived. The four-pixel shift lives rent-free in my head. But nobody asked about it. The design held. Mostly.)", condition = "qa_nervous" },
        { speaker = "dev", expression = "neutral", text = "Alex, for what it's worth, the design looked great on the projector. The color choices were perfect.", condition = "qa_nervous" },
        { speaker = "ux", expression = "neutral", text = "(Sam complimenting my color palette. That's the most unexpected thing that happened today. And a five-second export freeze also happened today.)", condition = "qa_nervous" },

        { speaker = "ux", expression = "neutral", text = "Ask me on Monday. Right now I need to go fix a four-pixel CSS issue that nobody noticed except me and Casey." },

        { text = "", goto = "day13" }
    }
}
