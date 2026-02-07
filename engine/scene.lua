local utf8 = require("utf8")
local State = require("engine.state")
local Characters = require("engine.characters")

local Scene = {
    current = nil,
    currentLine = 1,
    currentName = "",

    -- Text state
    visibleText = "",
    textTimer = 0,
    charInterval = 0.03,
    typing = true,

    -- Background
    backgroundName = "",
    backgroundImages = {},

    -- Portraits
    portraits = {},
    charScale = 0.25,

    -- Audio
    currentBGM = nil,
    currentBGMName = "",
    bgmSources = {},
    sfx = {},

    -- Choice state
    selectedChoice = 1,
    hoveredChoice = 0,
    showingChoices = false,
    choiceAnimTimer = 0,
    choiceAnimDuration = 0.3,

    -- Title card state
    showingTitleCard = false,
    titleCardAlpha = 0,
    titleCardTimer = 0,
    titleCardPhase = "none", -- "fadein", "hold", "fadeout", "none"

    -- Scene transition fade
    fadeAlpha = 0,
    fadePhase = "none", -- "out", "in", "none"
    fadeTimer = 0,
    fadeDuration = 0.4,
    pendingScene = nil,
}

function Scene:init()
    self.sfx.click = love.audio.newSource("assets/sfx/click1.ogg", "static")

    -- Generate a tiny text blip sound procedurally
    local sampleRate = 44100
    local duration = 0.04
    local samples = math.floor(sampleRate * duration)
    local soundData = love.sound.newSoundData(samples, sampleRate, 16, 1)
    for i = 0, samples - 1 do
        local t = i / sampleRate
        local envelope = 1 - (t / duration) -- linear fade out
        local wave = math.sin(2 * math.pi * 600 * t) * envelope * 0.15
        soundData:setSample(i, wave)
    end
    self.sfx.blip = love.audio.newSource(soundData)
    self.sfx.blip:setVolume(0.25)
    self.blipCounter = 0
end

function Scene:loadScene(name)
    -- If no fade is active, start a fade-out then load the scene
    if self.fadePhase == "none" then
        self.pendingScene = name
        self.fadePhase = "out"
        self.fadeTimer = 0
        self.fadeAlpha = 0
        return
    end

    -- Actually load the scene (called after fade-out completes)
    package.loaded["scenes." .. name] = nil
    self.current = require("scenes." .. name)
    self.currentName = name
    self.currentLine = 1
    self.selectedChoice = 1
    self.hoveredChoice = 0
    self.showingChoices = false

    -- Show title card if scene has one
    if self.current.title then
        self.showingTitleCard = true
        self.titleCardAlpha = 0
        self.titleCardTimer = 0
        self.titleCardPhase = "fadein"
    else
        self.showingTitleCard = false
        self.titleCardPhase = "none"
        self:setLine(self.current.dialogue[self.currentLine])
    end

    -- Handle background music
    if self.current.bgm and self.current.bgm ~= self.currentBGMName then
        self.currentBGMName = self.current.bgm

        if self.currentBGM then
            self.currentBGM:stop()
        end

        if not self.bgmSources[self.currentBGMName] then
            self.bgmSources[self.currentBGMName] = love.audio.newSource("assets/bgm/" .. self.currentBGMName .. ".ogg", "stream")
            self.bgmSources[self.currentBGMName]:setLooping(true)
            self.bgmSources[self.currentBGMName]:setVolume(0.4)
        end

        self.currentBGM = self.bgmSources[self.currentBGMName]
        self.currentBGM:play()
    end

    -- Set background early so it shows behind title card
    if self.current.bg then
        self.backgroundName = self.current.bg
        if not self.backgroundImages[self.backgroundName] then
            self.backgroundImages[self.backgroundName] = love.graphics.newImage("assets/bg/" .. self.backgroundName .. ".png")
        end
    end
end

