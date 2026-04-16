return {
    title = "Day 13 -- Monday",
    subtitle = "The Feedback",
    narration = "The demo is done. The build is green. Leadership has opinions.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- Morning: checking the aftermath
        { speaker = "dev", expression = "tired", text = "Monday. I open the staging server logs before my email. Old habits." },
        { speaker = "dev", expression = "neutral", text = "Zero crashes since the demo. The code held. I feel something that might be pride." },
        { speaker = "dev", expression = "tired", text = "Then I open the email from the director. Back to earth." },

        { bg = "meeting_room" },

        -- Team meeting
        { speaker = "pm", expression = "neutral", text = "Feedback from leadership. Let me just read it." },
        { speaker = "dev", expression = "neutral", text = "(No preamble. Jordan is learning.)" },

        { speaker = "pm", expression = "neutral", text = "They thought the demo was focused. Solid engineering under the hood.", condition = "polished_subset" },
        { speaker = "pm", expression = "neutral", text = "They liked the ambition. The search needs work. And the mobile responsiveness.", condition = "showed_everything" },
        { speaker = "pm", expression = "cheerful", text = "Quote from the VP: 'First time a team showed me what doesn't work yet. I respect that.'", condition = "honest_demo" },

        -- Conditional callbacks
        { speaker = "dev", expression = "neutral", text = "(The scope fight paid off. The demo was clean because we said no to the noise.)", condition = "fought_scope" },
        { speaker = "dev", expression = "tired", text = "(The scope we absorbed showed in the rough edges. I knew it would.)", condition = "absorbed_scope" },

        { speaker = "pm", expression = "neutral", text = "Chimera gets another sprint." },
        { speaker = "po", expression = "excited", text = "Another sprint! We could--" },
        { speaker = "dev", expression = "frustrated", text = "Retro first, Priya." },
        { speaker = "po", expression = "neutral", text = "Right. Yes. Retro." },

        { text = "..." },

        -- Retro
        { speaker = "pm", expression = "neutral", text = "What worked. What broke. What changes." },

        -- Each person's retro (differentiated for dev POV)
        { speaker = "ux", expression = "neutral", text = "Pairing with Sam saved the handoff. We should have started it earlier.", condition = "paired_with_dev" },
        { speaker = "dev", expression = "neutral", text = "(Alex is right. The pairing sessions were messy at first. Two languages, one screen. But by day seven we had a rhythm. A shared instinct for what 'done' meant.)", condition = "paired_with_dev" },
        { speaker = "ux", expression = "neutral", text = "The handoff was rough. We need more overlap between design and implementation.", condition = {paired_with_dev = nil} },
        { speaker = "dev", expression = "tired", text = "(The handoff was rough because I treated the designs like tickets instead of conversations. That one's on me.)", condition = {paired_with_dev = nil} },

        { speaker = "qa", expression = "neutral", text = "Sam owned the bugs when they came in. That made triage actually productive.", condition = "took_ownership" },
        { speaker = "dev", expression = "neutral", text = "(Owning bugs in public is hard. Every time Riley read a bug number, my stomach dropped. But the team stopped tiptoeing around problems. That was worth the discomfort.)", condition = "took_ownership" },
        { speaker = "qa", expression = "deadpan", text = "Bug triage needs to happen daily, not when QA yells loud enough.", condition = {took_ownership = nil} },
        { speaker = "dev", expression = "tired", text = "(That's fair. I avoided the bug log for three straight days during sprint one. Three days of bugs compounding because I didn't want to look.)", condition = {took_ownership = nil} },

        { speaker = "arch", expression = "neutral", text = "The architecture survived the pivot. Barely. I should have built more flexibility in from the start." },
        { speaker = "dev", expression = "neutral", text = "(Casey says 'barely' like it's a failure. The architecture survived. That's engineering. Barely is how most things survive.)" },
        { speaker = "po", expression = "neutral", text = "I kept moving the goalposts. The team built what I asked for -- I just kept asking for something different." },
        { speaker = "dev", expression = "tired", text = "(Priya admitting that in front of the room. I didn't expect that. Respect.)" },

        { speaker = "pm", expression = "neutral", text = "Sam?" },

        { speaker = "dev", expression = "tired", text = "(Honest. No deflection. What did I actually learn?)",
            choices = {
                { text = "I should have spiked the unknowns before writing production code. Every time.", set = {retro_research = true}, rel = {arch = 1, qa = 1} },
                { text = "Design and dev need to sit together from day one. Not at handoff.", set = {retro_communication = true}, rel = {ux = 2, arch = 1} },
                { text = "This team argued its way to something real. I trust these people.", set = {retro_trust = true}, rel = {pm = 1, ux = 1, qa = 1, po = 1, arch = 1} },
            }
        },

        { speaker = "arch", expression = "neutral", text = "Spikes first. I'll pair with you on the architecture spikes.", condition = "retro_research" },
        { speaker = "dev", expression = "neutral", text = "(Casey volunteering to pair. Three weeks ago that would have been unthinkable. Casey's whiteboards were private territory.)", condition = "retro_research" },
        { speaker = "ux", expression = "excited", text = "Same room, every day. I'll bring the coffee.", condition = "retro_communication" },
        { speaker = "dev", expression = "smiling", text = "(Alex offering coffee. The universal peace treaty of cross-functional collaboration.)", condition = "retro_communication" },
        { speaker = "pm", expression = "neutral", text = "Trust. That's the one thing you can't put in a sprint plan.", condition = "retro_trust" },
        { speaker = "dev", expression = "neutral", text = "(Jordan writes it on the whiteboard. Just the word. TRUST. In all caps. With a box around it. It looks ridiculous.)", condition = "retro_trust" },
        { speaker = "dev", expression = "smiling", text = "(It also looks right.)", condition = "retro_trust" },

        { speaker = "pm", expression = "neutral", text = "Alright. Retro is closed. Good work, everyone." },
        { speaker = "dev", expression = "tired", text = "(People start gathering their things. The whiteboard is full of retro notes. Someone should take a photo. Nobody does.)" },
        { speaker = "dev", expression = "neutral", text = "(I take a photo. Quietly. The commit log captures the code. Someone should capture the conversations too.)" },

        { text = "..." },

        -- Post-retro moment
        { bg = "break_room", bgm = "late_night" },

        { speaker = "dev", expression = "tired", text = "I grab a coffee after the retro. The machine makes a sound like a dying printer." },
        { speaker = "dev", expression = "tired", text = "(The retro drained me more than the all-nighter. Code is honest. People are complicated. Retros are where complicated people try to be honest about code.)" },

        -- Conditional 1-on-1
        { speaker = "ux", expression = "neutral", text = "Room for one more?", condition = {rel_ux_gte = 5} },
        { speaker = "dev", expression = "neutral", text = "Always.", condition = {rel_ux_gte = 5} },
        { speaker = "ux", expression = "neutral", text = "Those pairing sessions were the best part of this for me.", condition = {rel_ux_gte = 5} },
        { speaker = "dev", expression = "smiling", text = "(I'm not going to say 'same.' I'm going to nod. I nod.)", condition = {rel_ux_gte = 5} },
        { speaker = "ux", expression = "neutral", text = "I learned more about code constraints in two weeks than in a year of reading docs.", condition = {rel_ux_gte = 5} },
        { speaker = "dev", expression = "neutral", text = "And I learned that a 2-pixel misalignment can change how a user feels about a button.", condition = {rel_ux_gte = 5} },
        { speaker = "ux", expression = "neutral", text = "That's growth, Sam.", condition = {rel_ux_gte = 5} },
        { speaker = "dev", expression = "tired", text = "(Growth. The non-technical kind. The kind you can't measure in commits or test coverage. The kind that makes the next project slightly less painful.)", condition = {rel_ux_gte = 5} },

        { speaker = "qa", expression = "deadpan", text = "That coffee machine is a health hazard.", condition = {rel_qa_gte = 5, rel_ux_lt = 5} },
        { speaker = "dev", expression = "smiling", text = "Riley. You kept us honest. Even when we didn't want to be.", condition = {rel_qa_gte = 5, rel_ux_lt = 5} },
        { speaker = "qa", expression = "neutral", text = "That's literally my job.", condition = {rel_qa_gte = 5, rel_ux_lt = 5} },
        { speaker = "dev", expression = "neutral", text = "No, it's not. Your job is to find bugs. Keeping us honest was a choice.", condition = {rel_qa_gte = 5, rel_ux_lt = 5} },
        { speaker = "qa", expression = "neutral", text = "...huh.", condition = {rel_qa_gte = 5, rel_ux_lt = 5} },
        { speaker = "dev", expression = "neutral", text = "(Riley stares at the coffee machine for a long moment. Processing. QA processes everything. Even compliments.)", condition = {rel_qa_gte = 5, rel_ux_lt = 5} },

        { speaker = "dev", expression = "tired", text = "The break room is empty. Just me and the sound of a coffee machine dying.", condition = {rel_ux_lt = 5, rel_qa_lt = 5} },
        { speaker = "dev", expression = "tired", text = "(Solo retro. The kind where you sit with the coffee and ask yourself what you would do differently. The answer is always 'talk more.' The problem is always 'I didn't.')", condition = {rel_ux_lt = 5, rel_qa_lt = 5} },

        -- Second choice
        { speaker = "dev", expression = "neutral", text = "(One more sprint. What matters?)",
            choices = {
                { text = "Clean up the tech debt. Refactor before adding.", set = {forward_cautious = true}, rel = {qa = 1, arch = 1} },
                { text = "Ship something bold. We know the codebase now.", set = {forward_ambitious = true}, rel = {po = 1, ux = 1} },
            }
        },

        { speaker = "dev", expression = "neutral", text = "(Refactor first. Build on a clean foundation.)", condition = "forward_cautious" },
        { speaker = "dev", expression = "neutral", text = "(Bold. We earned the right to be bold.)", condition = "forward_ambitious" },

        { text = "", goto = "day14" }
    }
}
