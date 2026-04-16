return {
    title = "Day 8 -- Thursday",
    subtitle = "QA Strikes",
    narration = "Demo tomorrow. You ran the regression suite overnight. The numbers are bad. The numbers have always been bad. Today is the day everyone finds out.",

    bg = "office_day",
    bgm = "tension",

    dialogue = {
        { speaker = "qa", expression = "deadpan", text = "Thursday. Demo tomorrow. The regression suite ran overnight. 240 test cases. 23 failures. The spreadsheet is open. The spreadsheet is ready." },
        { speaker = "qa", expression = "neutral", text = "(This is my Super Bowl. I have been waiting two weeks for this Super Bowl.)" },
        { speaker = "qa", expression = "deadpan", text = "I walk into standup with a clipboard. The clipboard has a number on it. The number is large." },
        { speaker = "qa", expression = "neutral", text = "So I've been testing the prototype." },
        { speaker = "pm", expression = "cheerful", text = "Great! How's it looking?" },
        { speaker = "qa", expression = "deadpan", text = "I have 23 bugs." },
        { speaker = "dev", expression = "frustrated", text = "TWENTY-THREE?!" },
        { speaker = "qa", expression = "smirk", text = "(Sam's face. I wish I had a camera. I wish I had a camera mounted on a drone that could zoom into Sam's face from across the room.)" },
        { speaker = "pm", expression = "stressed", text = "Riley, are you sure? Twenty-three?" },
        { speaker = "qa", expression = "deadpan", text = "I counted twice. I counted a third time because I didn't believe myself. Twenty-three." },
        { speaker = "qa", expression = "neutral", text = "Want the highlights?" },
        { speaker = "pm", expression = "neutral", text = "Do we have a choice?" },
        { speaker = "qa", expression = "neutral", text = "No." },

        -- The bug parade - expanded
        { speaker = "qa", expression = "neutral", text = "Bug 1. Content feed breaks if you scroll too fast. The API paginates at 20 items but the frontend requests 50. The mismatch causes a blank screen." },
        { speaker = "dev", expression = "neutral", text = "Works on my machine." },
        { speaker = "qa", expression = "neutral", text = "Your machine has 32 gigs of RAM and a fiber connection, Sam. Our users have Chromebooks and hotel wifi." },
        { speaker = "dev", expression = "frustrated", text = "(She tested on a Chromebook. She actually found a Chromebook.)" },

        { speaker = "qa", expression = "neutral", text = "Bug 3. Profile page crashes if the user has no profile picture. Null pointer. The entire page goes white." },
        { speaker = "dev", expression = "neutral", text = "Nobody would have no profile picture." },
        { speaker = "qa", expression = "deadpan", text = "I created a test account with no picture. It took four seconds. Four seconds to break your product." },

        { speaker = "qa", expression = "smirk", text = "Bug 7. Search bar accepts HTML. I typed a script tag and the page said 'hello Riley.'" },
        { speaker = "dev", expression = "frustrated", text = "...that's a security issue." },
        { speaker = "qa", expression = "deadpan", text = "It's an XSS vulnerability, Sam. I could steal session tokens with this. I could make the page redirect to a cat video. I did both. The cat video was very good." },
        { speaker = "dev", expression = "frustrated", text = "(She redirected the page to a cat video. I am being humiliated by a QA engineer and a cat.)" },

        { speaker = "qa", expression = "neutral", text = "Bug 12. What happens when a user's name contains an emoji?" },
        { speaker = "dev", expression = "frustrated", text = "Please don't." },
        { speaker = "qa", expression = "smirk", text = "It crashes. Not just the profile. The feed. The comments. The notification panel. The whole app. One emoji in a username and the castle falls." },
        { speaker = "qa", expression = "deadpan", text = "The stack trace is 47 lines. It's the most beautiful error log I've ever read. I want it framed." },

        { speaker = "qa", expression = "neutral", text = "Bug 15. The notification system sends duplicate alerts. I got 'you have a new comment' eleven times. The comment was 'test.' I wrote the comment. I was notifying myself about my own test comment. Eleven times." },
        { speaker = "pm", expression = "stressed", text = "Eleven times?" },
        { speaker = "qa", expression = "deadpan", text = "Eleven. I counted. That's what I do. I count things that are broken." },

        { speaker = "qa", expression = "neutral", text = "Bug 19. The auto-save feature saves every keystroke to the database. Every. Single. Keystroke. I typed a 200-word article. The database logged 1,247 save events." },
        { speaker = "dev", expression = "frustrated", text = "That's... a debounce issue." },
        { speaker = "qa", expression = "deadpan", text = "That's a 'we will exceed our database write limits in production by Tuesday' issue." },

        { speaker = "arch", expression = "concerned", text = "This is what happens when we skip the architecture review--" },
        { speaker = "dev", expression = "neutral", text = "Save it, Casey. We've all seen the whiteboard." },
        { speaker = "arch", expression = "concerned", text = "The input validation section was on page 11." },
        { speaker = "qa", expression = "deadpan", text = "(Casey's architecture doc predicted eight of these bugs. Nobody read the doc. I read the doc. The doc was right.)" },

        -- Triage
        { speaker = "pm", expression = "stressed", text = "Demo is tomorrow. Triage. Whose responsibility is this?" },

        { speaker = "qa", expression = "neutral", text = "(QA decides the tone now. I can be vindictive. I can be magnanimous. I can be professional. I get to pick.)",
            choices = {
                { text = "Take a slice of the blame. 'I should have raised these earlier.' Build the bridge.", set = {took_ownership = true}, rel = {dev = 2, ux = 1, pm = 1} },
                { text = "Spread it. 'Everyone shares this. The process broke, not the people.'", set = {shared_blame = true}, rel = {dev = 0, pm = 1, po = 1} },
                { text = "Hold the line. 'Cut the broken features from the demo. We show only what works.'", set = {hid_bugs = true}, rel = {pm = 1, dev = -1, qa = 1} },
            }
        },

        -- Ownership
        { speaker = "qa", expression = "neutral", text = "Some of these I should have caught earlier. The staging environment was late. My test cases were late. I'll own that.", condition = "took_ownership" },
        { speaker = "qa", expression = "neutral", text = "I'll triage with Sam. Together. We'll knock out the critical path bugs tonight.", condition = "took_ownership" },
        { speaker = "dev", expression = "smiling", text = "Riley, you absolutely don't need to take any of this. But thank you.", condition = "took_ownership" },
        { speaker = "qa", expression = "neutral", text = "(Owning a slice. Even when it's not yours. The bridge has to start somewhere.)", condition = "took_ownership" },
        { speaker = "qa", expression = "deadpan", text = "For the record, I'm taking the XSS and the null pointer. You take the pagination and the debounce. Deal?", condition = "took_ownership" },

        -- Shared
        { speaker = "po", expression = "neutral", text = "Okay... the spec did change a few times. I'll own that part.", condition = "shared_blame" },
        { speaker = "dev", expression = "neutral", text = "Four times.", condition = "shared_blame" },
        { speaker = "qa", expression = "neutral", text = "Nobody's getting fired today. The process broke. Let's fix the process and the bugs.", condition = "shared_blame" },
        { speaker = "qa", expression = "deadpan", text = "I've sorted the 23 into three buckets. Eight are blockers. Ten are ugly but survivable. Five are cosmetic. We fix the eight. We hide the ten. We ignore the five.", condition = "shared_blame" },

        -- Hold the line
        { speaker = "qa", expression = "deadpan", text = "Cut search. Cut profiles. Cut notifications. Demo the feed and the create flow. The rest is on fire and we're not putting it on stage.", condition = "hid_bugs" },
        { speaker = "pm", expression = "neutral", text = "A focused demo. I like the spin.", condition = "hid_bugs" },
        { speaker = "qa", expression = "deadpan", text = "(That's not a spin. That's me protecting leadership from the truth I'm too tired to fight today.)", condition = "hid_bugs" },
        { speaker = "qa", expression = "neutral", text = "I'll write a demo script. Every click, every screen, every transition. We rehearse it. Nobody improvises.", condition = "hid_bugs" },

        -- Callbacks
        { speaker = "dev", expression = "smiling", text = "Riley, for what it's worth -- the pairing last week helped. The bugs in the features we built together are half what I'd expect.", condition = "paired_with_dev" },
        { speaker = "qa", expression = "neutral", text = "(Sam noticed. Sam actually noticed that the paired features have fewer bugs. That's the validation I didn't know I needed.)", condition = "paired_with_dev" },

        { speaker = "qa", expression = "deadpan", text = "Six of these bugs trace directly to the scope changes from last week. More features, more surface, more breaks.", condition = "absorbed_scope" },
        { speaker = "po", expression = "defensive", text = "The scope changes were necessary--", condition = "absorbed_scope" },
        { speaker = "qa", expression = "neutral", text = "I'm not arguing. I'm counting. Six bugs. That's the cost of scope creep, measured in defects.", condition = "absorbed_scope" },

        -- Break room segment
        { speaker = "qa", expression = "deadpan", text = "(Break room. 4 PM. The triage is done. The critical bugs are assigned. I'm alone with my spreadsheet.)", bg = "break_room" },
        { speaker = "qa", expression = "neutral", text = "(240 test cases. 23 red. 217 green. The team sees the 23. I see the 217. I see every case I wrote, every edge I covered, every scenario I imagined.)" },
        { speaker = "qa", expression = "deadpan", text = "(Nobody thanks you for the 217 that passed. Nobody sends a Slack message that says 'great job, the login flow works.' That's not how this works.)" },
        { speaker = "qa", expression = "neutral", text = "(But the 23 that failed? Those will be fixed by tomorrow because I found them today. That's the job. Find the breaks before the users do.)" },
        { speaker = "qa", expression = "smirk", text = "(The team is finally seeing the matrix. The matrix is a spreadsheet. The spreadsheet is mine.)" },

        -- Choice 2
        { speaker = "qa", expression = "neutral", text = "(Tomorrow is demo day. Tonight is bug fix night. But right now, in this moment, I get to decide what kind of QA I am.)",
            choices = {
                { text = "Roll up my sleeves. Open the IDE. Start fixing the ones I can fix myself.", set = {bug_fix_focused = true}, rel = {dev = 1, pm = 1} },
                { text = "Write the post-mortem template. Document the root causes. Make sure this never happens again.", set = {bug_process_focused = true}, rel = {pm = 1, arch = 1} },
                { text = "Send the full bug report to leadership. They should know what they're demoing tomorrow.", set = {bug_blame_focused = true}, rel = {pm = -1, po = -1, qa = 1} },
            }
        },

        { speaker = "qa", expression = "neutral", text = "IDE open. Bug 7 first. The XSS. Input sanitization. I can write this fix faster than explaining it to Sam.", condition = "bug_fix_focused" },
        { speaker = "qa", expression = "deadpan", text = "(QA fixing dev bugs. If anyone tells me this isn't my job, I will show them the demo timeline and the clock.)", condition = "bug_fix_focused" },

        { speaker = "qa", expression = "deadpan", text = "Post-mortem template. Root cause column. Impact column. Prevention column. This spreadsheet will outlive us all.", condition = "bug_process_focused" },
        { speaker = "qa", expression = "neutral", text = "(Fixing bugs is important. Fixing the process that creates bugs is more important. The doc nobody reads today saves the sprint nobody expects tomorrow.)", condition = "bug_process_focused" },

        { speaker = "qa", expression = "deadpan", text = "Email drafted. Full bug report. 23 items. Severity ratings. Screenshot evidence. Sent to the director's distribution list.", condition = "bug_blame_focused" },
        { speaker = "qa", expression = "neutral", text = "(The team won't love this. Leadership needs to know. If the demo breaks, I won't be the one who didn't warn them.)", condition = "bug_blame_focused" },

        { speaker = "qa", expression = "deadpan", text = "(Day 8. The regression suite is now 240 cases. 23 are red. The team is finally seeing the matrix. Tomorrow, the matrix goes on stage.)" },

        { text = "", goto = "day9" }
    }
}
