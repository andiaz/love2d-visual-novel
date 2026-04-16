return {
    title = "Day 4 -- Thursday",
    subtitle = "The Design Review",
    narration = "Alex is presenting the designs. You're in the room because someone has to say what's actually buildable.",

    dialogue = {
        -- PRE-REVIEW: Debugging session
        { bg = "office_day", bgm = "Sprint Cycle (UX Nights)" },

        { speaker = "dev", expression = "neutral", text = "Thursday morning. Review's at ten. But first -- this stack trace." },
        { speaker = "dev", expression = "frustrated", text = "TypeError: Cannot read properties of undefined (reading 'map'). Line 247. The feed component." },
        { speaker = "dev", expression = "neutral", text = "(Okay. The data comes back from the API as an object, not an array. Because of course it does.)" },
        { speaker = "dev", expression = "neutral", text = "I scroll up. The API response wrapper has a 'data' key that nests the actual array inside a metadata envelope." },
        { speaker = "dev", expression = "frustrated", text = "(Who designed this response format? Oh. I did. Yesterday. At midnight.)" },
        { speaker = "dev", expression = "neutral", text = "Fix is simple. Unwrap before mapping. response.data.items.map instead of response.map." },
        { speaker = "dev", expression = "neutral", text = "(But this is the third time I've hit this pattern. The API contract isn't documented. Nobody knows what shape the data is.)" },
        { speaker = "dev", expression = "thinking", text = "(Casey would say I need a schema. Casey would be right. I'm not going to tell him that.)" },
        { speaker = "dev", expression = "neutral", text = "(I add a console.warn for malformed responses. Future me will thank present me. Past me is the reason this is necessary.)" },
        { speaker = "dev", expression = "neutral", text = "(There's a second bug hiding behind the first one. The metadata envelope includes a 'count' field that disagrees with the actual array length. I fix that too. Two bugs for the price of one investigation.)" },
        { speaker = "dev", expression = "neutral", text = "I save the fix. The feed renders. Cards appear. They look nothing like Alex's designs but they work." },
        { speaker = "dev", expression = "tired", text = "(Working code and pretty designs. Two different universes. The review is going to be fun.)" },
        { speaker = "dev", expression = "neutral", text = "I push the commit. 'Fix feed data unwrapping.' Fourteen characters of code. Thirty minutes of staring." },
        { speaker = "dev", expression = "neutral", text = "(Programming: where the fix is always one line and finding it is always an hour.)" },
        { speaker = "dev", expression = "neutral", text = "(I write a second commit message for the count fix. 'Sync metadata count with actual array length.' Nobody will read this message. But the git log will remember I was here, fighting data shapes at 9 AM on a Thursday.)" },
        { speaker = "dev", expression = "neutral", text = "(The terminal is clean now. No red. No warnings. Just a blinking cursor waiting for the next problem. There will be a next problem.)" },
        { speaker = "dev", expression = "neutral", text = "Nine forty-five. Time to go see what Alex wants me to build next." },

        -- THE REVIEW
        { bg = "meeting_room" },

        { speaker = "pm", expression = "neutral", text = "Alright everyone, Alex has designs to walk us through. Constructive feedback only." },
        { speaker = "ux", expression = "neutral", text = "I've mapped out the core flows -- onboarding, content creation, the feed. Here's the first pass." },
        { speaker = "dev", expression = "neutral", text = "(Big screens. Many screens. So many screens. Each one is a component, a route, a state machine.)" },
        { speaker = "ux", expression = "neutral", text = "Starting with onboarding. Welcome screen, role picker, profile setup, then you land in the feed." },
        { speaker = "dev", expression = "neutral", text = "(Four screens for onboarding. That's four API calls, four loading states, four error states, four sets of validation. Minimum.)" },

        -- Casey
        { speaker = "arch", expression = "whiteboarding", text = "Before we go further -- the data model behind this content feed. Relational or document-based?" },
        { speaker = "dev", expression = "neutral", text = "Casey, let Alex finish presenting." },
        { speaker = "arch", expression = "neutral", text = "But it matters now. If the comments are nested, the schema changes." },
        { speaker = "dev", expression = "neutral", text = "(He's right. I just don't want to admit it in front of Priya because she'll turn it into a two-hour tangent.)" },
        { speaker = "arch", expression = "whiteboarding", text = "And the content card. Is that a single entity or a join across multiple tables?" },
        { speaker = "dev", expression = "neutral", text = "It's a component. I'll figure out the data shape when I build it." },
        { speaker = "arch", expression = "concerned", text = "That's how you end up with N+1 queries and a feed that takes eight seconds to load." },
        { speaker = "dev", expression = "neutral", text = "(He's right about that too. Today is a bad day for my ego.)" },

        -- Priya
        { speaker = "po", expression = "excited", text = "I love it! But can we also add a leaderboard? And achievements? Gamification was on slide 34." },
        { speaker = "dev", expression = "frustrated", text = "Priya. Every feature is a database table, an API endpoint, a frontend component, and a regression risk. Pick the ones that matter." },
        { speaker = "po", expression = "defensive", text = "They ALL matter!" },
        { speaker = "dev", expression = "neutral", text = "A leaderboard means ranked queries. Achievements means an event system. Those aren't afternoon tasks. Those are sprints." },
        { speaker = "po", expression = "excited", text = "But the demo--" },
        { speaker = "dev", expression = "frustrated", text = "The demo is in two weeks. I have three flows to build. Adding gamification means none of them ship." },

        -- The mobile question
        { speaker = "dev", expression = "neutral", text = "Honest question -- did anyone think about mobile? These layouts are clearly desktop-first." },
        { speaker = "ux", expression = "frustrated", text = "(Because nobody told me the mobile requirements.)" },
        { speaker = "dev", expression = "neutral", text = "Right. Because nobody wrote them down. Cool cool cool." },
        { speaker = "dev", expression = "neutral", text = "The card layout assumes at least 900 pixels wide. On mobile that's a scrolling disaster." },
        { speaker = "ux", expression = "neutral", text = "I can do a responsive pass if someone tells me the breakpoints." },
        { speaker = "dev", expression = "neutral", text = "Three-twenty, seven-sixty-eight, ten-twenty-four. Standard. I'll send you the tokens." },

        -- Riley
        { speaker = "qa", expression = "neutral", text = "What happens when a user uploads a 200MB file? What about screen readers? What if someone's display name is 400 characters?" },
        { speaker = "dev", expression = "neutral", text = "(Riley is the only person in this room who's seen this movie before.)" },
        { speaker = "qa", expression = "neutral", text = "And zero states. What does the feed look like when there's no content?" },
        { speaker = "dev", expression = "neutral", text = "(That's what I just fixed this morning. The empty feed. Except I fixed the crash, not the design.)" },
        { speaker = "qa", expression = "neutral", text = "Also -- keyboard navigation. Can a user tab through the entire onboarding flow without a mouse?" },
        { speaker = "dev", expression = "thinking", text = "(No. The answer is no. Because I built the buttons as divs. Like an animal.)" },

        -- The choice
        { speaker = "pm", expression = "neutral", text = "Sam, what's your engineering priority for the next iteration?" },
        { speaker = "dev", expression = "neutral", text = "(Three paths. Each one defines what I'm building for the next two weeks.)",
            choices = {
                { text = "Cut the scope. Pick three flows. Build them well.", set = {prioritized_tech = true}, rel = {arch = 2, qa = 1, po = -2} },
                { text = "I'll just build everything Alex designed. We'll see what breaks.", set = {prioritized_product = true}, rel = {po = 2, ux = 1, arch = -1} },
                { text = "Accessibility and mobile parity from day one. The rest comes after.", set = {prioritized_users = true}, rel = {qa = 2, ux = 1, po = -2} },
            }
        },

        -- Tech path
        { speaker = "arch", expression = "neutral", text = "Yes. Three flows, done well. Show, don't sprawl.", condition = "prioritized_tech" },
        { speaker = "dev", expression = "neutral", text = "Onboarding, content creation, feed. That's the demo. Everything else is roadmap.", condition = "prioritized_tech" },
        { speaker = "dev", expression = "neutral", text = "I'll lock the API contracts for those three by Friday. Casey, I need your schema review.", condition = "prioritized_tech" },
        { speaker = "arch", expression = "whiteboarding", text = "Done. I'll have the entity relationships mapped by tomorrow morning.", condition = "prioritized_tech" },
        { speaker = "po", expression = "defensive", text = "But the gamification...", condition = "prioritized_tech" },
        { speaker = "dev", expression = "neutral", text = "Priya, gamification on a broken foundation is just a broken leaderboard.", condition = "prioritized_tech" },
        { speaker = "pm", expression = "neutral", text = "Let's revisit features once the core is stable.", condition = "prioritized_tech" },
        { speaker = "dev", expression = "neutral", text = "(Finally. A plan that doesn't end with me at midnight wondering why the tests are failing.)", condition = "prioritized_tech" },

        -- Product path
        { speaker = "po", expression = "excited", text = "Yes! Build it all! I'll send a feature list by EOD!", condition = "prioritized_product" },
        { speaker = "dev", expression = "tired", text = "(I am going to regret this for the rest of the sprint.)", condition = "prioritized_product" },
        { speaker = "ux", expression = "neutral", text = "Sam, I'll get you the updated screens by tomorrow. Leaderboard and achievements included.", condition = "prioritized_product" },
        { speaker = "dev", expression = "tired", text = "Great. More screens. More components. More state to manage.", condition = "prioritized_product" },
        { speaker = "qa", expression = "deadpan", text = "I'll start expanding the regression matrix. Again.", condition = "prioritized_product" },
        { speaker = "dev", expression = "tired", text = "(The code I wrote this morning fixing one bug is about to become the foundation for twenty new ones.)", condition = "prioritized_product" },
        { speaker = "arch", expression = "concerned", text = "Sam, at least promise me you'll write the interfaces first.", condition = "prioritized_product" },
        { speaker = "dev", expression = "tired", text = "I'll try. No promises.", condition = "prioritized_product" },

        -- Users path
        { speaker = "qa", expression = "smirk", text = "Finally, an engineer with priorities.", condition = "prioritized_users" },
        { speaker = "dev", expression = "neutral", text = "Accessibility isn't polish. It's the contract. We're not shipping a thing screen readers can't use.", condition = "prioritized_users" },
        { speaker = "dev", expression = "neutral", text = "First thing I'm doing -- replacing every clickable div with a proper button element. Then semantic headings. Then ARIA labels.", condition = "prioritized_users" },
        { speaker = "ux", expression = "excited", text = "Sam's right. I'm with him. I'll update the designs with proper focus states.", condition = "prioritized_users" },
        { speaker = "po", expression = "defensive", text = "But the demo is in less than two weeks!", condition = "prioritized_users" },
        { speaker = "dev", expression = "neutral", text = "A demo that excludes users with disabilities isn't a demo. It's a liability.", condition = "prioritized_users" },
        { speaker = "qa", expression = "neutral", text = "I'll add accessibility checks to the test suite. Automated where possible.", condition = "prioritized_users" },
        { speaker = "dev", expression = "neutral", text = "(More work up front. Less rework later. The math is simple even if the politics aren't.)", condition = "prioritized_users" },

        -- POST-REVIEW: Private reaction
        { bg = "office_day" },

        { speaker = "dev", expression = "tired", text = "(Design reviews. Where five people give six opinions and one person has to ship them.)" },
        { speaker = "dev", expression = "neutral", text = "Back at my desk. The stack trace from this morning is still in my terminal. Fixed, but still there." },
        { speaker = "dev", expression = "thinking", text = "(The review wasn't terrible. Casey's schema concerns are real. I should have had that conversation two days ago.)" },
        { speaker = "dev", expression = "neutral", text = "(Riley's edge cases are going on sticky notes. All of them. The upload limit, the display name, the zero states.)" },
        { speaker = "dev", expression = "frustrated", text = "(Priya's feature list is going to arrive by end of day. It's going to be long. It's going to be ambitious. It's going to be my problem.)" },
        { speaker = "dev", expression = "neutral", text = "I open VS Code. The feed component is still on screen. A handful of JSX lines that render a list of cards." },
        { speaker = "dev", expression = "tired", text = "(And by Friday it needs to handle loading, errors, empty states, pagination, and whatever Priya dreams up tonight.)" },
        { speaker = "dev", expression = "neutral", text = "(But it renders. The cards show up. That's more than we had on Monday.)" },
        { speaker = "dev", expression = "neutral", text = "One commit at a time. That's all it ever is." },

        { text = "", goto = "day5" }
    }
}
