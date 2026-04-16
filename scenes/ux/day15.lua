return {
    title = "Day 15",
    subtitle = "The End",
    narration = "The office is quiet. The sprints are done. One last commute.",

    bg = "break_room",
    bgm = "late_night",

    dialogue = {
        { speaker = "ux", expression = "thinking", text = "The break room is empty. Someone left a mug in the sink with a sticky note: 'Will clean Monday.' There is no Monday." },
        { speaker = "ux", expression = "neutral", text = "Fifteen days. That's all it was." },
        { speaker = "ux", expression = "thinking", text = "Funny how fifteen days can feel like a career." },

        { text = "..." },

        -- Conditional memory: research path
        { speaker = "ux", expression = "neutral", text = "I think about that first day. When I said we should talk to actual users before designing anything.", condition = "wants_research" },
        { speaker = "ux", expression = "thinking", text = "Half the room looked at me like I'd suggested we all learn Esperanto. But it mattered.", condition = "wants_research" },

        -- Conditional memory: vision path
        { speaker = "ux", expression = "neutral", text = "I think about that first day. When I said Priya's vision was worth chasing.", condition = "eager_for_vision" },
        { speaker = "ux", expression = "thinking", text = "I wonder if I really believed it, or if I just wanted to belong.", condition = "eager_for_vision" },

        -- Conditional memory: scope fight
        { speaker = "ux", expression = "neutral", text = "I remember the scope fight. Priya's face when I said no.", condition = "fought_scope" },
        { speaker = "ux", expression = "thinking", text = "Saying no is a design decision too. Maybe the most important one I made.", condition = "fought_scope" },

        -- Conditional memory: absorbed scope
        { speaker = "ux", expression = "frustrated", text = "I remember saying yes to the scope creep. I thought being flexible was a virtue.", condition = "absorbed_scope" },
        { speaker = "ux", expression = "thinking", text = "Turns out flexibility without a spine is just collapse.", condition = "absorbed_scope" },

        -- Conditional memory: paired with dev
        { speaker = "ux", expression = "neutral", text = "I think about those sessions with Sam. Sitting side by side, arguing over pixels and milliseconds.", condition = "paired_with_dev" },
        { speaker = "ux", expression = "thinking", text = "We didn't always agree. But we always shipped something real.", condition = "paired_with_dev" },

        -- Conditional memory: backed Riley
        { speaker = "ux", expression = "neutral", text = "I think about Riley. Standing up in that room and saying what everyone was thinking.", condition = "backed_riley" },
        { speaker = "ux", expression = "thinking", text = "I'm glad I backed them. Someone has to be brave enough to say 'this is broken.'", condition = "backed_riley" },

        -- Conditional memory: set boundaries
        { speaker = "ux", expression = "neutral", text = "I think about the night I went home instead of staying. The guilt. And then the clarity the next morning.", condition = "set_boundaries" },
        { speaker = "ux", expression = "thinking", text = "You can't design for humans if you've forgotten how to be one.", condition = "set_boundaries" },

        -- Conditional memory: pulled allnighter
        { speaker = "ux", expression = "tired", text = "I think about that night. The fluorescent lights. The cold coffee. The sunrise through the office window.", condition = "pulled_allnighter" },
        { speaker = "ux", expression = "thinking", text = "I'm not sure it was worth it. But I showed up.", condition = "pulled_allnighter" },

        { text = "..." },

        { speaker = "ux", expression = "neutral", text = "The whiteboard in the meeting room still has Casey's architecture diagram. Nobody erased it." },
        { speaker = "ux", expression = "thinking", text = "The Figma file has 47 frames, most of them abandoned. A graveyard of good intentions." },
        { speaker = "ux", expression = "neutral", text = "Somewhere in there is the version of Chimera I believed in." },

        { text = "..." },

        { speaker = "ux", expression = "thinking", text = "I open Slack one last time. The general channel is quiet. Jordan posted a thumbs up emoji at 6 AM. Nobody responded." },
        { speaker = "ux", expression = "neutral", text = "I close my laptop. Pick up my sketchbook. Walk to the door." },
        { speaker = "ux", expression = "thinking", text = "The question isn't what we built. It's what I learned about building." },

        { text = "", goto = "$ending" }
    }
}
