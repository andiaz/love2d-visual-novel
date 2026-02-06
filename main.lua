local Scene = require("engine.scene")

function love.load()
    love.window.setMode(800, 600)
    love.window.setTitle("Sprint Zero")

    Scene:init()
    Scene:loadScene("day1")
end

function love.update(dt)
    Scene:update(dt)
end

function love.keypressed(key)
    if key == "escape" then
        love.event.quit()
    end
    Scene:keypressed(key)
end

function love.mousepressed(x, y, button)
    Scene:mousepressed(x, y, button)
end

function love.draw()
    local screenWidth, screenHeight = love.graphics.getDimensions()

    -- Draw background
    if Scene.backgroundImages[Scene.backgroundName] then
        local bg = Scene.backgroundImages[Scene.backgroundName]
        local bgScaleX = screenWidth / bg:getWidth()
        local bgScaleY = screenHeight / bg:getHeight()
        love.graphics.setColor(1, 1, 1)
        love.graphics.draw(bg, 0, 0, 0, bgScaleX, bgScaleY)
    end

    local line = Scene:getLine()
    if not line then return end

    -- Draw portrait
    local portraitName = Scene:getPortraitName(line)
    local portrait = Scene:getPortrait(portraitName)
    if portrait then
        love.graphics.setColor(0.8, 0.8, 0.8, 1)
        love.graphics.rectangle("fill", 45, 145, portrait:getWidth() * Scene.charScale + 10, portrait:getHeight() * Scene.charScale + 10)
        love.graphics.setColor(1, 1, 1)
        love.graphics.draw(portrait, 50, 150, 0, Scene.charScale, Scene.charScale)
    end

    -- Textbox
    local textboxHeight = 100
    local textboxY = screenHeight - textboxHeight

    love.graphics.setColor(0, 0, 0, 0.7)
    love.graphics.rectangle("fill", 0, textboxY, screenWidth, textboxHeight)

    -- Speaker name (colored)
    local speakerName = Scene:getSpeakerName(line)
    if speakerName then
        local speakerColor = Scene:getSpeakerColor(line)
        love.graphics.setColor(speakerColor)
        love.graphics.print(speakerName .. ":", 20, textboxY + 10)
    end

    -- Dialogue text
    love.graphics.setColor(1, 1, 1)
    love.graphics.printf(Scene.visibleText, 20, textboxY + 40, screenWidth - 40)

    -- Draw choices if showing
    if Scene.showingChoices and line.choices then
        drawChoices(line.choices, screenWidth, textboxY)
    end

    -- Next prompt
    if not Scene.typing and not Scene.showingChoices and Scene.currentLine < #Scene.current.dialogue then
        love.graphics.setColor(1, 1, 1)
        love.graphics.print(">>", screenWidth - 40, textboxY + 70)
    end
end

function drawChoices(choices, screenWidth, textboxY)
    local choiceBoxWidth = screenWidth - 80
    local choiceHeight = 36
    local choicePadding = 6
    local totalHeight = #choices * (choiceHeight + choicePadding) - choicePadding
    local startY = textboxY - totalHeight - 20
    local startX = 40

    for i, choice in ipairs(choices) do
        local cy = startY + (i - 1) * (choiceHeight + choicePadding)
        local isSelected = (i == Scene.selectedChoice)

        -- Background
        if isSelected then
            love.graphics.setColor(0.3, 0.5, 0.8, 0.9)
        else
            love.graphics.setColor(0.1, 0.1, 0.1, 0.85)
        end
        love.graphics.rectangle("fill", startX, cy, choiceBoxWidth, choiceHeight, 4, 4)

        -- Border
        if isSelected then
            love.graphics.setColor(0.5, 0.7, 1.0, 1)
        else
            love.graphics.setColor(0.4, 0.4, 0.4, 0.8)
        end
        love.graphics.rectangle("line", startX, cy, choiceBoxWidth, choiceHeight, 4, 4)

        -- Text
        love.graphics.setColor(1, 1, 1)
        local prefix = isSelected and "> " or "  "
        love.graphics.print(prefix .. choice.text, startX + 12, cy + 10)
    end
end
