local Scene = require("engine.scene")
local State = require("engine.state")

local fonts = {}
local gameMode = "menu" -- "menu", "playing", "resume"

-- Menu state
local menuOptions = {}
local menuSelected = 1
local menuHovered = 0

-- Resume card state (shown when loading a save)
local resumeScene = nil

-- "Progress saved" notice timer (shown after returning from gameplay)
local savedNoticeTimer = 0

-- Title screen background
local titleBG = nil

-- Menu transition fade
local menuFadeAlpha = 0
local menuFadePhase = "none" -- "out" (darken to black), "in" (reveal menu)
local menuFadeTimer = 0
local menuFadeDuration = 0.4

function love.load()
    love.window.setTitle("Sprint Zero")

    -- Load fonts at different sizes
    fonts.dialogue = love.graphics.newFont(16)
    fonts.speaker = love.graphics.newFont(14)
    fonts.choice = love.graphics.newFont(15)
    fonts.titleLarge = love.graphics.newFont(36)
    fonts.titleSub = love.graphics.newFont(18)
    fonts.prompt = love.graphics.newFont(14)
    fonts.menu = love.graphics.newFont(20)
    fonts.menuSmall = love.graphics.newFont(13)

    Scene:init()
    buildMenuOptions()

    -- Load title screen background
    if love.filesystem.getInfo("assets/bg/title_screen.png") then
        titleBG = love.graphics.newImage("assets/bg/title_screen.png")
    end

    -- Start title screen music
    Scene:crossfadeBGM("Sprint Screen Serenade")
end

function buildMenuOptions()
    menuOptions = {}
    table.insert(menuOptions, { label = "New Game", action = "new" })
    if State:hasSave() then
        table.insert(menuOptions, { label = "Continue", action = "continue" })
    end
    table.insert(menuOptions, { label = "Quit", action = "quit" })
    menuSelected = State:hasSave() and 2 or 1
    menuHovered = 0
end

function startNewGame()
    State:reset()
    State:deleteSave()
    gameMode = "playing"
    Scene:loadScene("day1")
end

function continueGame()
    local ok = Scene:loadFromSave()
    if ok then
        -- Show resume recap card before gameplay
        resumeScene = Scene.current
        gameMode = "resume"
    else
        startNewGame()
    end
end

function returnToMenu()
    -- Start fade-out, then switch to menu when black
    menuFadePhase = "out"
    menuFadeTimer = 0
    menuFadeAlpha = 0
end

function _completeReturnToMenu()
    gameMode = "menu"
    savedNoticeTimer = 3.0
    Scene:crossfadeBGM("Sprint Screen Serenade")
    Scene.current = nil
    Scene.backgroundName = ""
    buildMenuOptions()
    -- Now fade back in to reveal menu
    menuFadePhase = "in"
    menuFadeTimer = 0
    menuFadeAlpha = 1
end

function love.update(dt)
    -- Always update BGM crossfade (for menu/resume music transitions)
    Scene:updateBGMFade(dt)

    -- Update menu transition fade
    if menuFadePhase == "out" then
        menuFadeTimer = menuFadeTimer + dt
        menuFadeAlpha = math.min(menuFadeTimer / menuFadeDuration, 1)
        if menuFadeAlpha >= 1 then
            _completeReturnToMenu()
        end
    elseif menuFadePhase == "in" then
        menuFadeTimer = menuFadeTimer + dt
        menuFadeAlpha = math.max(1 - menuFadeTimer / menuFadeDuration, 0)
        if menuFadeAlpha <= 0 then
            menuFadePhase = "none"
            menuFadeAlpha = 0
        end
    end

    if gameMode == "menu" and savedNoticeTimer > 0 then
        savedNoticeTimer = savedNoticeTimer - dt
    end
    if gameMode == "playing" then
        Scene:update(dt)
        -- Check if scene wants to return to menu (ending finished)
        if Scene.pendingMenu then
            Scene.pendingMenu = false
            State:deleteSave()
            returnToMenu()
        end
    end
end