-- Internal: actually load scene after fade
function Scene:_doLoadScene(name)
    self.fadePhase = "none"
    package.loaded["scenes." .. name] = nil
    self.current = require("scenes." .. name)
    self.currentName = name
    self.currentLine = 1
    self.selectedChoice = 1
    self.hoveredChoice = 0
    self.showingChoices = false

    if self.current.bgm and self.current.bgm ~= self.currentBGMName then
        self.currentBGMName = self.current.bgm
        if self.currentBGM then
            self.currentBGM:stop()
        end
        if not self.bgmSources[self.currentBGMName] then
            self.bgmSources[self.currentBGMName] = love.audio.newSource("assets/bgm/" .. self.currentBGMName .. ".ogg", "stream")
            self.bgmSources[self.currentBGMName]:setLooping(true)
            self.bgmSources[self.currentBGMName]:setVolume(0.4)
        end
        self.currentBGM = self.bgmSources[self.currentBGMName]
        self.currentBGM:play()
    end

    if self.current.bg then
        self.backgroundName = self.current.bg
        if not self.backgroundImages[self.backgroundName] then
            self.backgroundImages[self.backgroundName] = love.graphics.newImage("assets/bg/" .. self.backgroundName .. ".png")
        end
    end

    -- Title card: start with delay so background is visible first
    if self.current.title then
        self.showingTitleCard = true
        self.titleCardAlpha = 0
        self.titleCardTimer = 0
        self.titleCardPhase = "delay"
    else
        self.showingTitleCard = false
        self.titleCardPhase = "none"
        self:setLine(self.current.dialogue[self.currentLine])
    end

    -- Auto-save
    State:save(self.currentName, self.currentLine)

    -- Start fade-in
    self.fadePhase = "in"
    self.fadeTimer = 0
    self.fadeAlpha = 1
end

function Scene:loadFromSave()
    local sceneName, sceneLine = State:loadSave()
    if not sceneName then return false end

    -- Load the scene directly (skip fade for resume)
    package.loaded["scenes." .. sceneName] = nil
    self.current = require("scenes." .. sceneName)
    self.currentName = sceneName
    self.currentLine = sceneLine or 1
    self.selectedChoice = 1
    self.hoveredChoice = 0
    self.showingChoices = false
    self.showingTitleCard = false
    self.titleCardPhase = "none"

    -- Load BGM
    if self.current.bgm and self.current.bgm ~= self.currentBGMName then
        self.currentBGMName = self.current.bgm
        if self.currentBGM then self.currentBGM:stop() end
        if not self.bgmSources[self.currentBGMName] then
            self.bgmSources[self.currentBGMName] = love.audio.newSource("assets/bgm/" .. self.currentBGMName .. ".ogg", "stream")
            self.bgmSources[self.currentBGMName]:setLooping(true)
            self.bgmSources[self.currentBGMName]:setVolume(0.4)
        end
        self.currentBGM = self.bgmSources[self.currentBGMName]
        self.currentBGM:play()
    end

    -- Load background
    if self.current.bg then
        self.backgroundName = self.current.bg
        if not self.backgroundImages[self.backgroundName] then
            self.backgroundImages[self.backgroundName] = love.graphics.newImage("assets/bg/" .. self.backgroundName .. ".png")
        end
    end

    -- Set the current line
    local line = self.current.dialogue[self.currentLine]
    if line then
        self:setLine(line)
    end

    return true
end

function Scene:setLine(line)
    self.visibleText = ""
    self.textTimer = 0
    self.typing = true
    self.selectedChoice = 1
    self.hoveredChoice = 0
    self.showingChoices = false

    -- Handle instant scene switch (goto with no text)
    if line.goto and (not line.text or line.text == "") then
        if State:check(line.condition) then
            if line.goto == "$ending" then
                self:loadScene(State:calculateEnding())
            else
                self:loadScene(line.goto)
            end
            return
        else
            self:advanceLine()
            return
        end
    end

    -- Per-line background switching
    if line.bg then
        self.backgroundName = line.bg
        if not self.backgroundImages[self.backgroundName] then
            self.backgroundImages[self.backgroundName] = love.graphics.newImage("assets/bg/" .. self.backgroundName .. ".png")
        end
    elseif self.current.bg then
        self.backgroundName = self.current.bg
        if not self.backgroundImages[self.backgroundName] then
            self.backgroundImages[self.backgroundName] = love.graphics.newImage("assets/bg/" .. self.backgroundName .. ".png")
        end
    end
end

function Scene:getLine()
    if self.current and self.current.dialogue then
        return self.current.dialogue[self.currentLine]
    end
    return nil
end

function Scene:getPortraitName(line)
    if line.image then
        return line.image
    end
    if line.speaker and line.expression then
        return line.speaker .. "_" .. line.expression
    end
    if line.speaker then
        return line.speaker .. "_neutral"
    end
    return nil
