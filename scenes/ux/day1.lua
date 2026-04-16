return {
    title = "Day 1 -- Monday",
    subtitle = "First Impressions",
    narration = "New team. New project. A conference room and six strangers.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- Pre-meeting: arriving at the office
        { speaker = "ux", expression = "neutral", text = "Monday morning. New building, new badge, new desk. The office smells like fresh paint and optimism." },
        { speaker = "ux", expression = "thinking", text = "I find my desk. It's next to the break room. The coffee machine is already making sounds like a small animal in distress." },
        { speaker = "ux", expression = "neutral", text = "There's a sticky note on my monitor: 'Welcome to the team! -Jordan (PM).' It has a smiley face." },
        { speaker = "ux", expression = "thinking", text = "(A PM who writes smiley faces on sticky notes. This could go either way.)" },

        { text = "..." },

        { speaker = "ux", expression = "neutral", text = "I check my email. One message from Priya with the subject 'CHIMERA VISION DECK v17.3 FINAL FINAL.pptx'. 47 slides." },
        { speaker = "ux", expression = "thinking", text = "(Version 17.3. Final final. I have questions about every word in that filename.)" },

        -- The kickoff meeting
        { bg = "meeting_room" },

        { speaker = "pm", expression = "cheerful", text = "Hey everyone! Thanks for coming. Let's kick off Project Chimera." },
        { speaker = "pm", expression = "cheerful", text = "I'm Jordan, your PM. Quick round of intros. Name and role, thirty seconds each." },

        { speaker = "dev", expression = "neutral", text = "Sam. Developer. I write the code that makes the things do the stuff." },
        { speaker = "ux", expression = "thinking", text = "(Deadpan. Flannel shirt. Headphones around the neck. I've worked with Sams before.)" },

        { speaker = "arch", expression = "neutral", text = "Casey, Architecture. I'll be looking at the system design and making sure we build something that scales." },
        { speaker = "ux", expression = "thinking", text = "(Already thinking three sprints ahead. The marker in the breast pocket is a tell.)" },

        { speaker = "qa", expression = "neutral", text = "Riley. QA. I find the things that break before users do." },
        { speaker = "ux", expression = "thinking", text = "(Short, direct. I like Riley already.)" },

        { speaker = "po", expression = "excited", text = "Priya, Product Owner! I am SO excited about this one. I've got a deck about the vision." },
        { speaker = "dev", expression = "neutral", text = "How many slides?" },
        { speaker = "po", expression = "excited", text = "Forty-seven! But we'll only go through the highlights." },
        { speaker = "dev", expression = "neutral", text = "(They're ALL highlights. Of course they are.)" },

        { speaker = "pm", expression = "neutral", text = "Alex, you're our UX lead. Want to say hi?" },
        { speaker = "ux", expression = "neutral", text = "Hey everyone. Alex, UX Design. Looking forward to working with you all." },

        -- Priya's pitch (shortened, not full deck)
        { speaker = "po", expression = "excited", text = "So, Chimera. Picture a platform where teams share knowledge. Like Confluence meets TikTok meets LinkedIn." },
        { speaker = "dev", expression = "neutral", text = "That is three very different products." },
        { speaker = "po", expression = "excited", text = "Exactly! That's what makes it exciting. We're building something entirely new." },
        { speaker = "arch", expression = "concerned", text = "Are we building a web app? Mobile? Both?" },
        { speaker = "pm", expression = "cheerful", text = "Both! MVP in six weeks." },
        { speaker = "dev", expression = "frustrated", text = "Six weeks. Web and mobile." },
        { speaker = "qa", expression = "deadpan", text = "With how many QA engineers?" },
        { speaker = "pm", expression = "neutral", text = "Just you, Riley." },
        { speaker = "qa", expression = "deadpan", text = "Perfect." },

        { text = "..." },

        -- The choice: how to approach this
        { speaker = "pm", expression = "neutral", text = "Alex, how do you want to approach the UX side?" },

        { speaker = "ux", expression = "thinking", text = "(First impression. Set the tone.)",
            choices = {
                { text = "I'd love to start with some user research before we design anything.", set = {wants_research = true}, rel = {qa = 1, po = -1} },
                { text = "Priya, tell us more about the vision. I want to understand the ambition.", set = {eager_for_vision = true}, rel = {po = 2} },
                { text = "Can we step back? What problem are we actually solving for users?", set = {asked_what = true}, rel = {dev = 1} },
            }
        },

        -- Research path
        { speaker = "po", expression = "defensive", text = "User research? We already know what users want. I talked to twelve stakeholders.", condition = "wants_research" },
        { speaker = "ux", expression = "neutral", text = "Stakeholders aren't users.", condition = "wants_research" },
        { speaker = "qa", expression = "neutral", text = "I'd rather test something people actually need.", condition = "wants_research" },
        { speaker = "pm", expression = "neutral", text = "Let's table the research discussion for tomorrow. We have a tight timeline.", condition = "wants_research" },

        -- Vision path
        { speaker = "po", expression = "excited", text = "Oh you're going to LOVE this. The social feed is the hero feature. Imagine TikTok but for enterprise knowledge.", condition = "eager_for_vision" },
        { speaker = "dev", expression = "neutral", text = "So... a wiki with autoplay videos?", condition = "eager_for_vision" },
        { speaker = "po", expression = "excited", text = "No no no. A SMART wiki. With AI. And gamification. And leaderboards.", condition = "eager_for_vision" },
        { speaker = "ux", expression = "thinking", text = "(That's four products. In six weeks. With one QA engineer.)", condition = "eager_for_vision" },

        -- Direct question path
        { speaker = "pm", expression = "neutral", text = "Great question. Priya, the elevator pitch?", condition = "asked_what" },
        { speaker = "po", expression = "excited", text = "Teams waste forty percent of their time looking for information. Chimera fixes that.", condition = "asked_what" },
        { speaker = "dev", expression = "neutral", text = "That's a problem statement, not a product. How does it fix that?", condition = "asked_what" },
        { speaker = "po", expression = "defensive", text = "That's what we're here to figure out! Together!", condition = "asked_what" },
        { speaker = "ux", expression = "thinking", text = "(So we don't know what we're building. Good to know now rather than later.)", condition = "asked_what" },

        -- Converge: wrap up
        { speaker = "pm", expression = "cheerful", text = "Great kickoff, team! Let's regroup tomorrow for the first standup. 9 AM." },
        { speaker = "pm", expression = "cheerful", text = "And it'll be quick." },
        { speaker = "dev", expression = "neutral", text = "Sure, Jordan." },

        -- Post-meeting: private reaction
        { bg = "office_day" },

        { speaker = "ux", expression = "thinking", text = "Back at my desk. I open the Figma file I created this morning. It's blank. The cursor blinks." },
        { speaker = "ux", expression = "neutral", text = "I open Slack. The #chimera channel already has 34 messages. Priya posted the deck. Casey posted a link to a microservices article." },
        { speaker = "ux", expression = "thinking", text = "Riley posted one message: 'Where are the requirements?'" },
        { speaker = "ux", expression = "neutral", text = "Sam posted nothing." },

        { text = "..." },

        { speaker = "ux", expression = "thinking", text = "(I scroll through the Slack channel. Priya has posted four separate messages since the meeting ended. 'Excited!!!' 'Here's the competitive landscape doc!' 'Has anyone seen the Notion board?' 'Also I made a moodboard!')" },
        { speaker = "ux", expression = "neutral", text = "(The moodboard is 47 screenshots from other products. Twelve of them are from TikTok. This is a knowledge management platform. I have questions.)" },
        { speaker = "ux", expression = "thinking", text = "(Casey replied to the microservices article with another article. Then replied to his own reply with a third article. Casey is having a conversation with himself about system architecture and nobody has joined.)" },
        { speaker = "ux", expression = "neutral", text = "(Jordan posted a Jira board link. The board has one column: 'To Do.' It has 23 tickets. All of them say 'TBD' in the description. That is the most honest Jira board I have ever seen.)" },

        { text = "..." },

        { speaker = "ux", expression = "thinking", text = "(First impressions. I always do this. Profile the team from the meeting room body language.)" },
        { speaker = "ux", expression = "thinking", text = "(Jordan: organized, eager, wants to be liked. The smiley face on the sticky note. The 'quick round of intros' that felt rehearsed. Jordan has read a PM book recently and is trying every technique at once.)" },
        { speaker = "ux", expression = "thinking", text = "(Sam: skeptical, competent, tired of being burned. The headphones around the neck are a signal. They say 'I am here but I can disappear.' Sam has been on a project like this before. It did not end well.)" },
        { speaker = "ux", expression = "neutral", text = "(Riley: precise, direct, already my favorite. The 'where are the requirements' message is not a question. It is a challenge. Riley knows there are no requirements. Riley wants everyone else to say it out loud.)" },
        { speaker = "ux", expression = "thinking", text = "(Casey: earnest, detailed, lives on a different timescale. Casey is already designing the system for a hundred thousand users. We have six. Casey will either save this project or bury it in diagrams.)" },
        { speaker = "ux", expression = "neutral", text = "(Priya: passionate, loud, dangerous in the way that optimists are dangerous. The 47-slide deck is not a plan. It is a feeling. Priya feels the product. Feelings do not ship. But they start things.)" },
        { speaker = "ux", expression = "thinking", text = "(And me? I am the one sitting at a blank Figma file, profiling my teammates instead of designing. That is either good UX instinct or procrastination. Both, probably.)" },

        { text = "..." },

        { speaker = "ux", expression = "neutral", text = "(I draw one rectangle in Figma. A login screen. It is a terrible login screen. But it exists. The cursor is no longer blinking at nothing.)" },
        { speaker = "ux", expression = "thinking", text = "(Six people. One product. No requirements. This is either going to be a disaster or the best project I've ever worked on.)" },
        { speaker = "ux", expression = "neutral", text = "(Probably both.)" },

        { text = "", goto = "day2" }
    }
}
