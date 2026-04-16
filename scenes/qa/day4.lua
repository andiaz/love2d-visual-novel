return {
    title = "Day 4 -- Thursday",
    subtitle = "The Design Review",
    narration = "Alex is presenting designs. Casey will derail it. Priya will add features. You will sit in the back and write down every edge case nobody else is thinking about.",

    dialogue = {
        -- PRE-REVIEW: Automation vs manual testing debate
        { bg = "office_day", bgm = "Sprint Cycle (UX Nights)" },

        { speaker = "qa", expression = "neutral", text = "Thursday. Eight-fifteen. Review at ten. But first -- the strategy question that's been eating at me." },
        { speaker = "qa", expression = "neutral", text = "I stare at my testing spreadsheet. Two columns. 'Automate' and 'Manual.' Both are long." },
        { speaker = "qa", expression = "thinking", text = "(The onboarding flow. Four screens, twelve possible states, three user roles. I could write Cypress tests for every path.)" },
        { speaker = "qa", expression = "thinking", text = "(But the designs aren't final. Alex is presenting today. The screens might change by Friday.)" },
        { speaker = "qa", expression = "neutral", text = "(If I automate now, I'm writing tests for layouts that don't exist yet. If I wait, the backlog grows.)" },
        { speaker = "qa", expression = "deadpan", text = "(The QA paradox: test too early and you're wasting time. Test too late and you're blocking the release.)" },
        { speaker = "qa", expression = "neutral", text = "I look at the manual column. Accessibility checks. Screen reader testing. Edge cases for file uploads. Display name limits." },
        { speaker = "qa", expression = "thinking", text = "(These don't change with the design. A screen reader doesn't care if the button is blue or green. It cares if the button has a label.)" },
        { speaker = "qa", expression = "neutral", text = "(Manual testing for the things that matter regardless of layout. Automation for the things that stabilize.)" },
        { speaker = "qa", expression = "neutral", text = "I add a third column: 'Blocked -- waiting on design.' Fourteen items move there instantly." },
        { speaker = "qa", expression = "deadpan", text = "(Fourteen tests I can't write because the team hasn't decided what they're building. And people wonder why QA is always behind.)" },
        { speaker = "qa", expression = "neutral", text = "I close the spreadsheet. Time to go to a meeting where I'll collect twenty more items for the 'Blocked' column." },
        { speaker = "qa", expression = "deadpan", text = "(At least I'll have material.)" },

        -- THE REVIEW
        { bg = "meeting_room" },

        { speaker = "pm", expression = "neutral", text = "Alright everyone, Alex has designs to walk us through." },
        { speaker = "ux", expression = "neutral", text = "I've mapped out the core flows -- onboarding, content creation, the feed." },
        { speaker = "qa", expression = "neutral", text = "(I open a blank document. Title: 'Edge Cases -- Design Review.' The list starts now.)" },
        { speaker = "ux", expression = "neutral", text = "Onboarding first. Welcome screen, role picker, profile setup, then the feed." },
        { speaker = "qa", expression = "neutral", text = "(Role picker. What if someone picks a role and then wants to change it? Is that a setting? A separate flow? A support ticket?)" },

        -- Casey
        { speaker = "arch", expression = "whiteboarding", text = "Before we go further -- the data model. Relational or document-based?" },
        { speaker = "dev", expression = "neutral", text = "Casey, design review. Not architecture review." },
        { speaker = "qa", expression = "deadpan", text = "(Tangent one. Thirty-six seconds in. New record.)" },
        { speaker = "arch", expression = "whiteboarding", text = "But nested comments--" },
        { speaker = "pm", expression = "neutral", text = "Casey, parking lot." },
        { speaker = "qa", expression = "neutral", text = "(Casey's tangent is annoying but the question is valid. If the data model changes, my test data setup changes. Everything is connected.)" },

        -- Priya
        { speaker = "po", expression = "excited", text = "I love it! Add a leaderboard! And achievements!" },
        { speaker = "qa", expression = "deadpan", text = "Where do we draw the line on additions to designs that haven't been tested with a single user?" },
        { speaker = "po", expression = "defensive", text = "Riley, the deck is the test." },
        { speaker = "qa", expression = "deadpan", text = "(The deck is the test. The fox is the henhouse. The iceberg is the lifeguard.)" },
        { speaker = "po", expression = "excited", text = "Imagine badges, progress bars, weekly challenges--" },
        { speaker = "qa", expression = "neutral", text = "Each of those is a state machine. Badges have earned and unearned states. Progress bars need percentage tracking. Challenges need timers, completion logic, and edge cases for what happens when the week resets mid-task." },
        { speaker = "po", expression = "defensive", text = "You're overcomplicating it." },
        { speaker = "qa", expression = "deadpan", text = "I'm accurately complicating it." },

        -- Sam
        { speaker = "dev", expression = "neutral", text = "Did anyone think about mobile? These layouts are clearly desktop-first." },
        { speaker = "ux", expression = "frustrated", text = "(Mobile means a completely separate test matrix. Nobody budgeted for that.)" },
        { speaker = "qa", expression = "deadpan", text = "(Bug report: 'mobile, the entire concept of.' Severity: critical. Assigned to: everyone.)" },
        { speaker = "dev", expression = "neutral", text = "The card layout doesn't work below 900 pixels." },
        { speaker = "qa", expression = "neutral", text = "(Add to testing matrix: every screen at 320, 768, 1024, and 1440. That's four viewports times three flows times twelve states. One hundred forty-four test cases. Minimum.)" },

        -- Riley's turn
        { speaker = "qa", expression = "neutral", text = "I have notes." },
        { speaker = "pm", expression = "stressed", text = "(Brace.)" },
        { speaker = "qa", expression = "neutral", text = "What happens when a user uploads a 200MB file? What about screen readers? What if a display name is 400 characters? What if it's all emoji?" },
        { speaker = "qa", expression = "neutral", text = "What if two users edit the same article at the same time? What if the network drops mid-save? What if the user's clock is wrong?" },
        { speaker = "qa", expression = "neutral", text = "What if the search index is empty on first load? What if a comment is deleted but a child reply still exists?" },
        { speaker = "qa", expression = "neutral", text = "Zero states. Error states. Timeout states. Permission denied states. Every screen has at least four states nobody has designed." },
        { speaker = "pm", expression = "neutral", text = "Riley. Top concern. One." },
        { speaker = "qa", expression = "neutral", text = "Accessibility. Non-negotiable. The rest is prioritization." },

        -- The choice
        { speaker = "pm", expression = "neutral", text = "What's QA's priority for the next iteration?" },
        { speaker = "qa", expression = "neutral", text = "(Three paths. The product becomes whichever I push for. The testing strategy follows.)",
            choices = {
                { text = "Tech first. Lock the data model so I have a stable target.", set = {prioritized_tech = true}, rel = {dev = 2, arch = 2, ux = 1} },
                { text = "Features first. The deck wants more. Fine. I'll test what I'm given.", set = {prioritized_product = true}, rel = {po = 2, dev = -1, qa = -1} },
                { text = "Users first. Accessibility, error states, screen readers. The boring critical path.", set = {prioritized_users = true}, rel = {dev = 1, ux = 2, po = -2} },
            }
        },

        -- Tech
        { speaker = "qa", expression = "neutral", text = "I cannot test what changes every week. Lock the schema. Lock the API contracts. Then I can build a regression suite that actually means something.", condition = "prioritized_tech" },
        { speaker = "dev", expression = "smiling", text = "Yes. Thank you.", condition = "prioritized_tech" },
        { speaker = "arch", expression = "neutral", text = "If Riley is asking for stability, we should listen. QA sees the cracks before anyone else.", condition = "prioritized_tech" },
        { speaker = "qa", expression = "neutral", text = "Sam, get me the API contracts by Friday. I'll have the test framework scaffolded by Monday.", condition = "prioritized_tech" },
        { speaker = "dev", expression = "neutral", text = "Deal. Three endpoints. Onboarding, content, feed.", condition = "prioritized_tech" },
        { speaker = "qa", expression = "neutral", text = "(Stable targets. Automated tests. A regression suite that catches things before they ship. This is the way.)", condition = "prioritized_tech" },
        { speaker = "po", expression = "defensive", text = "But the features--", condition = "prioritized_tech" },
        { speaker = "qa", expression = "deadpan", text = "Features on an unstable foundation are just bugs with marketing names.", condition = "prioritized_tech" },

        -- Features
        { speaker = "qa", expression = "deadpan", text = "Fine. I'll test the leaderboard. I'll test the achievements. I'll test the gamification. I'll test the feature Priya hasn't named yet.", condition = "prioritized_product" },
        { speaker = "po", expression = "excited", text = "YES. Riley gets it.", condition = "prioritized_product" },
        { speaker = "qa", expression = "deadpan", text = "(Riley does not get it. Riley is dying inside.)", condition = "prioritized_product" },
        { speaker = "qa", expression = "neutral", text = "Priya, for every feature you add, I need a test spec. What does 'working' look like? What does 'broken' look like?", condition = "prioritized_product" },
        { speaker = "po", expression = "excited", text = "I'll send you the requirements!", condition = "prioritized_product" },
        { speaker = "qa", expression = "deadpan", text = "(She'll send me a mood board and call it requirements. I'll turn it into test cases anyway. That's the job.)", condition = "prioritized_product" },
        { speaker = "dev", expression = "tired", text = "Riley, I'm sorry in advance.", condition = "prioritized_product" },
        { speaker = "qa", expression = "deadpan", text = "Noted. Filed under 'apologies, preemptive.'", condition = "prioritized_product" },

        -- Users
        { speaker = "qa", expression = "neutral", text = "Accessibility. Error states. Screen readers. The boring critical path. Everything else can wait.", condition = "prioritized_users" },
        { speaker = "qa", expression = "neutral", text = "I'm writing the WCAG 2.1 AA checklist today. Every screen gets audited before it goes to development.", condition = "prioritized_users" },
        { speaker = "ux", expression = "neutral", text = "I'll work from your checklist. Color contrast, focus states, semantic structure.", condition = "prioritized_users" },
        { speaker = "po", expression = "defensive", text = "But the demo--", condition = "prioritized_users" },
        { speaker = "qa", expression = "neutral", text = "Will be over in two weeks. Accessibility issues will be there for years.", condition = "prioritized_users" },
        { speaker = "dev", expression = "neutral", text = "I'm with Riley. Semantic HTML from day one. Proper ARIA labels. No divs pretending to be buttons.", condition = "prioritized_users" },
        { speaker = "qa", expression = "neutral", text = "(A designer and a developer who care about accessibility. I've seen stranger things. But not many.)", condition = "prioritized_users" },
        { speaker = "qa", expression = "neutral", text = "I'll have the manual test plan for screen readers ready by Monday. Automation comes after the patterns stabilize.", condition = "prioritized_users" },

        -- POST-REVIEW: Private reaction
        { bg = "office_day" },

        { speaker = "qa", expression = "deadpan", text = "(Design review duration: seventy-five minutes. Scheduled: forty-five. Edge cases raised: twenty-eight. Edge cases addressed: one.)" },
        { speaker = "qa", expression = "neutral", text = "Back at my desk. I open the testing spreadsheet. The 'Blocked' column grew by six items during the meeting." },
        { speaker = "qa", expression = "neutral", text = "(The 'Automate' column didn't change. Still waiting on stable designs. Still waiting on API contracts. Still waiting.)" },
        { speaker = "qa", expression = "thinking", text = "(But the manual column grew. Accessibility checks. Screen reader paths. Error state validation. These I can start now.)" },
        { speaker = "qa", expression = "neutral", text = "I add a new row to the spreadsheet: 'Gamification -- test strategy TBD.' Because Priya's feature list is coming." },
        { speaker = "qa", expression = "deadpan", text = "(It's always coming. The features arrive like weather. You can prepare but you can't prevent them.)" },
        { speaker = "qa", expression = "neutral", text = "I start drafting the accessibility checklist. Keyboard navigation. Focus order. Color contrast ratios. Alt text. ARIA roles." },
        { speaker = "qa", expression = "neutral", text = "(This is the work nobody applauds. No one demos an accessibility audit. No one puts 'screen reader support' on slide 34.)" },
        { speaker = "qa", expression = "deadpan", text = "(But when it ships and it works for everyone -- that's the slide that matters. Even if nobody sees it.)" },

        { text = "", goto = "day5" }
    }
}
