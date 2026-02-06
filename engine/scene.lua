local utf8 = require("utf8")
local State = require("engine.state")
local Characters = require("engine.characters")

local Scene = {
    current = nil,          -- current scene table
    currentLine = 1,
    currentName = "",       -- scene name for require caching

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
    showingChoices = false,
}

function Scene:init()
    self.sfx.click = love.audio.newSource("assets/sfx/click1.ogg", "static")
end

function Scene:loadScene(name)
    -- Clear cached require so scenes can be reloaded
    package.loaded["scenes." .. name] = nil
    self.current = require("scenes." .. name)
    self.currentName = name
    self.currentLine = 1
    self.selectedChoice = 1
    self.showingChoices = false
    self:setLine(self.current.dialogue[self.currentLine])

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
end

function Scene:setLine(line)
    self.visibleText = ""
    self.textTimer = 0
    self.typing = true
    self.selectedChoice = 1
    self.showingChoices = false

    -- Handle instant scene switch (goto with no text)
    if line.goto and (not line.text or line.text == "") then
        -- Check condition on goto lines
        if State:check(line.condition) then
            self:loadScene(line.goto)
            return
        else
            -- Condition failed, skip to next line
            self:advanceLine()
            return
        end
    end

    -- Set background
    if self.current.bg then
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

-- Resolve the portrait image name for a line
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

-- Get display name for a speaker
function Scene:getSpeakerName(line)
    if line.speaker and Characters[line.speaker] then
        local char = Characters[line.speaker]
        return char.name .. " (" .. char.title .. ")"
    end
    return line.speaker
end

-- Get speaker color
function Scene:getSpeakerColor(line)
    if line.speaker and Characters[line.speaker] then
        return Characters[line.speaker].color
    end
    return {1, 1, 1}
end

-- Load and cache a portrait image
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

-- Advance to the next valid line (skipping failed conditions)
function Scene:advanceLine()
    while self.currentLine < #self.current.dialogue do
        self.currentLine = self.currentLine + 1
        local line = self.current.dialogue[self.currentLine]

        -- Check condition
        if State:check(line.condition) then
            self:setLine(line)
            return true
        end
    end

    -- Reached end of dialogue, check last line for goto
    local lastLine = self.current.dialogue[#self.current.dialogue]
    if lastLine.goto and State:check(lastLine.condition) then
        self:loadScene(lastLine.goto)
        return true
    end

    return false
end

-- Select a choice by index
function Scene:selectChoice(index)
    local line = self:getLine()
    if not line or not line.choices then return end

    local choice = line.choices[index]
    if not choice then return end

    -- Apply flags
    if choice.set then
        for key, val in pairs(choice.set) do
            State:set(key, val)
        end
    end

    -- Apply relationship changes
    if choice.rel then
        for who, amount in pairs(choice.rel) do
            State:addRelation(who, amount)
        end
    end

    self.showingChoices = false

    -- If choice has a goto, jump to that scene
    if choice.goto then
        self:loadScene(choice.goto)
        return
    end

    -- Otherwise advance to next line
    self:advanceLine()
end

function Scene:update(dt)
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
        end

        if self.visibleText == line.text then
            self.typing = false
            -- Show choices if this line has them
            if line.choices then
                self.showingChoices = true
            end
        end
    end
end

function Scene:keypressed(key)
    local line = self:getLine()
    if not line then return end

    if self.showingChoices then
        -- Navigate choices
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
                -- Skip to full text
                self.visibleText = line.text
                self.typing = false
                if line.choices then
                    self.showingChoices = true
                end
            else
                -- Advance to next line
                if self.currentLine < #self.current.dialogue then
                    self:advanceLine()
                else
                    -- End of scene
                    if line.goto then
                        self:loadScene(line.goto)
                    end
                end
            end
        end
    end
end

function Scene:mousepressed(x, y, button)
    if button ~= 1 then return end
    if not self.showingChoices then return end

    local line = self:getLine()
    if not line or not line.choices then return end

    local screenWidth, screenHeight = love.graphics.getDimensions()
    local textboxHeight = 100
    local choiceBoxWidth = screenWidth - 80
    local choiceHeight = 36
    local choicePadding = 6
    local totalHeight = #line.choices * (choiceHeight + choicePadding) - choicePadding
    local startY = (screenHeight - textboxHeight) - totalHeight - 20
    local startX = 40

    for i, choice in ipairs(line.choices) do
        local cy = startY + (i - 1) * (choiceHeight + choicePadding)
        if x >= startX and x <= startX + choiceBoxWidth and y >= cy and y <= cy + choiceHeight then
            if self.sfx.click then self.sfx.click:play() end
            self:selectChoice(i)
            return
        end
    end
end

return Scene
