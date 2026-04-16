return {
    title = "Day 10 -- Wednesday",
    subtitle = "The Long Night",
    narration = "Final demo Friday. The team is exhausted. You can help. You can also make it worse. You usually do both.",

    bg = "office_evening",
    bgm = "late_night",

    dialogue = {
        { speaker = "po", expression = "neutral", text = "Wednesday evening. Final demo Friday. The office lights are staying on tonight." },
        { speaker = "pm", expression = "stressed", text = "Status: behind on five of seven deliverables." },
        { speaker = "dev", expression = "tired", text = "I've been coding 11 hours. The feed works. Search is held together with hope." },
        { speaker = "arch", expression = "neutral", text = "Performance issues under load." },
        { speaker = "qa", expression = "deadpan", text = "By 'under load' you mean three people? Because three people breaks it." },
        { speaker = "po", expression = "defensive", text = "(Three users. The project is two weeks from shipping and it crashes with three users. This is the part where Sam looks at me.)" },

        { speaker = "pm", expression = "stressed", text = "Real talk. Are we crunching tonight?" },
        { speaker = "po", expression = "excited", text = "I can help! I'll update the demo script!" },
        { speaker = "dev", expression = "frustrated", text = "Priya. PLEASE. Don't change requirements tonight." },
        { speaker = "po", expression = "defensive", text = "(He thinks any contribution from me is more scope. I have to prove him wrong. Or right. Three options.)" },

        { speaker = "po", expression = "neutral", text = "(What does this team need from me right now?)",
            choices = {
                { text = "Stay all night with them. Buy pizza. Be in the trenches.", set = {pulled_allnighter = true}, rel = {pm = 1, dev = 1} },
                { text = "Send everyone home at 10. Take the schedule pressure off. I'll handle leadership.", set = {set_boundaries = true}, rel = {dev = 2, qa = 2, ux = 1, pm = -1} },
                { text = "Lock the scope. No new asks. I write zero new tickets. The team builds what we have.", set = {rallied_team = true}, rel = {dev = 2, qa = 1, arch = 1, pm = 1} },
            }
        },

        -- All-nighter
        { speaker = "po", expression = "excited", text = "I'm staying. I'll order pizza. I'll fetch coffee. Whatever you need.", condition = "pulled_allnighter" },
        { speaker = "dev", expression = "tired", text = "(That's actually... helpful. As long as she doesn't open Notion.)", condition = "pulled_allnighter" },
        { speaker = "qa", expression = "neutral", text = "Crunch isn't a badge of honor, Priya.", condition = "pulled_allnighter" },
        { speaker = "po", expression = "neutral", text = "I order four pizzas. I pay with my personal card. The company card is for requirements tools, apparently.", condition = "pulled_allnighter" },

        -- Boundaries
        { speaker = "po", expression = "neutral", text = "Hard cutoff at 10 PM. Everyone home. I'll talk to leadership about expectations. The team needs sleep more than the demo needs polish.", condition = "set_boundaries" },
        { speaker = "dev", expression = "tired", text = "Did Priya just protect us from leadership?", condition = "set_boundaries" },
        { speaker = "qa", expression = "smirk", text = "I'm framing this moment.", condition = "set_boundaries" },
        { speaker = "pm", expression = "stressed", text = "Priya, the demo--", condition = "set_boundaries" },
        { speaker = "po", expression = "neutral", text = "Will be better with a team that slept.", condition = "set_boundaries" },

        -- Rally
        { speaker = "po", expression = "neutral", text = "I am locking the backlog. Right now. No new tickets from me until after the demo. Build what's there.", condition = "rallied_team" },
        { speaker = "dev", expression = "smiling", text = "I want this on a poster.", condition = "rallied_team" },
        { speaker = "po", expression = "neutral", text = "(I just gave myself 48 hours of silence. It might kill me.)", condition = "rallied_team" },
        { speaker = "po", expression = "neutral", text = "I close Notion. Then I reopen it. Then I close it again. The second time sticks.", condition = "rallied_team" },

        -- Time-stamp: Rewriting acceptance criteria at midnight
        { text = "-- 9:15 PM --" },

        { speaker = "po", expression = "neutral", text = "(Everyone has a task except me. Sam is coding. Alex is designing. Riley is testing. Casey is patching. Jordan is planning. I am... sitting here. With Notion open. And guilt.)" },
        { speaker = "po", expression = "defensive", text = "(What does a product owner do during crunch? The team builds. The PO watches. That cannot be right.)" },
        { speaker = "po", expression = "neutral", text = "(I open the user feedback spreadsheet from the last demo. 34 responses. I never read past the first ten. Tonight I read all of them.)" },
        { speaker = "po", expression = "neutral", text = "(Response 17: 'The search doesn't find anything useful.' Response 22: 'Why is the create button so hard to find?' Response 29: 'I like the design but I don't know what this product does.')" },
        { speaker = "po", expression = "defensive", text = "(They don't know what it does. After 47 slides and two demos, they don't know what it does. That is not a design problem. That is a vision problem. That is my problem.)" },
        { speaker = "po", expression = "neutral", text = "(I start rewriting the product one-liner. Not the elevator pitch. The sentence that goes on the login page. The sentence that tells a user why they are here.)", condition = "fought_scope" },
        { speaker = "po", expression = "neutral", text = "(Twelve drafts. The twelfth one is simple: 'Find what your team knows.' Five words. I should have started with five words instead of 47 slides.)", condition = "fought_scope" },

        { text = "-- 10:00 PM --" },

        { speaker = "po", expression = "neutral", text = "(The team is working. I should be working too. But what does a PO do during crunch?)" },
        { speaker = "po", expression = "neutral", text = "(I open the acceptance criteria for every feature on the demo list. There are 14 criteria. Seven of them are aspirational. Three are impossible.)" },
        { speaker = "po", expression = "neutral", text = "(I start rewriting them. Not to add scope. To remove it. The criteria should match what the team can actually build.)" },
        { speaker = "po", expression = "neutral", text = "The feed acceptance criteria said 'infinite scroll with real-time updates.' I change it to 'paginated feed that loads.' That is what we have. That is what the demo will show." },

        { text = "-- 11:15 PM --" },

        { speaker = "po", expression = "neutral", text = "Seven criteria rewritten. Each one smaller. Each one achievable. Each one honest." },
        { speaker = "po", expression = "defensive", text = "(This is the opposite of what I do. I expand scope. I add features. I dream bigger. Tonight I am dreaming smaller and it hurts.)" },
        { speaker = "po", expression = "neutral", text = "(But smaller and shipped is worth more than bigger and broken. Sam has been saying this for two weeks. I am finally hearing it.)" },

        { text = "-- 12:00 AM --" },

        { speaker = "po", expression = "neutral", text = "I rewrite the demo script. Not the features we wanted. The features we have." },
        { speaker = "po", expression = "neutral", text = "The script used to be 14 pages. It is now 6. Every cut stings. The recommendation engine. The social sharing. The custom profiles." },
        { speaker = "po", expression = "defensive", text = "(I championed every one of those features. I built the business case. I presented the user stories. And now I'm deleting them from a script at midnight.)" },
        { speaker = "po", expression = "neutral", text = "(This is what a PO does during crunch. Not build. Unbuild. Prioritize by subtraction.)" },

        { text = "-- 12:30 AM --" },

        { speaker = "po", expression = "neutral", text = "(I walk to the break room. The coffee machine is empty. Someone refilled the water but forgot the grounds. I fix it. My one engineering contribution to this project.)" },
        { speaker = "po", expression = "neutral", text = "(Alex is still here. Two monitors. Figma. Zoomed in. I can see the onboarding screen from across the room. It looks different from yesterday. Better.)" },
        { speaker = "ux", expression = "thinking", text = "Priya. Why are you still here?" },
        { speaker = "po", expression = "neutral", text = "Rewriting acceptance criteria. Making the demo script honest." },
        { speaker = "ux", expression = "neutral", text = "Honest is good. Honest at 12:30 AM is even better." },
        { speaker = "po", expression = "defensive", text = "(Alex complimented my honesty. I have been doing this job for three weeks and the first compliment is about cutting features. Product ownership is a strange career.)" },

        -- Interpersonal moment
        { speaker = "po", expression = "neutral", text = "I message Riley: 'Updated acceptance criteria and demo script. Scope is reduced. Please re-prioritize your bugs against the new list.'" },
        { speaker = "qa", expression = "deadpan", text = "You cut scope? Voluntarily? At midnight?" },
        { speaker = "po", expression = "neutral", text = "The old criteria were lies. The new ones are promises we can keep." },
        { speaker = "qa", expression = "neutral", text = "Priya. This is the most useful thing you have done all sprint." },
        { speaker = "po", expression = "defensive", text = "(That stings. It also might be true.)" },

        { speaker = "po", expression = "neutral", text = "Sam messages at 12:30. 'Saw the new demo script. Thank you. Seriously.'", condition = "paired_with_dev" },
        { speaker = "po", expression = "neutral", text = "(Sam thanked me. For removing features. This is character development.)", condition = "paired_with_dev" },

        { speaker = "po", expression = "neutral", text = "Sam messages at 12:30. 'New demo script looks realistic. First time I've said that.'", condition = {paired_with_dev = nil} },
        { speaker = "po", expression = "neutral", text = "(Realistic. From Sam, that is a compliment.)", condition = {paired_with_dev = nil} },

        -- Choice 2: personal/emotional
        { speaker = "po", expression = "neutral", text = "(It is 1 AM. The demo script is rewritten. The acceptance criteria are honest. The backlog is locked.)" },
        { speaker = "po", expression = "defensive", text = "(I am a product owner who just spent three hours making the product smaller. I feel like I've betrayed something.)" },
        { speaker = "po", expression = "neutral", text = "(Do I share this feeling or sit with it?)",
            choices = {
                { text = "Message the team: 'Scope is cut. Criteria are honest. We ship what we have and it will be enough.' Rally them.", set = {crunch_bonded = true}, rel = {dev = 1, qa = 1, pm = 1} },
                { text = "Close the laptop. Process this alone. The team doesn't need my feelings right now. They need my clarity.", set = {crunch_isolated = true}, rel = {po = 1} },
            }
        },

        { speaker = "po", expression = "neutral", text = "I send the message. It is the shortest thing I have ever written. It is also the most honest.", condition = "crunch_bonded" },
        { speaker = "dev", expression = "tired", text = "'Enough' is the right word. Thanks, Priya.", condition = "crunch_bonded" },
        { speaker = "po", expression = "neutral", text = "(Sam said 'enough' is the right word. For a PO who always wants 'more,' that is a lesson.)", condition = "crunch_bonded" },

        { speaker = "po", expression = "neutral", text = "I close the laptop. The demo script sits in Notion, smaller and truer than it was this morning.", condition = "crunch_isolated" },
        { speaker = "po", expression = "defensive", text = "(Tomorrow I will be clear-headed and precise. Tonight I am allowed to mourn the features we are cutting.)", condition = "crunch_isolated" },
        { speaker = "po", expression = "neutral", text = "(The recommendation engine was going to be beautiful. It will live in the backlog. Backlogs are where dreams go to wait.)", condition = "crunch_isolated" },

        -- End of day
        { speaker = "po", expression = "neutral", text = "(The crunch. Every project has one. The PO either causes it or absorbs it. Tonight, I'm choosing.)" },
        { speaker = "po", expression = "neutral", text = "(I leave at 1:15 AM. The demo script is 6 pages. The acceptance criteria are honest. That has to be enough.)" },

        { text = "", goto = "day11" }
    }
}
