return {
    title = "Day 1 -- Monday",
    subtitle = "Sketching the System",
    narration = "A new project. A blank napkin. Six weeks. Somewhere between today and the demo, this all has to become a system that doesn't collapse under its own weight.",
    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- PRE-MEETING: Sketching on a napkin
        { speaker = "arch", expression = "neutral", text = "(New project. Twenty minutes until kickoff. Napkin and a pen. That's all I need to start.)" },
        { speaker = "arch", expression = "neutral", text = "(Three boxes. That's where every system starts. Client, server, data store.)" },
        { speaker = "arch", expression = "whiteboarding", text = "(The client splits immediately. Web and mobile, if the rumors are true. That means a shared API layer.)" },
        { speaker = "arch", expression = "neutral", text = "(REST or GraphQL? Too early. Don't pick the protocol before you know the data shape.)" },
        { speaker = "arch", expression = "neutral", text = "(But I'm already drawing arrows. Can't help it. This is how I think.)" },
        { speaker = "arch", expression = "neutral", text = "(The product owner sent a deck last night. I skimmed it for nouns.)" },
        { speaker = "arch", expression = "concerned", text = "('Knowledge,' 'sharing,' 'search,' 'recommendations.' Those are the entities. Everything else is decoration.)" },
        { speaker = "arch", expression = "neutral", text = "('Recommendations' worries me. That implies a data pipeline. ML, maybe. That's not a six-week feature.)" },
        { speaker = "arch", expression = "neutral", text = "(Sam's the developer. Good devs push back on bad architecture. I want pushback.)" },
        { speaker = "arch", expression = "neutral", text = "(Riley, QA. If the architecture is clean, testing is straightforward. If it's not, Riley will be the first to know.)" },
        { speaker = "arch", expression = "neutral", text = "(Alex, UX. The frontend architecture depends on what Alex designs. Components, state management, routing. All downstream of UX.)" },
        { speaker = "arch", expression = "neutral", text = "(Priya's the PO. Product owners define the what. I define the how. The trick is making sure the what is possible in six weeks.)" },
        { speaker = "arch", expression = "concerned", text = "(This napkin already has more architecture than the deck has requirements. That's not great.)" },
        { speaker = "arch", expression = "neutral", text = "(Fold the napkin. Pocket it. Time to go listen before I draw anything else.)" },

        -- KICKOFF MEETING
        { speaker = "pm", expression = "cheerful", text = "Okay, we're all here! Let's get Project Chimera rolling.", bg = "meeting_room" },
        { speaker = "pm", expression = "cheerful", text = "I'm Jordan, your PM. Quick intros, name and role." },
        { speaker = "arch", expression = "neutral", text = "(Watching the room. Who's a builder, who's a talker, who's both.)" },
        { speaker = "ux", expression = "neutral", text = "Alex, UX Design." },
        { speaker = "arch", expression = "neutral", text = "(Alex brought a sketchbook. Good. Visual thinkers and systems thinkers speak similar languages.)" },
        { speaker = "dev", expression = "neutral", text = "Sam, dev. I write the code that makes the things do the stuff." },
        { speaker = "arch", expression = "neutral", text = "(Understated. That line is practiced. Sam's done this before.)" },
        { speaker = "qa", expression = "neutral", text = "Riley, QA. I break things." },
        { speaker = "arch", expression = "neutral", text = "(Three words. Precise. Riley thinks in failure modes. That's the complement to how I think.)" },
        { speaker = "po", expression = "excited", text = "Priya, Product Owner! 47-slide deck inbound!" },
        { speaker = "arch", expression = "concerned", text = "(That's not a vision, that's a novel. Let's see what's actually in there.)" },
        { speaker = "pm", expression = "neutral", text = "Casey, you're our architect. Want to say hi?" },

        -- THE CHOICE
        { speaker = "arch", expression = "neutral", text = "Casey. Architecture. I'll be looking at the system design and making sure we don't paint ourselves into a corner.",
            choices = {
                { text = "Walk to the whiteboard. Start drawing the high-level boxes.", set = {arch_drew_boxes = true}, rel = {dev = 2, po = -1} },
                { text = "Ask Priya about the data model implications first.", set = {arch_asked_data = true}, rel = {po = 1, dev = 1} },
                { text = "Hold off. Listen first, design later.", set = {arch_held_off = true}, rel = {qa = 1} },
            }
        },

        -- WHITEBOARD PATH
        { speaker = "arch", expression = "whiteboarding", text = "Actually, mind if I use the whiteboard? Easier to talk about this visually." },
        { speaker = "arch", expression = "whiteboarding", text = "Three boxes. Frontend, API layer, data store. Everything we discuss needs to land in one of these three.", condition = "arch_drew_boxes" },
        { speaker = "dev", expression = "smiling", text = "Finally. Words I understand.", condition = "arch_drew_boxes" },
        { speaker = "arch", expression = "neutral", text = "Frontend splits into two: web client and mobile client. Both talk to the same API.", condition = "arch_drew_boxes" },
        { speaker = "po", expression = "defensive", text = "Can we do the boxes after the vision? I have slides.", condition = "arch_drew_boxes" },
        { speaker = "arch", expression = "neutral", text = "The boxes ARE the vision, Priya. Just in a language the engineers can execute on.", condition = "arch_drew_boxes" },
        { speaker = "qa", expression = "neutral", text = "(Casey's drawing boundaries. Boundaries are testable. I like where this is going.)", condition = "arch_drew_boxes" },

        -- DATA PATH
        { speaker = "arch", expression = "neutral", text = "Before the vision pitch, quick question, Priya. At the core, what shape is the data? Documents? Graphs? Time series?", condition = "arch_asked_data" },
        { speaker = "po", expression = "excited", text = "Uhh... all of them? It's flexible!", condition = "arch_asked_data" },
        { speaker = "arch", expression = "concerned", text = "(That's not flexibility. That's the absence of a decision.)", condition = "arch_asked_data" },
        { speaker = "arch", expression = "neutral", text = "Let me rephrase. If a user creates a piece of knowledge, what does that object look like? Title, body, tags?", condition = "arch_asked_data" },
        { speaker = "po", expression = "neutral", text = "Yes, plus metadata. Author, department, related topics. And it can link to other knowledge entries.", condition = "arch_asked_data" },
        { speaker = "arch", expression = "neutral", text = "(Graph-shaped, then. With a document body. That narrows the database options considerably.)", condition = "arch_asked_data" },
        { speaker = "dev", expression = "neutral", text = "Good question. That helps me think about the schema.", condition = "arch_asked_data" },

        -- HOLD OFF PATH
        { speaker = "arch", expression = "neutral", text = "(Don't draw yet. You don't know what you're drawing. The napkin was premature. Listen.)", condition = "arch_held_off" },
        { speaker = "arch", expression = "neutral", text = "(Priya's explaining the vision. Lots of features. Lots of adjectives. Not many nouns.)", condition = "arch_held_off" },
        { speaker = "arch", expression = "neutral", text = "(Sam's quiet. Riley's quiet. Alex is sketching. Jordan's nodding. Standard kickoff dynamics.)", condition = "arch_held_off" },
        { speaker = "arch", expression = "neutral", text = "(I'll draw the real diagram tomorrow, when I actually know something.)", condition = "arch_held_off" },
        { speaker = "qa", expression = "neutral", text = "(Casey's just sitting there. Thinking. That's either patience or disagreement.)", condition = "arch_held_off" },

        -- CONVERGENCE: Scope reveal
        { speaker = "arch", expression = "neutral", text = "Scoping question. Web, mobile, both?" },
        { speaker = "pm", expression = "cheerful", text = "Both! MVP in 6 weeks." },
        { speaker = "arch", expression = "concerned", text = "Six weeks. Two platforms. Shared backend, presumably." },
        { speaker = "dev", expression = "frustrated", text = "Six weeks." },
        { speaker = "arch", expression = "neutral", text = "(Two clients, one API, one data store. The API is the bottleneck. Everything flows through it.)" },
        { speaker = "po", expression = "excited", text = "The MVP is core search, user profiles, and the contribution flow. Tight and focused." },
        { speaker = "arch", expression = "neutral", text = "(Three features. Three services, maybe. Or one monolith with clean module boundaries. Don't over-engineer on day one.)" },
        { speaker = "arch", expression = "concerned", text = "Search with relevance ranking is non-trivial. Are we building that or buying it?" },
        { speaker = "po", expression = "excited", text = "We can start with basic search and iterate!" },
        { speaker = "arch", expression = "neutral", text = "(That means building it. Which means I need to factor in a search index. Elasticsearch, maybe. Or keep it simple with Postgres full-text.)" },
        { speaker = "pm", expression = "cheerful", text = "Alright team! Standup tomorrow, 9 AM!" },
        { speaker = "arch", expression = "neutral", text = "(Three sprints from now we'll be making decisions we cannot unmake. Today is when I draw the lines.)" },

        -- POST-MEETING: Back at desk
        { speaker = "arch", expression = "neutral", text = "(Back at the desk. Napkin's still here. Time to compare what I assumed with what I learned.)", bg = "office_day" },
        { speaker = "arch", expression = "neutral", text = "(The napkin had three boxes. That's still right. But the arrows are wrong.)" },
        { speaker = "arch", expression = "whiteboarding", text = "(New sketch. Two clients, one API gateway, three backend services: search, profiles, contributions.)" },
        { speaker = "arch", expression = "concerned", text = "(No, that's too many services for six weeks. Sam would be right to push back.)" },
        { speaker = "arch", expression = "neutral", text = "(Monolith with clean boundaries. Three modules, one deployment. Scale later if it works.)" },
        { speaker = "arch", expression = "neutral", text = "(What I don't know yet: auth strategy, deployment target, CI/CD pipeline, mobile framework choice.)" },
        { speaker = "arch", expression = "neutral", text = "(What I really don't know: whether Priya's 'flexible' data model means she hasn't decided, or she wants everything.)" },
        { speaker = "arch", expression = "neutral", text = "(Let me check Slack. Maybe Sam posted something about the tech stack.)" },
        { speaker = "arch", expression = "neutral", text = "(Nothing yet. Just Priya's deck and Jordan's meeting notes. The deck has a nice architecture slide on page 41.)" },
        { speaker = "arch", expression = "concerned", text = "(Page 41 has a cloud with the word 'microservices' in it. That's not architecture. That's a sticker.)" },
        { speaker = "arch", expression = "neutral", text = "(Tomorrow I'll bring the real diagram. Keep it simple. Boxes, arrows, questions. Let the team fill in the gaps.)" },
        { speaker = "arch", expression = "neutral", text = "(The best architecture is the one the team can actually build in the time they have. Don't forget that.)" },

        { text = "", goto = "day2" }
    }
}