function love.keypressed(key)
    -- Block input during menu fade transition
    if menuFadePhase ~= "none" then return end

    if gameMode == "menu" then
        if key == "up" then
            menuSelected = menuSelected - 1
            if menuSelected < 1 then menuSelected = #menuOptions end
        elseif key == "down" then
            menuSelected = menuSelected + 1
            if menuSelected > #menuOptions then menuSelected = 1 end
        elseif key == "space" or key == "return" then
            selectMenuOption(menuOptions[menuSelected].action)
        end
        return
    end

    -- Resume card mode
    if gameMode == "resume" then
        if key == "space" or key == "return" then
            gameMode = "playing"
            resumeScene = nil
        elseif key == "escape" then
            resumeScene = nil
            returnToMenu()
        end
        return
    end

    -- Playing mode
    if key == "escape" then
        returnToMenu()
        return
    end
    Scene:keypressed(key)
end

function love.mousepressed(x, y, button)
    if button ~= 1 then return end
    if menuFadePhase ~= "none" then return end

    if gameMode == "resume" then
        gameMode = "playing"
        resumeScene = nil
        return
    end

    if gameMode == "menu" then
        local startX, startY, optionWidth, optionHeight, optionPadding = getMenuLayout()

        for i, _ in ipairs(menuOptions) do
            local cy = startY + (i - 1) * (optionHeight + optionPadding)
            if x >= startX and x <= startX + optionWidth and y >= cy and y <= cy + optionHeight then
                selectMenuOption(menuOptions[i].action)
                return
            end
        end
        return
    end

    Scene:mousepressed(x, y, button)
end

function love.mousemoved(x, y)
    if gameMode == "menu" then
        local startX, startY, optionWidth, optionHeight, optionPadding = getMenuLayout()

        menuHovered = 0
        for i, _ in ipairs(menuOptions) do
            local cy = startY + (i - 1) * (optionHeight + optionPadding)
            if x >= startX and x <= startX + optionWidth and y >= cy and y <= cy + optionHeight then
                menuHovered = i
                return
            end
        end
        return
    end

    Scene:mousemoved(x, y)
end

function getMenuLayout()
    local screenWidth, screenHeight = love.graphics.getDimensions()
    local panelY = screenHeight * 0.15
    local titleY = panelY + 14
    local subY = titleY + 52
    local lineY = subY + 36
    local optionHeight = 44
    local optionPadding = 10
    local optionWidth = 240
    local startY = lineY + 28
    local startX = (screenWidth - optionWidth) / 2
    return startX, startY, optionWidth, optionHeight, optionPadding
end

function selectMenuOption(action)
    if action == "new" then
        startNewGame()
    elseif action == "continue" then
        continueGame()
    elseif action == "quit" then
        love.event.quit()
    end
end

