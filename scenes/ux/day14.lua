return {
    title = "Day 14 -- Friday",
    subtitle = "Last Day",
    narration = "The final standup. The last goodbye. Fifteen days compressed into one morning.",

    bg = "office_day",
    bgm = "Sprint Cycle (UX Nights)",

    dialogue = {
        -- Morning at desk: packing up, noticing details
        { speaker = "ux", expression = "neutral", text = "Friday morning. I get to my desk early. The office is still quiet." },
        { speaker = "ux", expression = "thinking", text = "Casey's architecture diagram is still on the meeting room whiteboard. Nobody erased it." },
        { speaker = "ux", expression = "neutral", text = "The coffee machine in the break room has a sticky note: 'OUT OF ORDER.' It's been there since day three." },
        { speaker = "ux", expression = "thinking", text = "Fifteen days. This desk already feels like it belongs to someone else." },

        { speaker = "ux", expression = "neutral", text = "I open my sketchbook to the first page. The wireframe from day one. It looks nothing like what we shipped." },
        { speaker = "ux", expression = "thinking", text = "(The lines were clean back then. Confident. Before I knew what the product actually needed to be.)" },
        { speaker = "ux", expression = "neutral", text = "I flip through the pages. Day three, where I sketched the feed layout during Casey's architecture talk. Day six, the onboarding flow I redrew four times." },
        { speaker = "ux", expression = "thinking", text = "Day eight. The page is mostly crossed out. That was the scope fight. I can see where the pen pressed harder." },
        { speaker = "ux", expression = "neutral", text = "(Fifteen days of design decisions, captured in ink. The sketchbook is heavier than it was two weeks ago. Not just pages. Weight.)" },

        { speaker = "ux", expression = "neutral", text = "I notice Sam's desk across the room. The headphones are already gone. The monitor is dark." },
        { speaker = "ux", expression = "thinking", text = "(Sam was always the first one to arrive. Being last to leave -- that's new.)", condition = {rel_dev_gte = 5} },
        { speaker = "ux", expression = "neutral", text = "Riley's desk is immaculate. As if QA never sat there. No sticky notes, no cable tangles. Just the regression suite printed out and paper-clipped." },
        { speaker = "ux", expression = "thinking", text = "(Riley leaves evidence in the bug tracker, not on the furniture.)" },

        { text = "..." },

        -- The farewell standup
        { bg = "break_room", bgm = "late_night" },

        { speaker = "pm", expression = "neutral", text = "Last standup. I'll keep it short." },

        -- Conditional goodbye: Sam (varies by relationship)
        { speaker = "dev", expression = "smiling", text = "Alex. Best designer I've ever paired with. And I don't say that lightly.", condition = {rel_dev_gte = 5} },
        { speaker = "dev", expression = "smiling", text = "You made me care about spacing. That is a permanent change to my personality.", condition = {rel_dev_gte = 5} },
        { speaker = "ux", expression = "thinking", text = "(Sam is smiling. Actually smiling. I've seen that maybe three times in fifteen days.)", condition = {rel_dev_gte = 5} },
        { speaker = "dev", expression = "neutral", text = "Alex. We didn't always agree. But you pushed me to think about the user. That's rare.", condition = {rel_dev_gte = 0, rel_dev_lt = 5} },
        { speaker = "dev", expression = "tired", text = "Alex. Good luck on whatever's next.", condition = {rel_dev_lt = 0} },
        { speaker = "ux", expression = "thinking", text = "(Short. But that's Sam. The words cost something. Even the short ones.)", condition = {rel_dev_lt = 0} },

        -- Conditional goodbye: Riley (varies by relationship)
        { speaker = "qa", expression = "neutral", text = "Alex. You actually cared about accessibility. I won't forget that.", condition = {rel_qa_gte = 5} },
        { speaker = "qa", expression = "deadpan", text = "Alex. You listened more than most. That's a low bar, but you cleared it.", condition = {rel_qa_gte = 0, rel_qa_lt = 5} },

        -- Conditional goodbye: Casey
        { speaker = "arch", expression = "neutral", text = "Alex. You made me realize that users don't see architecture. They see experience. That changed how I think.", condition = {rel_arch_gte = 3} },
        { speaker = "arch", expression = "concerned", text = "Alex. I hope next time we find more common ground between systems and users.", condition = {rel_arch_lt = 3} },

        -- Conditional goodbye: Priya
        { speaker = "po", expression = "neutral", text = "Alex. Thank you for pushing back on me. I needed it even when I didn't want it.", condition = "fought_scope" },
        { speaker = "po", expression = "excited", text = "Alex. We dreamed big together. Not all of it shipped, but the ambition was real.", condition = "absorbed_scope" },
        { speaker = "po", expression = "neutral", text = "Alex. You found the middle ground when I couldn't. That's a gift.", condition = "compromised_scope" },

        -- Jordan
        { speaker = "pm", expression = "neutral", text = "Alex. You made my job easier. That's the highest compliment a PM can give." },

        { text = "..." },

        { speaker = "pm", expression = "neutral", text = "Alex? Want to close us out?" },

        -- The binary choice: look forward or look back
        { speaker = "ux", expression = "thinking", text = "(Last words. Two ways to end this.)",
            choices = {
                { text = "I'm taking what I learned here into whatever comes next. Forward.", set = {final_forward = true}, rel = {pm = 1, dev = 1} },
                { text = "I'll remember this team. Every argument, every compromise, every late night.", set = {final_backward = true}, rel = {qa = 1, po = 1, arch = 1} },
            }
        },

        { speaker = "dev", expression = "smiling", text = "Forward. I like that.", condition = "final_forward" },
        { speaker = "qa", expression = "neutral", text = "The late nights were worth it. Some of them.", condition = "final_backward" },

        { text = "..." },

        -- 1-on-1 farewell with closest character
        { speaker = "ux", expression = "neutral", text = "The standup ends. People drift toward their desks. Someone taps my shoulder." },

        { speaker = "dev", expression = "neutral", text = "Hey. Walk out together?", condition = {rel_dev_gte = 5} },
        { speaker = "ux", expression = "thinking", text = "We walk to the elevator in silence. It's a comfortable silence.", condition = {rel_dev_gte = 5} },
        { speaker = "ux", expression = "neutral", text = "The elevator takes forever. Neither of us presses the button again.", condition = {rel_dev_gte = 5} },
        { speaker = "dev", expression = "neutral", text = "You know, I used to think design was just making things pretty. That's embarrassing to say out loud.", condition = {rel_dev_gte = 5} },
        { speaker = "ux", expression = "neutral", text = "I used to think code was just making things work. We're even.", condition = {rel_dev_gte = 5} },
        { speaker = "dev", expression = "smiling", text = "Same team next project?", condition = {rel_dev_gte = 5} },
        { speaker = "ux", expression = "neutral", text = "Same team.", condition = {rel_dev_gte = 5} },
        { speaker = "ux", expression = "thinking", text = "(The elevator arrives. We step in. The doors close. And just like that, the project is behind us.)", condition = {rel_dev_gte = 5} },

        { speaker = "qa", expression = "neutral", text = "Alex. One thing.", condition = {rel_qa_gte = 5, rel_dev_lt = 5} },
        { speaker = "qa", expression = "neutral", text = "Keep fighting for the edge cases. Every user is an edge case to someone.", condition = {rel_qa_gte = 5, rel_dev_lt = 5} },
        { speaker = "ux", expression = "thinking", text = "(That's the most Riley thing anyone has ever said.)", condition = {rel_qa_gte = 5, rel_dev_lt = 5} },
        { speaker = "ux", expression = "neutral", text = "I will. I promise.", condition = {rel_qa_gte = 5, rel_dev_lt = 5} },
        { speaker = "qa", expression = "neutral", text = "Don't promise. Just do it. Promises are Jira tickets. Doing it is a pull request.", condition = {rel_qa_gte = 5, rel_dev_lt = 5} },
        { speaker = "ux", expression = "thinking", text = "(I laugh. It might be the first time I've heard Riley make a joke. Or maybe every bug report was a joke and I just wasn't listening right.)", condition = {rel_qa_gte = 5, rel_dev_lt = 5} },

        { speaker = "ux", expression = "neutral", text = "I pack my sketchbook. Take one last look around.", condition = {rel_dev_lt = 5, rel_qa_lt = 5} },
        { speaker = "ux", expression = "thinking", text = "The office looks the same as day one. But I don't.", condition = {rel_dev_lt = 5, rel_qa_lt = 5} },
        { speaker = "ux", expression = "neutral", text = "Jordan waves from across the room. Priya is already on her phone, probably writing a deck for the next project.", condition = {rel_dev_lt = 5, rel_qa_lt = 5} },
        { speaker = "ux", expression = "thinking", text = "(Fifteen days of collaboration with people I might never work with again. The work survives. The wireframes are in Figma. The relationships -- those are harder to save.)", condition = {rel_dev_lt = 5, rel_qa_lt = 5} },

        { speaker = "ux", expression = "neutral", text = "Fifteen days. Done." },
        { speaker = "ux", expression = "thinking", text = "(The badge goes back to HR. The desk goes back to facilities. The sketchbook goes home with me.)" },
        { speaker = "ux", expression = "neutral", text = "(That's what you keep. Not the product. Not the process. The notebook full of wrong ideas that eventually became right ones.)" },

        { text = "", goto = "day15" }
    }
}
