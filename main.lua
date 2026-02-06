local scene

local currentBGM = nil
local currentBGMName = ""
local bgmSources = {}

local sfx = {}

local currentLine = 1
local visibleText = ""
local textTimer = 0
local charInterval = 0.03
local typing = true

local backgroundName = ""
local backgroundImages = {} -- cache for bg images
local bgScaleX, bgScaleY

local portraits = {} -- loaded portrait images by name
local charScale

function loadScene(name)
    scene = require("scenes." .. name)
    currentLine = 1
    setLine(scene.dialogue[currentLine])

    -- Handle background music
    if scene.bgm and scene.bgm ~= currentBGMName then
        currentBGMName = scene.bgm

        -- stop old music
        if currentBGM then
            currentBGM:stop()
        end

        --load or reuse music source
        if not bgmSources[currentBGMName] then
            bgmSources[currentBGMName] = love.audio.newSource("assets/bgm/" .. currentBGMName .. ".ogg", "stream")
            bgmSources[currentBGMName]:setLooping(true)
            bgmSources[currentBGMName]:setVolume(0.4) -- softer default volume
        end

        currentBGM = bgmSources[currentBGMName]
        currentBGM:play()
    end
end

function love.load()
    love.window.setMode(800, 600)
    love.window.setTitle("Love2D Visual Novel")

    charScale = 0.25

    sfx.click = love.audio.newSource("assets/sfx/click1.ogg", "static")

    loadScene("day1")
end

function setLine(line)
    visibleText = ""
    textTimer = 0
    typing = true

    -- Handle instant scene switch if there's a goto line
    if line.goto and (not line.text or line.text == "") then
        loadScene(line.goto)
        return
    end

    -- Set background if defined at scene level (only once)
    if scene.bg then
        backgroundName = scene.bg

        if not backgroundImages[backgroundName] then
            backgroundImages[backgroundName] = love.graphics.newImage("assets/bg/" .. backgroundName .. ".png")
        end
    end
end

function love.update(dt)
    if typing then
        local line = scene.dialogue[currentLine]
        textTimer = textTimer + dt

        -- Add one character at a time
        while textTimer >= charInterval and #visibleText < #line.text do
            local nextChar = line.text:sub(#visibleText + 1, #visibleText + 1)
            visibleText = visibleText .. nextChar
            textTimer = textTimer - charInterval
        end

        -- Done typing
        if visibleText == line.text then
            typing = false
        end
    end
end

function love.keypressed(key)
    if key == "space" then
        if sfx.click then sfx.click:play() end
        
        local line = scene.dialogue[currentLine]
        if typing then
            -- Skip to the full line
            visibleText = line.text
            typing = false
        else
            -- Go to next line
            if (currentLine < #scene.dialogue) then
                currentLine = currentLine + 1
                setLine(scene.dialogue[currentLine])
            else
                -- End of scene, check if there's a goto
                local lastLine = scene.dialogue[currentLine]
                if lastLine.goto then
                    loadScene(lastLine.goto)
                end
            end
        end
    end
    if key == "escape" then
        love.event.quit()
    end
end

function love.draw()
    -- Get window size
    local screenWidth, screenHeight = love.graphics.getDimensions()

    -- Load background based on scene and scaled to fit screen
    if backgroundImages[backgroundName] then
        local bg = backgroundImages[backgroundName]
        bgScaleX = 800 / bg:getWidth()
        bgScaleY = 600 / bg:getHeight()
        love.graphics.setColor(1, 1, 1)
        love.graphics.draw(bg, 0, 0, 0, bgScaleX, bgScaleY)
    end

    -- textbox height
    local textboxHeight = 100
    local textboxY = screenHeight - textboxHeight

    -- Draw textbox
    love.graphics.setColor(0, 0, 0, 0.7)
    love.graphics.rectangle("fill", 0, textboxY, screenWidth, textboxHeight)

    -- Reset the color for text
    love.graphics.setColor(1, 1, 1)

    -- Get the current dialogue line
    local line = scene.dialogue[currentLine]

    -- Draw portrait if image is defined
    if line.image then
        -- load portrait if not already loaded
        if not portraits[line.image] then
            portraits[line.image] = love.graphics.newImage("assets/characters/" .. line.image .. ".png")
        end
        
        local portrait = portraits[line.image]

        -- Draw border rectangle around portrait
        love.graphics.setColor(0.8, 0.8, 0.8, 1)
        love.graphics.rectangle("fill", 45, 145, portrait:getWidth() * charScale + 10, portrait:getHeight() * charScale + 10)

        -- Draw character portrait (scaled)
        love.graphics.setColor(1, 1, 1)
        love.graphics.draw(portrait, 50, 150, 0, charScale, charScale)

    end
    -- Draw speaker text
    if line.speaker then
        love.graphics.print(line.speaker .. ":", 20, textboxY + 10)
    end

    love.graphics.printf(visibleText, 20, textboxY + 40, screenWidth - 40)

    -- Show next prompt if ready
    if not typing and currentLine < #scene.dialogue then
        love.graphics.print(">>", screenWidth-40, textboxY + 70)
    end
end