return {
    title = "Day 10 -- Wednesday",
    subtitle = "The Long Night",
    narration = "The final demo is Friday. The team is behind. The office lights are staying on tonight.",

    bg = "office_evening",
    bgm = "late_night",

    dialogue = {
        { speaker = "ux", expression = "neutral", text = "Wednesday evening. The final demo is Friday. We're not ready." },
        { speaker = "pm", expression = "stressed", text = "Status update: we're behind on five of seven deliverables. The Jira board is... let's call it aspirational." },
        { speaker = "dev", expression = "tired", text = "I've been coding for 11 hours. The feed works. The search is held together with hope." },
        { speaker = "arch", expression = "neutral", text = "The infrastructure is solid. But there are performance issues under load." },
        { speaker = "qa", expression = "deadpan", text = "Define 'load.' Because three people logging in at the same time brings it down." },
        { speaker = "arch", expression = "thinking", text = "That's a scaling issue. I need to revisit the caching layer--" },
        { speaker = "dev", expression = "frustrated", text = "Thirty-six hours, Casey. The caching layer stays as-is." },

        -- The late-night decision
        { speaker = "pm", expression = "stressed", text = "Okay, real talk. We need to decide what we're doing tonight. Are we crunching?" },

        -- Sam's response depends on earlier relationship
        { speaker = "dev", expression = "neutral", text = "I'll stay. Someone has to keep the servers alive.", condition = "paired_with_dev" },
        { speaker = "dev", expression = "tired", text = "I'll stay. But only because the code will break without me, not because I want to.", condition = "collab_with_dev" },
        { speaker = "dev", expression = "tired", text = "I've been here since 7 AM. I'll stay another hour. Maybe.", condition = {paired_with_dev = nil, collab_with_dev = nil} },

        { speaker = "qa", expression = "neutral", text = "I'll keep testing. Someone has to find the bugs before leadership does." },
        { speaker = "po", expression = "excited", text = "I can help! I'll... I'll update the demo script!" },
        { speaker = "dev", expression = "neutral", text = "Priya, please don't change the requirements again." },
        { speaker = "po", expression = "neutral", text = "I won't! ...probably." },

        { speaker = "pm", expression = "neutral", text = "Alex? What about you?",
            choices = {
                { text = "I'm staying all night. Whatever it takes.", set = {pulled_allnighter = true}, rel = {pm = 2, dev = 1, po = 1} },
                { text = "I'll stay late, but I'm going home at midnight. Burnout helps nobody.", set = {set_boundaries = true}, rel = {qa = 2, dev = 1, pm = -1} },
                { text = "We can do this -- but let's be smart. Split the work, go home, regroup at 7 AM.", set = {rallied_team = true}, rel = {pm = 1, dev = 2, qa = 1, arch = 1} },
            }
        },

        -- All-nighter path
        { speaker = "pm", expression = "cheerful", text = "That's the spirit! Pizza's on me.", condition = "pulled_allnighter" },
        { speaker = "qa", expression = "neutral", text = "Crunch culture isn't a badge of honor, Alex.", condition = "pulled_allnighter" },
        { speaker = "ux", expression = "neutral", text = "(Riley's right. But the demo won't design itself.)", condition = "pulled_allnighter" },
        { speaker = "ux", expression = "neutral", text = "I eat two slices of cold pizza. The cheese has congealed. Like the project.", condition = "pulled_allnighter" },

        -- Boundaries path
        { speaker = "qa", expression = "neutral", text = "Smart. A tired designer makes bad design decisions.", condition = "set_boundaries" },
        { speaker = "pm", expression = "neutral", text = "But the demo--", condition = "set_boundaries" },
        { speaker = "ux", expression = "neutral", text = "Will be better if I can think straight tomorrow.", condition = "set_boundaries" },
        { speaker = "ux", expression = "neutral", text = "I pack my bag at 11:52. Earlier than I said. Nobody notices. The boundary is for me, not for them.", condition = "set_boundaries" },

        -- Rally path
        { speaker = "dev", expression = "neutral", text = "Divide and conquer. I like it. Give me a list and I'll knock it out.", condition = "rallied_team" },
        { speaker = "arch", expression = "neutral", text = "I can fix the performance issue from home. Just need VPN access.", condition = "rallied_team" },
        { speaker = "pm", expression = "neutral", text = "Okay. Task list in Slack by 9 PM. Everyone picks their slice.", condition = "rallied_team" },
        { speaker = "ux", expression = "neutral", text = "I take the front-end polish slice. Every interaction, every transition, every hover state. My domain.", condition = "rallied_team" },

        -- Time-stamp: Late-night design polish
        { text = "-- 9:30 PM --" },

        { speaker = "ux", expression = "neutral", text = "(The pizza boxes are stacked by the door. Someone left a half-empty energy drink on my desk. Not mine. Probably Priya's.)" },
        { speaker = "ux", expression = "thinking", text = "(I open the component library I built in week one. 47 components. 12 of them are used in the demo flow. The other 35 exist because I believed in a product that is now held together with hope.)" },
        { speaker = "ux", expression = "neutral", text = "(I start an audit. Every component in the demo path gets a once-over. Consistent border radius. Consistent shadow depth. Consistent type scale.)", condition = "rallied_team" },
        { speaker = "ux", expression = "neutral", text = "(The all-nighter means I have time nobody else does. I use it to open the full component library and check every variant.)", condition = "pulled_allnighter" },

        { text = "-- 10:00 PM --" },

        { speaker = "ux", expression = "thinking", text = "(The office is half-empty. The fluorescent lights hum. I have my headphones on and Figma open on both monitors.)" },
        { speaker = "ux", expression = "thinking", text = "The onboarding flow has a 2-pixel misalignment on the third step. Nobody will notice. I will notice." },
        { speaker = "ux", expression = "neutral", text = "(I fix it. Then I find another one. The button padding on the content creation screen is 14px on the left and 16px on the right.)" },
        { speaker = "ux", expression = "neutral", text = "(Two pixels. In a demo that might crash. Two pixels that nobody on this team will see. But the VP might feel them without knowing why.)" },

        { text = "-- 10:30 PM --" },

        { speaker = "ux", expression = "thinking", text = "(Slack message from Priya: 'Can we make the create button bigger?' Sent at 10:22 PM. She's awake. She's always awake.)" },
        { speaker = "ux", expression = "neutral", text = "(The create button is already 48px tall. That is the correct touch target. I reply: 'It's at recommended size. But I can add a subtle animation on hover.')", condition = "fought_scope" },
        { speaker = "ux", expression = "neutral", text = "(I add the hover animation. 150ms ease-out. A gentle scale to 1.02. Just enough to say 'click me' without screaming it.)" },
        { speaker = "ux", expression = "thinking", text = "(Design is diplomacy. The button stays the same size. Priya feels heard. The interaction gets better. Everyone wins. Nobody knows a negotiation just happened.)" },

        { text = "..." },

        { speaker = "ux", expression = "neutral", text = "(I walk to the break room for tea. Casey is at the whiteboard, alone, redrawing something with three different colored markers.)" },
        { speaker = "arch", expression = "whiteboarding", text = "The dependency graph is wrong. I need to fix it before I can sleep." },
        { speaker = "ux", expression = "thinking", text = "(Two people, alone in an office at 10:30 PM, each fixing something nobody asked them to fix. Architecture and design, standing in a break room, not talking about the deadline.)" },
        { speaker = "ux", expression = "neutral", text = "Casey. Go home." },
        { speaker = "arch", expression = "concerned", text = "After this diagram." },
        { speaker = "ux", expression = "thinking", text = "(That is exactly what I say about pixels. We are the same person in different fonts.)" },

        { text = "-- 11:15 PM --" },

        { speaker = "ux", expression = "thinking", text = "The feed has a loading state that I designed in week one. It uses a skeleton screen. It is elegant." },
        { speaker = "ux", expression = "neutral", text = "The feed also has an error state that nobody designed. It shows a raw JSON error in red monospace." },
        { speaker = "ux", expression = "neutral", text = "(I design the error state in 20 minutes. A friendly message. A retry button. A small illustration of a coffee cup. Is this necessary? No. Will it matter? To me, yes.)" },
        { speaker = "ux", expression = "thinking", text = "(The pixel-perfect obsession. That is what Sam calls it. He says it like it's a flaw. It is a flaw. It is also the reason the product will feel right.)" },

        { text = "-- 11:45 PM --" },

        { speaker = "ux", expression = "neutral", text = "Sam messages: 'The content creation flow is throwing a null error on the preview. Can you check if the mockup matches what I built?'" },
        { speaker = "ux", expression = "thinking", text = "(I open the mockup next to the staging build. The mockup shows a preview panel on the right. The build shows a blank white rectangle. The preview was never implemented.)" },
        { speaker = "dev", expression = "tired", text = "I see the gap. The preview was in the design but not in the sprint scope.", condition = "paired_with_dev" },
        { speaker = "ux", expression = "neutral", text = "(We catch it together. The preview gets a placeholder state instead -- 'Preview will appear here.' Honest. Functional. Done in ten minutes.)", condition = "paired_with_dev" },
        { speaker = "ux", expression = "neutral", text = "(I sketch a placeholder state in four minutes. 'Preview will appear here' with a subtle dotted border. Not a lie. A promise for later.)", condition = {paired_with_dev = nil} },
        { speaker = "ux", expression = "thinking", text = "(The gap between design and implementation. I live in that gap. At 11:45 PM, the gap is where the work actually happens.)" },

        { text = "-- 12:30 AM --" },

        { speaker = "ux", expression = "neutral", text = "I have reviewed every screen. 23 tweaks pushed to Figma. 8 of them are spacing fixes nobody asked for." },
        { speaker = "dev", expression = "tired", text = "Alex. Did you just push 23 design changes at 12:30 AM?", condition = "paired_with_dev" },
        { speaker = "ux", expression = "neutral", text = "They're polish. Not scope. I promise.", condition = "paired_with_dev" },
        { speaker = "dev", expression = "tired", text = "(Alex's version of crunch is making everything two pixels better. I respect it and also I am too tired to implement it.)", condition = "paired_with_dev" },

        { speaker = "dev", expression = "tired", text = "Alex. 23 design changes. At midnight.", condition = {paired_with_dev = nil} },
        { speaker = "ux", expression = "neutral", text = "Polish. Not scope. Big difference.", condition = {paired_with_dev = nil} },

        -- Interpersonal moment
        { speaker = "ux", expression = "thinking", text = "Riley messages: 'The error states look way better. Thank you.' It is the first non-bug-report message Riley has sent in three days." },
        { speaker = "ux", expression = "neutral", text = "(Riley noticed the coffee cup illustration. Riley notices everything. That is what makes her terrifying and also indispensable.)" },
        { speaker = "qa", expression = "neutral", text = "The retry button actually works, by the way. Sam's error handling catches it properly." },
        { speaker = "ux", expression = "thinking", text = "(Design and engineering meeting in the error state at 12:30 AM. This is either beautiful or deeply unhealthy.)" },

        { text = "-- 1:00 AM --" },

        { speaker = "ux", expression = "thinking", text = "(My eyes are dry. The tea is cold. I have been staring at screens for six hours straight and the Figma canvas is starting to swim.)" },
        { speaker = "ux", expression = "neutral", text = "(I lean back. The chair creaks. The office is so quiet I can hear the parking garage ventilation two floors down.)" },
        { speaker = "ux", expression = "thinking", text = "(I think about the first mockup I made for this project. Day two. The wireframe was ugly and honest. Now the product is polished and complicated. Is that progress or just entropy with better typography?)" },
        { speaker = "ux", expression = "neutral", text = "(Jordan messaged at 12:50: 'You should sleep.' I hearted the message. I did not sleep.)", condition = "pulled_allnighter" },

        -- Choice 2: personal/emotional
        { speaker = "ux", expression = "thinking", text = "(It is 1 AM. I have polished every pixel I can reach. The product looks better than it has any right to.)" },
        { speaker = "ux", expression = "neutral", text = "(I am alone with Figma and a cold cup of tea. The office is dark except for my screens.)" },
        { speaker = "ux", expression = "thinking", text = "(The team is asleep, or pretending to be. Do I reach out or do I sit with this quiet?)",
            choices = {
                { text = "Post a before/after comparison in the design channel. 'Look what we built.' Celebrate the craft.", set = {crunch_bonded = true}, rel = {dev = 1, pm = 1, qa = 1} },
                { text = "Keep polishing. One more screen. One more pixel. The work speaks for itself.", set = {crunch_isolated = true}, rel = {ux = 1} },
            }
        },

        { speaker = "ux", expression = "neutral", text = "I post the before/after. The day-one mockup next to tonight's build. The difference is remarkable.", condition = "crunch_bonded" },
        { speaker = "ux", expression = "neutral", text = "Sam reacts with a fire emoji at 1:14 AM. Jordan hearts it. Priya sends seven clapping hands.", condition = "crunch_bonded" },
        { speaker = "ux", expression = "thinking", text = "(The team sees the craft. That matters more than the pixels.)", condition = "crunch_bonded" },

        { speaker = "ux", expression = "thinking", text = "One more screen. The profile page. It was cut from demo scope but I polish it anyway.", condition = "crunch_isolated" },
        { speaker = "ux", expression = "neutral", text = "(Nobody will see this tomorrow. I will know it is there. The craft exists whether or not the demo shows it.)", condition = "crunch_isolated" },
        { speaker = "ux", expression = "thinking", text = "(Is this dedication or obsession? At 1 AM, the line disappears.)", condition = "crunch_isolated" },

        -- End of day
        { speaker = "ux", expression = "thinking", text = "The crunch. Every project has one. The question is whether you survive it together or fall apart." },
        { speaker = "ux", expression = "neutral", text = "(I close Figma at 1:30 AM. The product is 23 tweaks better. Whether that matters depends on who is looking.)" },

        { text = "", goto = "day11" }
    }
}
