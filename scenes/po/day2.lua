return {
    title = "Day 2 -- Tuesday",
    subtitle = "The First Standup",
    narration = "Standup with the team. You have ideas. You have a deck. You also have the floor, if you can hold it.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- PRE-STANDUP MORNING
        { speaker = "po", expression = "neutral", text = "(Tuesday. 8:22 AM. Let's check the analytics on the deck.)" },
        { speaker = "po", expression = "neutral", text = "(Opens the sharing dashboard. The full deck. Sent to six people.)" },
        { speaker = "po", expression = "neutral", text = "(Three people opened it. Three out of six. That's... 50 percent. Glass half full.)" },
        { speaker = "po", expression = "defensive", text = "(Average view time: 2 minutes and 14 seconds. For the whole deck. That's less than 3 seconds per slide.)" },
        { speaker = "po", expression = "defensive", text = "(Nobody finished it. The furthest anyone got was slide 31. That was Alex. Bless Alex.)" },
        { speaker = "po", expression = "neutral", text = "(Sam didn't open it at all. Neither did Riley. Casey opened it, jumped to the architecture section, and closed it.)" },
        { speaker = "po", expression = "defensive", text = "(I spent three weeks on this deck. Three weeks of user research, competitive analysis, market positioning. And nobody got past the competitive landscape slide.)" },
        { speaker = "po", expression = "neutral", text = "(Maybe... maybe the deck is too long. Maybe the stock photos on slides 15 through 20 didn't help.)" },
        { speaker = "po", expression = "neutral", text = "(No. The deck is good. The deck is the vision. If people didn't read it, that's a communication problem, not a content problem.)" },
        { speaker = "po", expression = "neutral", text = "(Checks Slack. Casey posted an architecture diagram at 11:43 PM. Seven microservices. I replied with fire emojis because it looked impressive.)" },
        { speaker = "po", expression = "neutral", text = "(Looking at it again now... I don't understand most of it. But the boxes are connected. That feels right.)" },
        { speaker = "po", expression = "neutral", text = "(Alex posted a user flow. Clean, clear. I can see my personas in there. Alex actually read the deck. Or at least slides 5 through 8.)" },
        { speaker = "po", expression = "neutral", text = "(I added three new slides last night. Competitive landscape deep dive. Nobody asked for it. But they'll thank me later.)" },
        { speaker = "po", expression = "neutral", text = "(Standup in 30 minutes. I should prepare my update. Make it punchy. Make them see the vision.)" },
        { speaker = "po", expression = "neutral", text = "(Heads to the kitchen. Makes tea. Practices the update in my head. 'Refined the deck, added competitive insights, proposing the social feed as hero feature.')" },
        { speaker = "po", expression = "neutral", text = "(That's good. Confident. Directional. They'll see I'm not just the slide person.)" },

        -- THE STANDUP
        { bg = "meeting_room" },
        { speaker = "pm", expression = "cheerful", text = "Good morning! Welcome to our first standup. Yesterday, today, blockers. Fifteen minutes." },
        { speaker = "po", expression = "neutral", text = "(That's... not a lot of time to convey a vision.)" },
        { speaker = "dev", expression = "neutral", text = "Set up the repo and tooling yesterday. Today I'm blocked until we align on direction." },
        { speaker = "po", expression = "neutral", text = "(Sam's update was eight seconds. That can't be right. There's a whole repo now. That's exciting.)" },
        { speaker = "ux", expression = "neutral", text = "Yesterday I sketched user flows. Today I'm mapping the information architecture. No blockers." },
        { speaker = "po", expression = "neutral", text = "(Alex is building on the personas from my deck. Slide 6. I knew someone would use those.)" },
        { speaker = "arch", expression = "whiteboarding", text = "I started the architecture doc. Posted three options in Slack. We need to discuss the data model before Sam goes too far." },
        { speaker = "dev", expression = "frustrated", text = "I literally just made a git repo." },
        { speaker = "po", expression = "neutral", text = "(Tension already. Casey and Sam. This is going to be a thing.)" },
        { speaker = "pm", expression = "neutral", text = "Let's take that offline. Riley?" },
        { speaker = "qa", expression = "neutral", text = "I'm writing the test plan. Which is hard because we don't have requirements yet." },
        { speaker = "po", expression = "defensive", text = "I sent a 47-slide deck!" },
        { speaker = "po", expression = "defensive", text = "(I said it before I could stop myself. Defensive reflex. The deck is my baby and Riley just called it ugly.)" },
        { speaker = "qa", expression = "deadpan", text = "Six slides of clip art and a stock photo of a sunrise is not a spec, Priya." },
        { speaker = "po", expression = "defensive", text = "(Riley always does this. Reduces everything to its most literal form. The photos REPRESENT something.)" },
        { speaker = "po", expression = "defensive", text = "(But... she's not entirely wrong. Slides 15 through 20 are mostly vibes. And slide 23 is just the word 'delight' in 72-point font. That felt powerful at 1 AM.)" },
        { speaker = "po", expression = "defensive", text = "(I can feel the room shifting. Sam's nodding slightly. Casey's looking at the table. Jordan's stressed.)" },
        { speaker = "po", expression = "neutral", text = "(Nobody is defending the deck. Not even Alex, who actually read some of it.)" },
        { speaker = "pm", expression = "neutral", text = "Priya, your update?" },
        { speaker = "po", expression = "excited", text = "I refined the deck last night. Added three new slides on competitive landscape. And I've been thinking about a social feed as the hero feature." },
        { speaker = "dev", expression = "neutral", text = "(A social feed.)" },
        { speaker = "po", expression = "neutral", text = "(Sam's face just did something. Not approval. Not rejection. Something analytical. Calculating the cost.)" },
        { speaker = "qa", expression = "deadpan", text = "What does 'hero feature' mean in terms of acceptance criteria?" },
        { speaker = "po", expression = "neutral", text = "(There's that phrase again. Acceptance criteria. Riley's favorite two words.)" },
        { speaker = "ux", expression = "neutral", text = "I'm thinking about the design approach. Priya, can you help me prioritize the user flows?" },
        { speaker = "po", expression = "neutral", text = "(Alex is asking for guidance. This is what I'm here for. This is the moment.)" },

        -- THE CHOICE
        { speaker = "po", expression = "neutral", text = "(Three ways to answer. Each one shapes how this team sees me.)",
            choices = {
                { text = "Pause the deck. Let me listen to what the team actually needs from me.", set = {pushed_interviews = true}, rel = {ux = 2, dev = 1, qa = 1, pm = 0} },
                { text = "Walk Alex through the deck section by section. The vision is the spec.", set = {started_wireframes = true}, rel = {ux = 1, pm = 1, dev = -1} },
                { text = "Start writing real acceptance criteria. The deck was the pitch, we need the spec now.", set = {needs_requirements = true}, rel = {dev = 2, qa = 2, arch = 1, ux = 1} },
            }
        },

        -- Pause and listen
        { speaker = "po", expression = "neutral", text = "Actually, before I answer that, I want to hear from each of you. What do you need from me to do your job?", condition = "pushed_interviews" },
        { speaker = "dev", expression = "smiling", text = "(That's a question I have never been asked by a PO.)", condition = "pushed_interviews" },
        { speaker = "qa", expression = "neutral", text = "Acceptance criteria. Edge cases. The boring stuff.", condition = "pushed_interviews" },
        { speaker = "dev", expression = "neutral", text = "Inputs, outputs, and priorities. In that order.", condition = "pushed_interviews" },
        { speaker = "arch", expression = "neutral", text = "Data entities. Relationships. Scale expectations.", condition = "pushed_interviews" },
        { speaker = "ux", expression = "neutral", text = "User priorities. Which personas matter most in sprint one.", condition = "pushed_interviews" },
        { speaker = "po", expression = "neutral", text = "(Boring stuff. Inputs. Entities. Priorities. Not a single person said 'vision.' Not one.)", condition = "pushed_interviews" },
        { speaker = "po", expression = "neutral", text = "(The deck is the fun part. The boring part is the work. And the work is what they need from me.)", condition = "pushed_interviews" },

        -- Walk through deck
        { speaker = "po", expression = "excited", text = "Slide 1: the problem space. Slide 2: user personas. Slide 3: market context. Slide 4...", condition = "started_wireframes" },
        { speaker = "dev", expression = "frustrated", text = "(I am going to die in this room.)", condition = "started_wireframes" },
        { speaker = "pm", expression = "stressed", text = "Priya, maybe just the highlights?", condition = "started_wireframes" },
        { speaker = "po", expression = "excited", text = "Right, right. The hero feature. Social feed. Think Instagram meets Slack meets... something new.", condition = "started_wireframes" },
        { speaker = "arch", expression = "concerned", text = "Please don't design a social feed without talking to me first. The real-time sync alone is...", condition = "started_wireframes" },
        { speaker = "po", expression = "defensive", text = "Casey, let Alex cook. We can figure out the tech later.", condition = "started_wireframes" },
        { speaker = "po", expression = "neutral", text = "(I said 'figure out the tech later.' Sam just closed their laptop. That's... that's not a good sign.)", condition = "started_wireframes" },

        -- Real spec
        { speaker = "po", expression = "neutral", text = "Okay. The deck was a pitch. You need a spec. I owe you one.", condition = "needs_requirements" },
        { speaker = "dev", expression = "smiling", text = "Wait. Did Priya just commit to writing a real spec?", condition = "needs_requirements" },
        { speaker = "po", expression = "neutral", text = "Priorities locked tomorrow. Acceptance criteria for the top three features by end of week. I promise.", condition = "needs_requirements" },
        { speaker = "qa", expression = "smirk", text = "Mark this date in the calendar. History was made.", condition = "needs_requirements" },
        { speaker = "po", expression = "neutral", text = "(Riley's smiling. Riley never smiles. That's either approval or mockery. I'll take either one right now.)", condition = "needs_requirements" },
        { speaker = "arch", expression = "neutral", text = "If you include data relationships in the spec, I can start the model this week.", condition = "needs_requirements" },
        { speaker = "po", expression = "neutral", text = "Deal. Data relationships. I can do that.", condition = "needs_requirements" },
        { speaker = "po", expression = "neutral", text = "(Can I do that? I've never written data relationships. I'll figure it out. Google exists.)", condition = "needs_requirements" },

        -- CONVERGE
        { speaker = "pm", expression = "neutral", text = "Alright, wrapping up. Total time: 36 minutes. Not our finest." },
        { speaker = "dev", expression = "smiling", text = "New record. Usually it's worse." },
        { speaker = "po", expression = "neutral", text = "(38 minutes. And I spent most of it defending a deck that three people opened and zero people finished.)" },

        -- POST-STANDUP: Emotional processing
        { bg = "office_day" },
        { speaker = "po", expression = "neutral", text = "(Back at the desk. Closes the deck. Opens a new document. Blank page.)" },
        { speaker = "po", expression = "neutral", text = "(The deck isn't the problem. The deck is a symptom. I presented a vision when they needed a plan.)" },
        { speaker = "po", expression = "defensive", text = "(But the vision matters. Someone has to see the big picture. Someone has to hold the 'why.')" },
        { speaker = "po", expression = "neutral", text = "(The problem is that 'why' doesn't compile. 'Why' doesn't pass tests. 'Why' doesn't deploy.)" },
        { speaker = "po", expression = "neutral", text = "(Riley called it a mood board. It stung because it's partly true. Slides 15 through 20 are aspirational. Slide 23 is... aspirational.)" },
        { speaker = "po", expression = "neutral", text = "(But slide 6, the personas, those are real. Based on interviews. Alex saw that. Alex used them.)" },
        { speaker = "po", expression = "neutral", text = "(Slack notification. Alex. 'Hey, really liked the personas on slide 6. Can we pair on user flows this afternoon?')" },
        { speaker = "po", expression = "neutral", text = "(One person. One person saw the value. That's enough to keep going.)" },
        { speaker = "po", expression = "neutral", text = "(Types 'yes, absolutely' to Alex. Then opens the blank document again.)" },
        { speaker = "po", expression = "neutral", text = "(What does Sam need? Requirements. What does Riley need? Acceptance criteria. What does Casey need? Data entities.)" },
        { speaker = "po", expression = "neutral", text = "(They're all asking for the same thing in different languages. They want the vision translated into something they can hold.)" },
        { speaker = "po", expression = "neutral", text = "(I can do that. I think. The deck was version one. The spec is version two. Same vision, different format.)" },
        { speaker = "po", expression = "neutral", text = "(Starts typing. Feature 1: User Authentication. Acceptance criteria...)" },
        { speaker = "po", expression = "neutral", text = "(This is harder than slides. There are no stock photos to hide behind here. Just words that have to be precise.)" },
        { speaker = "po", expression = "tired", text = "(Day 2. The team is already deciding what kind of PO I am. The slide person or the spec person. I have to be both. But right now, they need the spec person.)" },
        { speaker = "po", expression = "neutral", text = "(Tomorrow I show up with something concrete. Not a mood board. Not 72-point font. Just... the work.)" },

        { text = "", goto = "day3" }
    }
}
