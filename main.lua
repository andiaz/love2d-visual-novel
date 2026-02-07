local Scene = require("engine.scene")
local State = require("engine.state")

local fonts = {}
local gameMode = "menu" -- "menu" or "playing"

-- Menu state
local menuOptions = {}
local menuSelected = 1
local menuHovered = 0

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
        gameMode = "playing"
    else
        startNewGame()
    end
end

function returnToMenu()
    gameMode = "menu"
    -- Stop BGM
    if Scene.currentBGM then
        Scene.currentBGM:stop()
    end
    Scene.currentBGMName = ""
    Scene.current = nil
    Scene.backgroundName = ""
    buildMenuOptions()
end

function love.update(dt)
    if gameMode == "playing" then
        Scene:update(dt)
    end
end

function love.keypressed(key)
    if gameMode == "menu" then
        if key == "escape" then
            love.event.quit()
        elseif key == "up" then
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

    -- Playing mode
    if key == "escape" then
        returnToMenu()
        return
    end
    Scene:keypressed(key)
end

function love.mousepressed(x, y, button)
    if button ~= 1 then return end

    if gameMode == "menu" then
        local screenWidth, screenHeight = love.graphics.getDimensions()
        local optionHeight = 44
        local optionPadding = 8
        local totalHeight = #menuOptions * (optionHeight + optionPadding) - optionPadding
        local startY = screenHeight / 2 + 30
        local optionWidth = 240
        local startX = (screenWidth - optionWidth) / 2

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
        local screenWidth, screenHeight = love.graphics.getDimensions()
        local optionHeight = 44
        local optionPadding = 8
        local startY = screenHeight / 2 + 30
        local optionWidth = 240
        local startX = (screenWidth - optionWidth) / 2

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

    -- Draw portrait
    local portraitName = Scene:getPortraitName(line)
    local portrait = Scene:getPortrait(portraitName)
    if portrait then
        love.graphics.setColor(0.8, 0.8, 0.8, 1)
        love.graphics.rectangle("fill", 45, 115, portrait:getWidth() * Scene.charScale + 10, portrait:getHeight() * Scene.charScale + 10)
        love.graphics.setColor(1, 1, 1)
        love.graphics.draw(portrait, 50, 120, 0, Scene.charScale, Scene.charScale)
    end

    -- Textbox
    local textboxHeight = 150
    local textboxY = screenHeight - textboxHeight

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

    -- Fade overlay (drawn last, on top of everything)
    drawFadeOverlay(screenWidth, screenHeight)
end

function drawMenu(screenWidth, screenHeight)
    -- Dark background
    love.graphics.setColor(0.05, 0.05, 0.1, 1)
    love.graphics.rectangle("fill", 0, 0, screenWidth, screenHeight)

    -- Subtle pattern lines
    love.graphics.setColor(0.1, 0.1, 0.18, 1)
    for i = 0, screenHeight, 30 do
        love.graphics.rectangle("fill", 0, i, screenWidth, 1)
    end

    -- Game title
    love.graphics.setFont(fonts.titleLarge)
    love.graphics.setColor(0.4, 0.7, 1.0, 1)
    local title = "Sprint Zero"
    local titleWidth = fonts.titleLarge:getWidth(title)
    love.graphics.print(title, (screenWidth - titleWidth) / 2, screenHeight / 2 - 120)

    -- Subtitle
    love.graphics.setFont(fonts.titleSub)
    love.graphics.setColor(0.6, 0.65, 0.75, 1)
    local sub = "A Visual Novel About Shipping Software"
    local subWidth = fonts.titleSub:getWidth(sub)
    love.graphics.print(sub, (screenWidth - subWidth) / 2, screenHeight / 2 - 70)

    -- Accent line
    local lineWidth = 200
    love.graphics.setColor(0.4, 0.6, 0.9, 0.4)
    love.graphics.rectangle("fill", (screenWidth - lineWidth) / 2, screenHeight / 2 - 40, lineWidth, 2)

    -- Menu options
    local optionHeight = 44
    local optionPadding = 8
    local optionWidth = 240
    local startY = screenHeight / 2 + 30
    local startX = (screenWidth - optionWidth) / 2

    love.graphics.setFont(fonts.menu)

    for i, option in ipairs(menuOptions) do
        local cy = startY + (i - 1) * (optionHeight + optionPadding)
        local isSelected = (i == menuSelected)
        local isHovered = (i == menuHovered)

        -- Background
        if isSelected or isHovered then
            love.graphics.setColor(0.25, 0.4, 0.7, 0.8)
        else
            love.graphics.setColor(0.12, 0.12, 0.18, 0.8)
        end
        love.graphics.rectangle("fill", startX, cy, optionWidth, optionHeight, 6, 6)

        -- Border
        if isSelected or isHovered then
            love.graphics.setColor(0.5, 0.7, 1.0, 1)
        else
            love.graphics.setColor(0.3, 0.3, 0.4, 0.5)
        end
        love.graphics.rectangle("line", startX, cy, optionWidth, optionHeight, 6, 6)

        -- Text
        love.graphics.setColor(1, 1, 1)
        local label = option.label
        local labelWidth = fonts.menu:getWidth(label)
        love.graphics.print(label, startX + (optionWidth - labelWidth) / 2, cy + 11)
    end

    -- Version / hint
    love.graphics.setFont(fonts.menuSmall)
    love.graphics.setColor(0.4, 0.4, 0.5, 0.6)
    love.graphics.print("ESC to quit", 16, screenHeight - 28)

    -- Pulsing hint
    love.graphics.setColor(0.5, 0.5, 0.6, 0.3 + 0.2 * math.sin(love.timer.getTime() * 2))
    local hint = "Use arrow keys or mouse"
    local hintWidth = fonts.menuSmall:getWidth(hint)
    love.graphics.print(hint, (screenWidth - hintWidth) / 2, screenHeight - 28)
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
        love.graphics.setFont(fonts.speaker)
        love.graphics.setColor(0.9, 0.9, 0.9, Scene.titleCardAlpha)
        love.graphics.printf(Scene.current.narration, 120, screenHeight / 2 + 50, screenWidth - 240, "center")
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

        -- Background
        if isSelected or isHovered then
            love.graphics.setColor(0.3, 0.5, 0.8, 0.9 * alpha)
        else
            love.graphics.setColor(0.1, 0.1, 0.1, 0.85 * alpha)
        end
        love.graphics.rectangle("fill", startX, cy, choiceBoxWidth, choiceHeight, 6, 6)

        -- Border
        if isSelected or isHovered then
            love.graphics.setColor(0.5, 0.7, 1.0, 1 * alpha)
        else
            love.graphics.setColor(0.4, 0.4, 0.4, 0.6 * alpha)
        end
        love.graphics.rectangle("line", startX, cy, choiceBoxWidth, choiceHeight, 6, 6)

        -- Text
        love.graphics.setColor(1, 1, 1, alpha)
        local prefix = (isSelected or isHovered) and "> " or "  "
        love.graphics.print(prefix .. choice.text, startX + 14, cy + 11)
    end
end

function drawFadeOverlay(screenWidth, screenHeight)
    if Scene.fadeAlpha > 0 then
        love.graphics.setColor(0, 0, 0, Scene.fadeAlpha)
        love.graphics.rectangle("fill", 0, 0, screenWidth, screenHeight)
    end
end