function love.draw()
    local screenWidth, screenHeight = love.graphics.getDimensions()

    if gameMode == "menu" then
        drawMenu(screenWidth, screenHeight)
        -- Menu transition fade overlay
        if menuFadeAlpha > 0 then
            love.graphics.setColor(0, 0, 0, menuFadeAlpha)
            love.graphics.rectangle("fill", 0, 0, screenWidth, screenHeight)
        end
        return
    end

    if gameMode == "resume" then
        drawResumeCard(screenWidth, screenHeight)
        return
    end

    -- Draw background
    if Scene.backgroundImages[Scene.backgroundName] then
        local bg = Scene.backgroundImages[Scene.backgroundName]
        local bgScaleX = screenWidth / bg:getWidth()
        local bgScaleY = screenHeight / bg:getHeight()
        love.graphics.setColor(1, 1, 1)
        love.graphics.draw(bg, 0, 0, 0, bgScaleX, bgScaleY)
    end

    -- Title card overlay
    if Scene.showingTitleCard and Scene.current then
        drawTitleCard(screenWidth, screenHeight)
        drawFadeOverlay(screenWidth, screenHeight)
        return
    end

    local line = Scene:getLine()
    if not line then
        drawFadeOverlay(screenWidth, screenHeight)
        return
    end

    -- Textbox
    local textboxHeight = 150
    local textboxY = screenHeight - textboxHeight

    -- Draw portrait (scaled to fit available space, bottom-aligned above textbox)
    local portraitName = Scene:getPortraitName(line)
    local portrait = Scene:getPortrait(portraitName)
    if portrait then
        local targetHeight = textboxY - 20
        local pScale = targetHeight / portrait:getHeight()
        local pWidth = portrait:getWidth() * pScale
        local pHeight = targetHeight
        local pX = 20
        local pY = textboxY - pHeight - 5
        local pad = 4
        -- Drop shadow
        love.graphics.setColor(0, 0, 0, 0.3)
        love.graphics.rectangle("fill", pX - pad + 3, pY - pad + 3, pWidth + pad * 2, pHeight + pad * 2, 6, 6)
        -- Dark border frame
        love.graphics.setColor(0.12, 0.12, 0.16, 0.85)
        love.graphics.rectangle("fill", pX - pad, pY - pad, pWidth + pad * 2, pHeight + pad * 2, 6, 6)
        -- Portrait
        love.graphics.setColor(1, 1, 1)
        love.graphics.draw(portrait, pX, pY, 0, pScale, pScale)
        -- Thin border line
        love.graphics.setColor(0.4, 0.4, 0.5, 0.5)
        love.graphics.rectangle("line", pX - pad, pY - pad, pWidth + pad * 2, pHeight + pad * 2, 6, 6)
    end

    -- Textbox background with gradient feel
    love.graphics.setColor(0, 0, 0, 0.8)
    love.graphics.rectangle("fill", 0, textboxY, screenWidth, textboxHeight)

    -- Thin accent line at top of textbox
    love.graphics.setColor(0.4, 0.6, 0.9, 0.6)
    love.graphics.rectangle("fill", 0, textboxY, screenWidth, 2)

    -- Speaker name (colored, with font)
    local speakerName = Scene:getSpeakerName(line)
    if speakerName then
        local speakerColor = Scene:getSpeakerColor(line)
        love.graphics.setFont(fonts.speaker)
        love.graphics.setColor(speakerColor)
        love.graphics.print(speakerName, 24, textboxY + 12)
    end

    -- Dialogue text
    love.graphics.setFont(fonts.dialogue)
    love.graphics.setColor(1, 1, 1)
    local textY = speakerName and (textboxY + 34) or (textboxY + 16)
    love.graphics.printf(Scene.visibleText, 24, textY, screenWidth - 48)

    -- Draw choices if showing
    if Scene.showingChoices and line.choices then
        drawChoices(line.choices, screenWidth, textboxY)
    end

    -- Next prompt (animated)
    if not Scene.typing and not Scene.showingChoices and Scene.currentLine < #Scene.current.dialogue then
        love.graphics.setFont(fonts.prompt)
        love.graphics.setColor(1, 1, 1, 0.5 + 0.5 * math.sin(love.timer.getTime() * 3))
        love.graphics.print(">>>", screenWidth - 50, textboxY + textboxHeight - 24)
    end

    -- Controls hint (top-right, subtle)
    love.graphics.setFont(fonts.menuSmall)
    love.graphics.setColor(0.6, 0.6, 0.7, 0.3)
    local controlHint = "SPACE = Advance | ESC = Menu"
    local chWidth = fonts.menuSmall:getWidth(controlHint)
    love.graphics.print(controlHint, screenWidth - chWidth - 10, 6)

    -- Fade overlay (drawn last, on top of everything)
    drawFadeOverlay(screenWidth, screenHeight)

    -- Menu transition fade overlay (on top of scene fade)
    if menuFadeAlpha > 0 then
        love.graphics.setColor(0, 0, 0, menuFadeAlpha)
        love.graphics.rectangle("fill", 0, 0, screenWidth, screenHeight)
    end
end

