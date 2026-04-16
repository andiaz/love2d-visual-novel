return {
    title = "Day 2 -- Tuesday",
    subtitle = "The First Standup",
    narration = "Standup. The dev has a git repo. The PO has a deck. You have three diagrams nobody asked for, and a feeling that the data model is wrong.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- PRE-STANDUP MORNING: Legacy system discovery
        { speaker = "arch", expression = "neutral", text = "(Tuesday. 7:48 AM. First one in. Good. The whiteboard is mine.)" },
        { speaker = "arch", expression = "neutral", text = "(But first, let me check the integration landscape. Every new project connects to something old.)" },
        { speaker = "arch", expression = "neutral", text = "(Opens the corporate wiki. Searches 'Chimera.' Three results. One is the project charter. One is a cafeteria menu from 2019.)" },
        { speaker = "arch", expression = "neutral", text = "(The third one. 'Chimera Legacy Integration Notes.' Last updated 14 months ago. Author: someone who no longer works here.)" },
        { speaker = "arch", expression = "concerned", text = "(Opens it. It's a half-finished document. But the first paragraph stops me cold.)" },
        { speaker = "arch", expression = "concerned", text = "('Chimera must integrate with the existing LDAP authentication system and the SAP finance module for billing reconciliation.')" },
        { speaker = "arch", expression = "concerned", text = "(LDAP. SAP. Nobody mentioned LDAP in the kickoff. Nobody mentioned SAP. Not in the deck. Not in the charter. Not in Slack.)" },
        { speaker = "arch", expression = "whiteboarding", text = "(This changes everything. LDAP means we can't use a modern auth provider without a bridge. SAP means billing has a fixed schema we have to conform to.)" },
        { speaker = "arch", expression = "concerned", text = "(My seven-microservice diagram? Two of those services now need legacy adapters. The auth service needs a complete rethink.)" },
        { speaker = "arch", expression = "neutral", text = "(Let me trace the LDAP dependency. Opens the corporate SSO documentation. Last updated... 2021. The SSL certificate on the test server expired six months ago.)" },
        { speaker = "arch", expression = "concerned", text = "(The SAP integration has a REST wrapper. Built in Java. Java 8. It has a WSDL file. That's not REST. That's SOAP with a marketing degree.)" },
        { speaker = "arch", expression = "neutral", text = "(I need to tell the team about this. But how? Drop it in standup? Sam will panic. Priya will ignore it. Jordan will ask what it costs.)" },
        { speaker = "arch", expression = "neutral", text = "(I'll bring it up carefully. Frame it as a question, not a crisis. 'Has anyone looked at the integration requirements?' Innocent. Exploratory.)" },
        { speaker = "arch", expression = "neutral", text = "(Updates the architecture diagram. Adds two new boxes: 'LDAP Bridge' and 'SAP Adapter.' The diagram now has nine services. It was seven last night.)" },
        { speaker = "arch", expression = "concerned", text = "(Nine services. For an MVP. Sam is going to have opinions about this. Loud ones.)" },
        { speaker = "arch", expression = "neutral", text = "(8:52 AM. Standup in 8 minutes. Let me bring the diagram. Print it? No. Whiteboard it live. People respect the marker.)" },

        -- THE STANDUP
        { bg = "meeting_room" },
        { speaker = "pm", expression = "cheerful", text = "Good morning! Welcome to our first standup. Let's keep it tight. Yesterday, today, blockers. Fifteen minutes." },
        { speaker = "arch", expression = "neutral", text = "(I have a legacy integration discovery that could reshape the entire architecture. This is not going to be enough time.)" },
        { speaker = "dev", expression = "neutral", text = "Repo's up, linter's configured, stack is chosen. What I do today depends on this conversation." },
        { speaker = "arch", expression = "neutral", text = "(Sam's being cautious. Smart. Because what Sam's about to hear in this room is LDAP and SAP.)" },
        { speaker = "ux", expression = "neutral", text = "Yesterday I sketched user flows. Today I'm mapping the information architecture. No blockers." },
        { speaker = "arch", expression = "neutral", text = "(Alex's user flows are clean. But they assume modern auth. OAuth, social login. That's not what we have.)" },
        { speaker = "pm", expression = "neutral", text = "Casey, you're up." },
        { speaker = "arch", expression = "whiteboarding", text = "Yesterday I drew three architecture options. Posted them in Slack last night. Today I want to discuss the data model. We need to decide before Sam gets too deep." },
        { speaker = "dev", expression = "frustrated", text = "Casey. I literally just made a git repo." },
        { speaker = "arch", expression = "neutral", text = "(Sam says that, but by Thursday Sam will have three modules and a database schema that doesn't match the legacy system. I've seen it happen.)" },
        { speaker = "arch", expression = "whiteboarding", text = "Right, but the FOUNDATION matters. I've been thinking about a microservices approach. And this morning I found something." },
        { speaker = "pm", expression = "stressed", text = "Casey, we're doing status updates, not architecture reviews." },
        { speaker = "arch", expression = "concerned", text = "Jordan, this is a blocker. A real one. I found an integration requirement nobody mentioned. LDAP authentication and SAP billing." },
        { speaker = "dev", expression = "frustrated", text = "LDAP? Are you serious?" },
        { speaker = "arch", expression = "concerned", text = "There's a wiki page from 14 months ago. Half-finished. The author doesn't work here anymore. But the requirement is real." },
        { speaker = "pm", expression = "stressed", text = "Casey, can we take this offline?" },
        { speaker = "arch", expression = "concerned", text = "(Take it offline. The PM's favorite phrase. The architectural equivalent of 'I'll think about it tomorrow.')" },
        { speaker = "qa", expression = "neutral", text = "Trying to draft a test plan without requirements. It's going about as well as you'd expect." },
        { speaker = "po", expression = "defensive", text = "I sent a 47-slide deck!" },
        { speaker = "qa", expression = "deadpan", text = "Priya, that's a collage of handshakes and motivational quotes. Not a requirements doc." },
        { speaker = "arch", expression = "concerned", text = "(The data model lives in the deck. It is, technically, three stock photos and a feeling. And now it needs to talk to LDAP.)" },
        { speaker = "po", expression = "defensive", text = "The deck covers the user experience. The technical stuff is Casey's job." },
        { speaker = "arch", expression = "concerned", text = "(The 'technical stuff' she's dismissing is a constraint that defines what the user experience CAN be. But this isn't the moment.)" },
        { speaker = "pm", expression = "neutral", text = "Casey, what do you actually need from this room today?" },

        -- THE CHOICE
        { speaker = "arch", expression = "neutral", text = "(Three answers. Each one shapes the next six weeks.)",
            choices = {
                { text = "Spike the data model. Two days, three options, document the trade-offs.", set = {pushed_interviews = true}, rel = {dev = 1, qa = 1, po = -1, pm = -1} },
                { text = "Just start drawing. Whiteboard session this afternoon. Build consensus by Friday.", set = {started_wireframes = true}, rel = {dev = -1, po = 0, pm = 1} },
                { text = "I won't draw a line until the team writes acceptance criteria. Architecture serves requirements, not the other way around.", set = {needs_requirements = true}, rel = {dev = 2, qa = 2, po = -1, pm = -1} },
            }
        },

        -- Spike
        { speaker = "arch", expression = "neutral", text = "Two days. Three options. Pros, cons, scaling profile. I'll include the LDAP and SAP constraints. By Thursday I'll have a decision doc.", condition = "pushed_interviews" },
        { speaker = "dev", expression = "smiling", text = "That's actually... yes. Especially with LDAP in the mix. I need to know the auth constraints before I write anything.", condition = "pushed_interviews" },
        { speaker = "pm", expression = "stressed", text = "Two days for architecture? When do we start coding?", condition = "pushed_interviews" },
        { speaker = "arch", expression = "neutral", text = "Day 4. Two days now or two months of rework when we discover the SAP adapter doesn't support our data format.", condition = "pushed_interviews" },
        { speaker = "qa", expression = "neutral", text = "I'll review the decision doc. Integration points are where bugs live.", condition = "pushed_interviews" },
        { speaker = "arch", expression = "neutral", text = "(Sam agrees. Riley agrees. Jordan's nervous but outnumbered. This is how architecture should work.)", condition = "pushed_interviews" },
        { speaker = "arch", expression = "neutral", text = "(The spike will also give me time to test the LDAP connection. If that SSL cert is really expired, we have a bigger problem.)", condition = "pushed_interviews" },

        -- Just draw
        { speaker = "arch", expression = "whiteboarding", text = "Whiteboard session. Two PM. I'll come with a draft that includes the legacy constraints. We argue. We converge.", condition = "started_wireframes" },
        { speaker = "dev", expression = "frustrated", text = "(I am going to spend my Tuesday afternoon watching Casey draw boxes.)", condition = "started_wireframes" },
        { speaker = "arch", expression = "neutral", text = "(Sam won't say it, but the boxes matter. Every line on the whiteboard is a contract between services. Every box is a deployment boundary.)", condition = "started_wireframes" },
        { speaker = "pm", expression = "neutral", text = "Good. Visual. Collaborative. I like it.", condition = "started_wireframes" },
        { speaker = "arch", expression = "neutral", text = "I'll also present the LDAP and SAP findings. The team needs to see the constraints before we draw the boundaries.", condition = "started_wireframes" },
        { speaker = "arch", expression = "concerned", text = "(The whiteboard session will run long. It always runs long. But that's where alignment happens. In the mess.)", condition = "started_wireframes" },

        -- Requirements first
        { speaker = "arch", expression = "neutral", text = "I won't draw a line until somebody writes acceptance criteria. Architecture serves the product. Not the other way around.", condition = "needs_requirements" },
        { speaker = "po", expression = "defensive", text = "The deck IS the requirement!", condition = "needs_requirements" },
        { speaker = "arch", expression = "concerned", text = "Priya. Slide 23 says 'delight' in 72-point font. I cannot architect 'delight.' I especially cannot architect 'delight' that talks to LDAP.", condition = "needs_requirements" },
        { speaker = "dev", expression = "smiling", text = "Casey just earned my respect. Don't get used to it.", condition = "needs_requirements" },
        { speaker = "qa", expression = "deadpan", text = "LDAP-authenticated delight. There's a conference talk in that somewhere.", condition = "needs_requirements" },
        { speaker = "pm", expression = "neutral", text = "Requirements workshop. Tomorrow. Casey, bring the legacy integration findings.", condition = "needs_requirements" },
        { speaker = "arch", expression = "neutral", text = "(Good. The workshop will force the conversation. Priya will have to translate vision into constraints. And I'll bring the constraints nobody knew existed.)", condition = "needs_requirements" },

        -- CONVERGE
        { speaker = "pm", expression = "neutral", text = "And that's a wrap. I clocked us at... 41 minutes. So close." },
        { speaker = "dev", expression = "smiling", text = "New record. Usually it's worse." },
        { speaker = "arch", expression = "concerned", text = "(38 minutes. We discussed LDAP for 90 seconds. We discussed microservices for 12 minutes. The ratio is wrong.)" },
        { speaker = "arch", expression = "neutral", text = "(But the seed is planted. They know about the legacy systems now. That awareness will grow.)" },

        -- POST-STANDUP: Refining the diagram
        { bg = "office_day" },
        { speaker = "arch", expression = "neutral", text = "(Back at the desk. 9:46 AM. Opens the diagramming tool. The architecture needs a revision.)" },
        { speaker = "arch", expression = "whiteboarding", text = "(The original diagram had seven services. The LDAP and SAP discovery adds two more. Nine boxes. That's too many for an MVP.)" },
        { speaker = "arch", expression = "neutral", text = "(Let me think about this differently. What if we collapse the auth and LDAP bridge into one service? They're tightly coupled anyway.)" },
        { speaker = "arch", expression = "neutral", text = "(And the SAP adapter could be a module inside the billing service, not a separate service. That's six services. Still a lot, but defensible.)" },
        { speaker = "arch", expression = "whiteboarding", text = "(Redraws. Six services. Clear boundaries. The LDAP bridge is a module inside Auth. The SAP adapter is a module inside Billing. Each service owns its data.)" },
        { speaker = "arch", expression = "neutral", text = "(The data model. User, Content, Billing. Three core entities. Relationships: User creates Content. User has Billing. Content has Permissions linked to Auth.)" },
        { speaker = "arch", expression = "neutral", text = "(The permissions model is where LDAP gets messy. Corporate LDAP groups don't map cleanly to application roles. They never do.)" },
        { speaker = "arch", expression = "concerned", text = "(I need to test the LDAP connection. The wiki says the test server is at ldap.corp.internal. The SSL cert expired six months ago. Is there a new one? Nobody knows.)" },
        { speaker = "arch", expression = "neutral", text = "(Slack message to IT Support. 'Is the LDAP test server still active? Cert status?' Response will take a day. Maybe two. IT Support operates on geological timescales.)" },
        { speaker = "arch", expression = "neutral", text = "(Saves the revised diagram. Labels it 'v2 - includes legacy constraints.' Uploads to Confluence. Links it in the architecture channel.)" },
        { speaker = "arch", expression = "neutral", text = "(Sam will see it and count the boxes. Sam always counts the boxes. Six is better than nine. Progress.)" },
        { speaker = "arch", expression = "neutral", text = "(Slack notification. Sam. 'Six services now?' I type 'consolidated the legacy adapters into existing boundaries.' Sam sends a thumbs-up.)" },
        { speaker = "arch", expression = "neutral", text = "(A thumbs-up from Sam. That's architect currency. I'll take it.)" },
        { speaker = "arch", expression = "neutral", text = "(10:31 AM. The diagram is cleaner. The legacy constraints are documented. The LDAP question is filed with IT.)" },
        { speaker = "arch", expression = "neutral", text = "(But the real question hasn't been answered yet. Can this architecture actually support what Priya wants to build? The social feed, the content layer, the whole vision.)" },
        { speaker = "arch", expression = "concerned", text = "(The answer is yes, if we make the right choices in the next three days. And no, if we make the wrong ones.)" },
        { speaker = "arch", expression = "neutral", text = "(The first architectural decision is the one you can't undo. And right now, we haven't made it yet. That's both terrifying and liberating.)" },
        { speaker = "arch", expression = "tired", text = "(Day 2. Nine services became six. One legacy integration surfaced. Zero decisions finalized. The whiteboard is busy. The code is empty. That's exactly where we should be.)" },

        { text = "", goto = "day3" }
    }
}
