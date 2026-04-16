return {
    title = "Day 15",
    subtitle = "The End",
    narration = "The calendar is empty. No standups. No syncs. Just silence.",

    bg = "break_room",
    bgm = "late_night",

    dialogue = {
        { speaker = "pm", expression = "neutral", text = "My calendar is blank for the first time in fifteen days. No standups. No syncs. No 'quick chats' that last forty minutes." },
        { speaker = "pm", expression = "stressed", text = "I don't know what to do with the quiet." },

        { text = "..." },

        { speaker = "pm", expression = "neutral", text = "I scroll through the Jira board one last time. 'Done' column has 43 tickets. 'Won't Fix' has 12. 'Needs Grooming' still has 7." },
        { speaker = "pm", expression = "neutral", text = "Nobody will groom them. They'll live there forever. Digital fossils." },

        -- Conditional memory: led with timeline
        { speaker = "pm", expression = "neutral", text = "I think about that first day. Leading with the timeline. Setting expectations before anyone had expectations.", condition = "pm_led_with_timeline" },
        { speaker = "pm", expression = "stressed", text = "In hindsight, maybe I should have let the team find their own rhythm first.", condition = "pm_led_with_timeline" },

        -- Conditional memory: led with team
        { speaker = "pm", expression = "neutral", text = "I think about that first day. Letting everyone introduce themselves before talking process.", condition = "pm_led_with_team" },
        { speaker = "pm", expression = "neutral", text = "People first, process second. I think I got that one right.", condition = "pm_led_with_team" },

        -- Conditional memory: fought scope
        { speaker = "pm", expression = "neutral", text = "I remember the scope fight. Watching the tension between Priya and the team, trying to find the middle.", condition = "fought_scope" },
        { speaker = "pm", expression = "stressed", text = "A PM's job isn't to say no. It's to make sure someone does.", condition = "fought_scope" },

        -- Conditional memory: absorbed scope
        { speaker = "pm", expression = "stressed", text = "I remember when the scope expanded. I updated the timeline and pretended the math worked.", condition = "absorbed_scope" },
        { speaker = "pm", expression = "stressed", text = "The math never works when you're adding features without adding time.", condition = "absorbed_scope" },

        -- Conditional memory: rallied team
        { speaker = "pm", expression = "cheerful", text = "I think about the crunch night. When I ordered pizza and said 'we ship together or we don't ship.'", condition = "rallied_team" },
        { speaker = "pm", expression = "neutral", text = "It wasn't a great speech. But it was the right moment.", condition = "rallied_team" },

        -- Conditional memory: set boundaries
        { speaker = "pm", expression = "neutral", text = "I think about sending everyone home. 'Midnight cutoff. No exceptions.'", condition = "set_boundaries" },
        { speaker = "pm", expression = "neutral", text = "Protecting the team from themselves might be the hardest part of this job.", condition = "set_boundaries" },

        -- Conditional memory: backed Riley
        { speaker = "pm", expression = "neutral", text = "I think about Riley. The meeting where I should have listened sooner.", condition = "backed_riley" },
        { speaker = "pm", expression = "stressed", text = "QA shouldn't have to shout to be heard. That was a process failure. My process failure.", condition = "backed_riley" },

        -- Conditional memory: honest demo
        { speaker = "pm", expression = "neutral", text = "I think about the demo. When we chose honesty over polish.", condition = "honest_demo" },
        { speaker = "pm", expression = "neutral", text = "Leadership appreciated it. Or at least they said they did. With PMs, you take what you can get.", condition = "honest_demo" },

        { text = "..." },

        { speaker = "pm", expression = "neutral", text = "I close the Jira board. Close the Confluence space. Archive the Slack channel." },
        { speaker = "pm", expression = "neutral", text = "Somewhere in all those status updates and risk registers is the real story of this project." },
        { speaker = "pm", expression = "stressed", text = "But nobody reads the risk register. They never do." },

        { text = "..." },

        { speaker = "pm", expression = "neutral", text = "I pick up my tablet. My lanyard. My faith in structured process." },
        { speaker = "pm", expression = "neutral", text = "The question isn't whether I kept the project on track. It's whether I kept the people together." },

        { text = "", goto = "$ending" }
    }
}