function drawMenu(screenWidth, screenHeight)
    -- Background image or fallback solid color
    if titleBG then
        local bgScaleX = screenWidth / titleBG:getWidth()
        local bgScaleY = screenHeight / titleBG:getHeight()
        love.graphics.setColor(1, 1, 1)
        love.graphics.draw(titleBG, 0, 0, 0, bgScaleX, bgScaleY)

        -- Gradient overlay: light at top, dark at bottom
        local gradientSteps = 32
        local stepHeight = screenHeight / gradientSteps
        for i = 0, gradientSteps - 1 do
            local t = i / (gradientSteps - 1) -- 0 at top, 1 at bottom
            local alpha = 0.15 + t * 0.7       -- 0.15 -> 0.85
            love.graphics.setColor(0.02, 0.02, 0.08, alpha)
            love.graphics.rectangle("fill", 0, i * stepHeight, screenWidth, stepHeight + 1)
        end
    else
        love.graphics.setColor(0.05, 0.05, 0.1, 1)
        love.graphics.rectangle("fill", 0, 0, screenWidth, screenHeight)
    end

    -- Title backdrop panel (dark rounded box behind title area)
    local panelWidth = 520
    local panelX = (screenWidth - panelWidth) / 2
    local panelY = screenHeight * 0.15
    local panelHeight = 115
    love.graphics.setColor(0, 0, 0, 0.55)
    love.graphics.rectangle("fill", panelX, panelY, panelWidth, panelHeight, 12, 12)

    -- Game title (with drop shadow) — cobalt/gold scheme
    love.graphics.setFont(fonts.titleLarge)
    local title = "Sprint Zero"
    local titleWidth = fonts.titleLarge:getWidth(title)
    local titleX = (screenWidth - titleWidth) / 2
    local titleY = panelY + 14
    -- Shadow
    love.graphics.setColor(0, 0, 0, 0.7)
    love.graphics.print(title, titleX + 2, titleY + 2)
    -- Main text — gold (#DEB841)
    love.graphics.setColor(0.87, 0.72, 0.25, 1)
    love.graphics.print(title, titleX, titleY)

    -- Subtitle (with drop shadow)
    love.graphics.setFont(fonts.titleSub)
    local sub = "A Visual Novel About Shipping Software"
    local subWidth = fonts.titleSub:getWidth(sub)
    local subX = (screenWidth - subWidth) / 2
    local subY = titleY + 52
    love.graphics.setColor(0, 0, 0, 0.6)
    love.graphics.print(sub, subX + 1, subY + 1)
    -- White (#FBFFFE)
    love.graphics.setColor(0.98, 1.0, 1.0, 0.9)
    love.graphics.print(sub, subX, subY)

    -- Accent line — gold
    local lineWidth = 220
    local lineY = subY + 36
    love.graphics.setColor(0.87, 0.72, 0.25, 0.15)
    love.graphics.rectangle("fill", (screenWidth - lineWidth - 8) / 2, lineY - 2, lineWidth + 8, 6, 3, 3)
    love.graphics.setColor(0.87, 0.72, 0.25, 0.6)
    love.graphics.rectangle("fill", (screenWidth - lineWidth) / 2, lineY, lineWidth, 2)

    -- Menu options
    local startX, startY, optionWidth, optionHeight, optionPadding = getMenuLayout()

    love.graphics.setFont(fonts.menu)

    -- Subtle pulse for selected button (slow breathing glow)
    local pulse = 0.08 * math.sin(love.timer.getTime() * 2.5)

    for i, option in ipairs(menuOptions) do
        local cy = startY + (i - 1) * (optionHeight + optionPadding)
        local isSelected = (i == menuSelected)
        local isHovered = (i == menuHovered)
        local isActive = isSelected or isHovered

        -- Button shadow
        love.graphics.setColor(0, 0, 0, 0.35)
        love.graphics.rectangle("fill", startX + 2, cy + 2, optionWidth, optionHeight, 8, 8)

        -- Button background — cobalt blue (#0047AB) when active, with pulse
        if isActive then
            love.graphics.setColor(0.0 + pulse, 0.28 + pulse, 0.67 + pulse, 0.95)
        else
            love.graphics.setColor(0.04, 0.04, 0.1, 0.88)
        end
        love.graphics.rectangle("fill", startX, cy, optionWidth, optionHeight, 8, 8)

        -- Button border — gold when active, with pulse on alpha
        if isActive then
            love.graphics.setColor(0.87, 0.72, 0.25, 0.7 + pulse * 3)
        else
            love.graphics.setColor(0.4, 0.38, 0.32, 0.4)
        end
        love.graphics.rectangle("line", startX, cy, optionWidth, optionHeight, 8, 8)

        -- Button text — white (#FBFFFE)
        local label = option.label
        local labelWidth = fonts.menu:getWidth(label)
        local labelX = startX + (optionWidth - labelWidth) / 2
        local labelY = cy + 11
        love.graphics.setColor(0, 0, 0, 0.5)
        love.graphics.print(label, labelX + 1, labelY + 1)
        love.graphics.setColor(0.98, 1.0, 1.0, 1)
        love.graphics.print(label, labelX, labelY)
    end

    -- "Progress saved" notice below menu options (fades out over 3 seconds)
    if savedNoticeTimer > 0 then
        local noticeAlpha = math.min(savedNoticeTimer / 1.0, 1)
        local noticeY = startY + #menuOptions * (optionHeight + optionPadding) + 8
        love.graphics.setFont(fonts.prompt)
        love.graphics.setColor(0.4, 0.85, 0.4, 0.9 * noticeAlpha)
        local notice = "Progress saved"
        local noticeWidth = fonts.prompt:getWidth(notice)
        love.graphics.print(notice, (screenWidth - noticeWidth) / 2, noticeY)
    end

    -- Bottom bar (dark strip for readability)
    love.graphics.setColor(0, 0, 0, 0.4)
    love.graphics.rectangle("fill", 0, screenHeight - 36, screenWidth, 36)

    love.graphics.setFont(fonts.menuSmall)

    -- Auto-save notice (left)
    love.graphics.setColor(0, 0, 0, 0.6)
    love.graphics.print("Game saves automatically", 17, screenHeight - 25)
    love.graphics.setColor(0.78, 0.78, 0.72, 0.7)
    love.graphics.print("Game saves automatically", 16, screenHeight - 26)

    -- Navigation hint (right)
    local navHint = "Arrow keys or mouse to navigate"
    local navWidth = fonts.menuSmall:getWidth(navHint)
    love.graphics.setColor(0, 0, 0, 0.6)
    love.graphics.print(navHint, screenWidth - navWidth - 15, screenHeight - 25)
    love.graphics.setColor(0.78, 0.78, 0.72, 0.7)
    love.graphics.print(navHint, screenWidth - navWidth - 16, screenHeight - 26)
end

function drawResumeCard(screenWidth, screenHeight)
    -- Dark background
    love.graphics.setColor(0.05, 0.05, 0.1, 1)
    love.graphics.rectangle("fill", 0, 0, screenWidth, screenHeight)

    -- Subtle pattern lines
    love.graphics.setColor(0.1, 0.1, 0.18, 1)
    for i = 0, screenHeight, 30 do
        love.graphics.rectangle("fill", 0, i, screenWidth, 1)
    end

    -- "Resuming..." header
    love.graphics.setFont(fonts.titleSub)
    love.graphics.setColor(0.4, 0.6, 0.9, 0.7)
    local header = "Resuming..."
    local headerWidth = fonts.titleSub:getWidth(header)
    love.graphics.print(header, (screenWidth - headerWidth) / 2, screenHeight / 2 - 100)

    if resumeScene then
        -- Day title
        if resumeScene.title then
            love.graphics.setFont(fonts.titleLarge)
            love.graphics.setColor(1, 1, 1, 1)
            local title = resumeScene.title
            local titleWidth = fonts.titleLarge:getWidth(title)
            love.graphics.print(title, (screenWidth - titleWidth) / 2, screenHeight / 2 - 60)
        end

        -- Subtitle
        if resumeScene.subtitle then
            love.graphics.setFont(fonts.titleSub)
            love.graphics.setColor(0.85, 0.9, 1.0, 1)
            local sub = resumeScene.subtitle
            local subWidth = fonts.titleSub:getWidth(sub)
            love.graphics.print(sub, (screenWidth - subWidth) / 2, screenHeight / 2 - 10)
        end

        -- Narration as recap
        if resumeScene.narration then
            love.graphics.setFont(fonts.dialogue)
            love.graphics.setColor(0.9, 0.9, 0.9, 0.9)
            love.graphics.printf(resumeScene.narration, 100, screenHeight / 2 + 30, screenWidth - 200, "center")
        end

        -- If no title (e.g. ending scene), show scene name
        if not resumeScene.title then
            love.graphics.setFont(fonts.titleLarge)
            love.graphics.setColor(1, 1, 1, 1)
            local name = Scene.currentName or "Unknown"
            -- Format scene name nicely: "ending_ship" -> "Ending: Ship"
            name = name:gsub("_", " "):gsub("(%a)([%w]*)", function(a, b) return a:upper() .. b end)
            name = name:gsub("Ending ", "Ending: ")
            local nameWidth = fonts.titleLarge:getWidth(name)
            love.graphics.print(name, (screenWidth - nameWidth) / 2, screenHeight / 2 - 40)
        end
    end

    -- "Press space" hint
    love.graphics.setFont(fonts.prompt)
    love.graphics.setColor(1, 1, 1, 0.3 + 0.3 * math.sin(love.timer.getTime() * 2))
    local hint = "Press SPACE to continue"
    local hintWidth = fonts.prompt:getWidth(hint)
    love.graphics.print(hint, (screenWidth - hintWidth) / 2, screenHeight - 60)
end

function drawTitleCard(screenWidth, screenHeight)
    -- Dark overlay
    love.graphics.setColor(0, 0, 0, 0.85 * Scene.titleCardAlpha)
    love.graphics.rectangle("fill", 0, 0, screenWidth, screenHeight)

    -- Title text
    love.graphics.setFont(fonts.titleLarge)
    love.graphics.setColor(1, 1, 1, Scene.titleCardAlpha)
    local title = Scene.current.title or ""
    local titleWidth = fonts.titleLarge:getWidth(title)
    love.graphics.print(title, (screenWidth - titleWidth) / 2, screenHeight / 2 - 40)

    -- Subtitle
    if Scene.current.subtitle then
        love.graphics.setFont(fonts.titleSub)
        love.graphics.setColor(0.85, 0.9, 1.0, Scene.titleCardAlpha)
        local sub = Scene.current.subtitle
        local subWidth = fonts.titleSub:getWidth(sub)
        love.graphics.print(sub, (screenWidth - subWidth) / 2, screenHeight / 2 + 10)
    end

    -- Narration text (recap/setup)
    if Scene.current.narration then
        love.graphics.setFont(fonts.dialogue)
        love.graphics.setColor(0.9, 0.9, 0.9, Scene.titleCardAlpha)
        love.graphics.printf(Scene.current.narration, 100, screenHeight / 2 + 50, screenWidth - 200, "center")
    end

    -- "Press space" hint
    love.graphics.setFont(fonts.prompt)
    love.graphics.setColor(1, 1, 1, Scene.titleCardAlpha * (0.3 + 0.3 * math.sin(love.timer.getTime() * 2)))
    local hint = "Press SPACE to continue"
    local hintWidth = fonts.prompt:getWidth(hint)
    love.graphics.print(hint, (screenWidth - hintWidth) / 2, screenHeight - 60)
end

function drawChoices(choices, screenWidth, textboxY)
    local choiceBoxWidth = screenWidth - 80
    local choiceHeight = 40
    local choicePadding = 6
    local totalHeight = #choices * (choiceHeight + choicePadding) - choicePadding
    local startY = textboxY - totalHeight - 20
    local startX = 40

    -- Animation progress (0 to 1, ease-out)
    local animProgress = math.min(Scene.choiceAnimTimer / Scene.choiceAnimDuration, 1)
    local ease = 1 - (1 - animProgress) * (1 - animProgress) -- ease-out quad

    love.graphics.setFont(fonts.choice)

    for i, choice in ipairs(choices) do
        -- Stagger each choice slightly
        local stagger = (i - 1) * 0.08
        local itemProgress = math.max(0, math.min((animProgress - stagger) / (1 - stagger * (#choices - 1) / #choices), 1))
        local itemEase = 1 - (1 - itemProgress) * (1 - itemProgress)

        local slideOffset = (1 - itemEase) * 20
        local alpha = itemEase

        local cy = startY + (i - 1) * (choiceHeight + choicePadding) + slideOffset
        local isSelected = (i == Scene.selectedChoice)
        local isHovered = (i == Scene.hoveredChoice)

        -- Background — cobalt blue (#0047AB) when selected, dark when not
        if isSelected or isHovered then
            love.graphics.setColor(0.0, 0.28, 0.67, 0.92 * alpha)
        else
            love.graphics.setColor(0.04, 0.04, 0.1, 0.88 * alpha)
        end
        love.graphics.rectangle("fill", startX, cy, choiceBoxWidth, choiceHeight, 6, 6)

        -- Border — gold (#DEB841) when selected, subtle when not
        if isSelected or isHovered then
            love.graphics.setColor(0.87, 0.72, 0.25, 0.9 * alpha)
        else
            love.graphics.setColor(0.4, 0.38, 0.32, 0.4 * alpha)
        end
        love.graphics.rectangle("line", startX, cy, choiceBoxWidth, choiceHeight, 6, 6)

        -- Text — white (#FBFFFE), gold prefix when selected
        if isSelected or isHovered then
            love.graphics.setColor(0.87, 0.72, 0.25, alpha)
            love.graphics.print("> ", startX + 14, cy + 11)
            love.graphics.setColor(0.98, 1.0, 1.0, alpha)
            love.graphics.print("  " .. choice.text, startX + 14, cy + 11)
        else
            love.graphics.setColor(0.82, 0.82, 0.82, alpha)
            love.graphics.print("  " .. choice.text, startX + 14, cy + 11)
        end
    end
end

function drawFadeOverlay(screenWidth, screenHeight)
    if Scene.fadeAlpha > 0 then
        love.graphics.setColor(0, 0, 0, Scene.fadeAlpha)
        love.graphics.rectangle("fill", 0, 0, screenWidth, screenHeight)
    end
end