end

function Scene:getSpeakerName(line)
    if line.speaker and Characters[line.speaker] then
        local char = Characters[line.speaker]
        return char.name .. " (" .. char.title .. ")"
    end
    return line.speaker
end

function Scene:getSpeakerColor(line)
    if line.speaker and Characters[line.speaker] then
        return Characters[line.speaker].color
    end
    return {1, 1, 1}
end

function Scene:getPortrait(name)
    if not name then return nil end
    if not self.portraits[name] then
        local path = "assets/characters/" .. name .. ".png"
        local ok = love.filesystem.getInfo(path)
        if ok then
            self.portraits[name] = love.graphics.newImage(path)
        end
    end
    return self.portraits[name]
end

function Scene:advanceLine()
    while self.currentLine < #self.current.dialogue do
        self.currentLine = self.currentLine + 1
        local line = self.current.dialogue[self.currentLine]

        if State:check(line.condition) then
            self:setLine(line)
            State:save(self.currentName, self.currentLine)
            return true
        end
    end

    local lastLine = self.current.dialogue[#self.current.dialogue]
    if lastLine.goto and State:check(lastLine.condition) then
        if lastLine.goto == "$ending" then
            self:loadScene(State:calculateEnding())
        else
            self:loadScene(lastLine.goto)
        end
        return true
    end

    return false
end

function Scene:selectChoice(index)
    local line = self:getLine()
    if not line or not line.choices then return end

    local choice = line.choices[index]
    if not choice then return end

    if choice.set then
        for key, val in pairs(choice.set) do
            State:set(key, val)
        end
    end

    if choice.rel then
        for who, amount in pairs(choice.rel) do
            State:addRelation(who, amount)
        end
    end

    self.showingChoices = false

    if choice.goto then
        self:loadScene(choice.goto)
        return
    end

    self:advanceLine()
end

function Scene:update(dt)
    -- Handle fade transitions
    if self.fadePhase == "out" then
        self.fadeTimer = self.fadeTimer + dt
        self.fadeAlpha = math.min(self.fadeTimer / self.fadeDuration, 1)
        if self.fadeAlpha >= 1 then
            -- Fade-out complete, load pending scene
            if self.pendingScene then
                local name = self.pendingScene
                self.pendingScene = nil
                self:_doLoadScene(name)
            end
        end
        return
    elseif self.fadePhase == "in" then
        self.fadeTimer = self.fadeTimer + dt
        self.fadeAlpha = math.max(1 - self.fadeTimer / self.fadeDuration, 0)
        if self.fadeAlpha <= 0 then
            self.fadePhase = "none"
            self.fadeAlpha = 0
        end
        return
    end

    -- Handle title card
    if self.showingTitleCard then
        self.titleCardTimer = self.titleCardTimer + dt
        if self.titleCardPhase == "delay" then
            -- Show background alone for a moment before title text appears
            if self.titleCardTimer >= 0.7 then
                self.titleCardPhase = "fadein"
                self.titleCardTimer = 0
            end
        elseif self.titleCardPhase == "fadein" then
            self.titleCardAlpha = math.min(self.titleCardTimer / 0.5, 1)
            if self.titleCardAlpha >= 1 then
                self.titleCardPhase = "hold"
                self.titleCardTimer = 0
            end
        elseif self.titleCardPhase == "hold" then
            -- Hold until space/click (no auto-advance)

        elseif self.titleCardPhase == "fadeout" then
            self.titleCardAlpha = math.max(1 - self.titleCardTimer / 0.5, 0)
            if self.titleCardAlpha <= 0 then
                self.showingTitleCard = false
                self.titleCardPhase = "none"
                self:setLine(self.current.dialogue[self.currentLine])
            end
        end
        return
    end

    -- Typewriter effect
    if self.typing then
        local line = self:getLine()
        if not line then return end

        self.textTimer = self.textTimer + dt

        local totalChars = utf8.len(line.text) or 0
        local visibleChars = utf8.len(self.visibleText) or 0

        while self.textTimer >= self.charInterval and visibleChars < totalChars do
            visibleChars = visibleChars + 1
            local byteEnd = utf8.offset(line.text, visibleChars + 1)
            if byteEnd then
                self.visibleText = line.text:sub(1, byteEnd - 1)
            else
                self.visibleText = line.text
            end
            self.textTimer = self.textTimer - self.charInterval

            -- Play blip every 2 characters
            self.blipCounter = (self.blipCounter or 0) + 1
            if self.blipCounter % 2 == 0 and self.sfx.blip then
                self.sfx.blip:stop()
                self.sfx.blip:play()
            end
        end

        if self.visibleText == line.text then
            self.typing = false
            if line.choices then
                self.showingChoices = true
                self.choiceAnimTimer = 0
            end
        end
    end

    -- Animate choice appearance
    if self.showingChoices and self.choiceAnimTimer < self.choiceAnimDuration then
        self.choiceAnimTimer = self.choiceAnimTimer + dt
    end
end

function Scene:keypressed(key)
    -- Skip during fades
    if self.fadePhase ~= "none" then return end

    -- Title card: space skips to dialogue
    if self.showingTitleCard then
        if key == "space" or key == "return" then
            self.showingTitleCard = false
            self.titleCardPhase = "none"
            self:setLine(self.current.dialogue[self.currentLine])
        end
        return
    end

    local line = self:getLine()
    if not line then return end

    if self.showingChoices then
        if key == "up" then
            self.selectedChoice = self.selectedChoice - 1
            if self.selectedChoice < 1 then
                self.selectedChoice = #line.choices
            end
        elseif key == "down" then
            self.selectedChoice = self.selectedChoice + 1
            if self.selectedChoice > #line.choices then
                self.selectedChoice = 1
            end
        elseif key == "space" or key == "return" then
            if self.sfx.click then self.sfx.click:play() end
            self:selectChoice(self.selectedChoice)
        end
    else
        if key == "space" then
            if self.sfx.click then self.sfx.click:play() end

            if self.typing then
                self.visibleText = line.text
                self.typing = false
                if line.choices then
                    self.showingChoices = true
                    self.choiceAnimTimer = 0
                end
            else
                if self.currentLine < #self.current.dialogue then
                    self:advanceLine()
                else
                    if line.goto then
                        if line.goto == "$ending" then
                            self:loadScene(State:calculateEnding())
                        else
                            self:loadScene(line.goto)
                        end
                    end
                end
            end
        end
    end
end

function Scene:mousemoved(x, y)
    if not self.showingChoices then
        self.hoveredChoice = 0
        return
    end

    local line = self:getLine()
    if not line or not line.choices then return end

    local screenWidth, screenHeight = love.graphics.getDimensions()
    local textboxHeight = 150
    local choiceBoxWidth = screenWidth - 80
    local choiceHeight = 40
    local choicePadding = 6
    local totalHeight = #line.choices * (choiceHeight + choicePadding) - choicePadding
    local startY = (screenHeight - textboxHeight) - totalHeight - 20
    local startX = 40

    self.hoveredChoice = 0
    for i, _ in ipairs(line.choices) do
        local cy = startY + (i - 1) * (choiceHeight + choicePadding)
        if x >= startX and x <= startX + choiceBoxWidth and y >= cy and y <= cy + choiceHeight then
            self.hoveredChoice = i
            return
        end
    end
end

function Scene:mousepressed(x, y, button)
    if button ~= 1 then return end
    if self.fadePhase ~= "none" then return end

    -- Click through title card
    if self.showingTitleCard then
        self.showingTitleCard = false
        self.titleCardPhase = "none"
        self:setLine(self.current.dialogue[self.currentLine])
        return
    end

    if not self.showingChoices then return end

    local line = self:getLine()
    if not line or not line.choices then return end

    local screenWidth, screenHeight = love.graphics.getDimensions()
    local textboxHeight = 150
    local choiceBoxWidth = screenWidth - 80
    local choiceHeight = 40
    local choicePadding = 6
    local totalHeight = #line.choices * (choiceHeight + choicePadding) - choicePadding
    local startY = (screenHeight - textboxHeight) - totalHeight - 20
    local startX = 40

    for i, _ in ipairs(line.choices) do
        local cy = startY + (i - 1) * (choiceHeight + choicePadding)
        if x >= startX and x <= startX + choiceBoxWidth and y >= cy and y <= cy + choiceHeight then
            if self.sfx.click then self.sfx.click:play() end
            self:selectChoice(i)
            return
        end
    end
end

return Scene
