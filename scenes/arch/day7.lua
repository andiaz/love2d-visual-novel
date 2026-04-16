return {
    title = "Day 7 -- Wednesday",
    subtitle = "The Patterns Were Ignored",
    narration = "Dev handoff day. Everyone is focused on designs meeting code. You just discovered that Sam ignored your architecture patterns entirely.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- PRE-HANDOFF PREPARATION
        { speaker = "arch", expression = "neutral", text = "Wednesday morning. Dev handoff day. I spent the morning reviewing Sam's branch to prepare." },
        { speaker = "arch", expression = "concerned", text = "(I found something. Something I wasn't expecting.)" },
        { speaker = "arch", expression = "neutral", text = "Sam's code. The content service. I drew the architecture diagram on day three. Repository pattern. Clean service boundaries. Event-driven communication between modules." },
        { speaker = "arch", expression = "concerned", text = "(Sam didn't use any of it. Not the repository pattern. Not the service boundaries. Not the event system.)" },
        { speaker = "arch", expression = "neutral", text = "(Direct database calls from the controller. Business logic in the route handlers. Tight coupling between every module.)" },
        { speaker = "arch", expression = "concerned", text = "(I drew a diagram. I explained the diagram. I sent the diagram in Slack. Sam said 'looks good.' And then wrote something completely different.)" },
        { speaker = "arch", expression = "neutral", text = "(I am not angry. I am... processing. Is this my failure or Sam's? Did I not communicate clearly? Or did Sam not care?)" },
        { speaker = "arch", expression = "concerned", text = "I need to talk to Sam. Privately. Before the handoff meeting, not during it. Nobody needs to see this conversation." },

        -- THE 1-ON-1 CONVERSATION
        { speaker = "arch", expression = "neutral", text = "Sam. Got a minute? Before the handoff meeting.", bg = "meeting_room" },
        { speaker = "dev", expression = "neutral", text = "Casey? Sure. What's up?" },
        { speaker = "arch", expression = "neutral", text = "I reviewed your branch this morning. The content service." },
        { speaker = "dev", expression = "neutral", text = "Yeah? It's working. All endpoints are live. Tests pass." },
        { speaker = "arch", expression = "concerned", text = "It's working. That's true. But Sam... the architecture patterns we agreed on. The repository pattern. The service boundaries. The event system." },
        { speaker = "dev", expression = "neutral", text = "...yeah?" },
        { speaker = "arch", expression = "neutral", text = "You didn't use any of them." },
        { speaker = "dev", expression = "neutral", text = "Casey, I was under deadline. The patterns add abstraction layers. Abstraction layers add time. I didn't have time." },
        { speaker = "arch", expression = "concerned", text = "(There it is. 'I didn't have time.' The four words that kill every architecture.)" },
        { speaker = "arch", expression = "neutral", text = "The direct database calls from the controllers. If we change the database schema -- and we will -- every controller breaks." },
        { speaker = "dev", expression = "neutral", text = "I'll refactor after the demo." },
        { speaker = "arch", expression = "concerned", text = "(After the demo. The second-most dangerous phrase in software. Right behind 'it works on my machine.')" },
        { speaker = "arch", expression = "neutral", text = "The tight coupling between modules. The content service calls the user service directly. The user service calls the notification service directly. There's no boundary." },
        { speaker = "dev", expression = "tired", text = "Casey, it works. The tests pass. The feature is done." },
        { speaker = "arch", expression = "neutral", text = "It works today. With one user. On localhost. What happens when we have a hundred users and the notification service is slow? The content service hangs. The user service hangs. Everything hangs. Because there's no boundary." },
        { speaker = "dev", expression = "neutral", text = "We don't have a hundred users. We have a demo on Friday." },
        { speaker = "arch", expression = "concerned", text = "(Sam is right about Friday. I'm right about everything after Friday. The question is which timeframe matters more.)" },
        { speaker = "arch", expression = "neutral", text = "Sam, I'm not trying to attack your code. I'm trying to protect the system. That's my job." },
        { speaker = "dev", expression = "neutral", text = "And my job is to ship features. We're both doing our jobs. They just conflict right now." },
        { speaker = "arch", expression = "neutral", text = "(That's the most honest thing Sam has ever said to me. Two roles. Two timescales. Same team. Different gravity.)" },
        { speaker = "dev", expression = "tired", text = "Casey, what do you want me to do? Honest question. We have two days." },
        { speaker = "arch", expression = "neutral", text = "I want to find a path that ships on Friday and doesn't create a system that collapses under its own weight in two months." },
        { speaker = "dev", expression = "neutral", text = "That's a nice sentence. Give me something concrete." },
        { speaker = "arch", expression = "whiteboarding", text = "Concrete. Add a repository interface for the content service. One file. Twenty lines. Every database call goes through it instead of hitting the DB directly from controllers." },
        { speaker = "dev", expression = "neutral", text = "That's an extra layer of abstraction for every query." },
        { speaker = "arch", expression = "neutral", text = "That's an extra layer that lets us swap the database without rewriting every controller. It's twenty lines now or two hundred lines later." },
        { speaker = "dev", expression = "tired", text = "And the service boundaries? The event system?" },
        { speaker = "arch", expression = "neutral", text = "Those can wait. The repository pattern is the foundation. If we get that right, the rest follows naturally." },
        { speaker = "dev", expression = "neutral", text = "(Casey actually prioritized. One pattern instead of all of them. That's new.)" },
        { speaker = "arch", expression = "concerned", text = "(I'm compromising. One pattern instead of the full architecture. It hurts. But something is better than nothing.)" },

        -- THE CHOICE
        { speaker = "arch", expression = "neutral", text = "(Three options. The architecture has to either stretch or hold.)",
            choices = {
                { text = "Cut the fancy stuff. The architecture stays simple. We ship something maintainable.", set = {simplified_ux = true}, rel = {dev = 2, qa = 1, ux = -1} },
                { text = "Build it as designed. The architecture grows to support it. We accept the complexity.", set = {kept_complex_ux = true}, rel = {ux = 2, po = 1, dev = -1} },
                { text = "Pair them. I'll sit nearby. When you hit an architectural wall, ask. We solve it live.", set = {paired_with_dev = true}, rel = {dev = 2, ux = 2, qa = 1} },
            }
        },

        -- SIMPLIFIED PATH
        { speaker = "arch", expression = "neutral", text = "Simplify. Cut the complex interactions. Keep the architecture clean. Ship something we can maintain.", condition = "simplified_ux" },
        { speaker = "dev", expression = "neutral", text = "And the patterns I skipped?", condition = "simplified_ux" },
        { speaker = "arch", expression = "neutral", text = "We retrofit after the demo. I'll write the migration plan. Repository pattern goes in first. Service boundaries second. Event system third.", condition = "simplified_ux" },
        { speaker = "dev", expression = "smiling", text = "That's fair. I'll keep the new code clean. Promise.", condition = "simplified_ux" },
        { speaker = "arch", expression = "concerned", text = "(Promises in software have a half-life of about one sprint. But I'll take it.)", condition = "simplified_ux" },
        { speaker = "arch", expression = "neutral", text = "And Sam -- next time, if the patterns don't fit the timeline, tell me before you skip them. I'd rather adjust the architecture than discover it was ignored.", condition = "simplified_ux" },

        -- COMPLEX PATH
        { speaker = "arch", expression = "whiteboarding", text = "Build it all. Every interaction. But we do it on proper architecture. I'll draw the patterns. You implement them as you go.", condition = "kept_complex_ux" },
        { speaker = "dev", expression = "frustrated", text = "Casey, that's twice the work. Patterns AND features.", condition = "kept_complex_ux" },
        { speaker = "arch", expression = "neutral", text = "The patterns save you time on the second feature. And the third. The upfront cost pays off by Thursday.", condition = "kept_complex_ux" },
        { speaker = "dev", expression = "tired", text = "You're asking me to refactor while I build. That's like changing the engine while driving.", condition = "kept_complex_ux" },
        { speaker = "arch", expression = "whiteboarding", text = "I'll write the interfaces. You fill them in. Think of it as... architecture-driven development.", condition = "kept_complex_ux" },
        { speaker = "arch", expression = "concerned", text = "(I just signed up to defend an architecture I'm not sure can hold this much weight. But letting Sam build more on a broken foundation is worse.)", condition = "kept_complex_ux" },

        -- PAIRING PATH
        { speaker = "arch", expression = "neutral", text = "Pair Alex and Sam. Same desk. I'll sit one row over. When you hit an architectural wall, I'm right there.", condition = "paired_with_dev" },
        { speaker = "dev", expression = "neutral", text = "Three-way. Designer, developer, architect. Has that ever worked?", condition = "paired_with_dev" },
        { speaker = "arch", expression = "neutral", text = "No. That's why we should try it. Alex handles the design decisions in real time. I handle the structural decisions in real time. You just code.", condition = "paired_with_dev" },
        { speaker = "dev", expression = "smiling", text = "I just code. I like the sound of that. All decisions made for me.", condition = "paired_with_dev" },
        { speaker = "arch", expression = "neutral", text = "Not made for you. Made with you. There's a difference. If a pattern doesn't fit, we'll know immediately instead of discovering it in a code review next week.", condition = "paired_with_dev" },
        { speaker = "arch", expression = "neutral", text = "(I have spent six years drawing diagrams in rooms that nobody else was in. This is going to be uncomfortable. In the good way.)", condition = "paired_with_dev" },

        -- POST-HANDOFF REFLECTION
        { speaker = "arch", expression = "concerned", text = "End of the day. Meeting room is empty. I'm staring at my architecture diagram.", bg = "office_day" },
        { speaker = "arch", expression = "neutral", text = "(The diagram is beautiful. Clean lines. Clear boundaries. Elegant event flows.)" },
        { speaker = "arch", expression = "concerned", text = "(The codebase looks nothing like it. And that's the architect's constant grief. The map is not the territory.)" },
        { speaker = "arch", expression = "neutral", text = "(I designed a cathedral. Sam built a shed. The shed works. The cathedral was never started.)" },
        { speaker = "arch", expression = "concerned", text = "(But the shed can't grow. And the product needs to grow. That's the tension that never resolves.)" },
        { speaker = "arch", expression = "neutral", text = "(The gap between architecture and implementation isn't a gap. It's a translation problem. And today I learned that my translations weren't reaching the person who needed them most.)" },
        { speaker = "arch", expression = "neutral", text = "(Tomorrow I draw new diagrams. Smaller ones. Ones that fit in a two-day sprint. Ones that Sam might actually use.)" },

        { text = "", goto = "day8" }
    }
}
