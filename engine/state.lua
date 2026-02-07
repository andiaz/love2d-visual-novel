local State = {
    flags = {},
    relationships = {},
    day = 1
}

function State:set(key, val)
    if val == nil then val = true end
    self.flags[key] = val
end

function State:get(key)
    return self.flags[key]
end

function State:check(condition)
    if condition == nil then
        return true
    end
    if type(condition) == "string" then
        return self.flags[condition] == true
    end
    if type(condition) == "table" then
        for key, val in pairs(condition) do
            if self.flags[key] ~= val then
                return false
            end
        end
        return true
    end
    return true
end

function State:addRelation(who, amount)
    self.relationships[who] = (self.relationships[who] or 0) + amount
end

function State:getRelation(who)
    return self.relationships[who] or 0
end

function State:reset()
    self.flags = {}
    self.relationships = {}
    self.day = 1
end

function State:totalRelationship()
    local total = 0
    for _, score in pairs(self.relationships) do
        total = total + score
    end
    return total
end

function State:highestRelationship()
    local best, bestScore = nil, -999
    for who, score in pairs(self.relationships) do
        if score > bestScore then
            best = who
            bestScore = score
        end
    end
    return best, bestScore
end

function State:countFlags(flagList)
    local count = 0
    for _, flag in ipairs(flagList) do
        if self.flags[flag] then
            count = count + 1
        end
    end
    return count
end

-- Simple table serializer (handles strings, numbers, booleans, flat tables)
local function serialize(val, indent)
    indent = indent or ""
    local t = type(val)
    if t == "string" then
        return string.format("%q", val)
    elseif t == "number" or t == "boolean" then
        return tostring(val)
    elseif t == "table" then
        local parts = {}
        local nextIndent = indent .. "  "
        table.insert(parts, "{\n")
        for k, v in pairs(val) do
            local keyStr
            if type(k) == "string" then
                keyStr = "[" .. string.format("%q", k) .. "]"
            else
                keyStr = "[" .. tostring(k) .. "]"
            end
            table.insert(parts, nextIndent .. keyStr .. " = " .. serialize(v, nextIndent) .. ",\n")
        end
        table.insert(parts, indent .. "}")
        return table.concat(parts)
    end
    return "nil"
end

function State:save(sceneName, sceneLine)
    local data = serialize({
        flags = self.flags,
        relationships = self.relationships,
        day = self.day,
        sceneName = sceneName,
        sceneLine = sceneLine,
    })
    local content = "return " .. data .. "\n"
    love.filesystem.write("save.lua", content)
end

function State:loadSave()
    if not love.filesystem.getInfo("save.lua") then
        return nil
    end
    local content = love.filesystem.read("save.lua")
    local fn = loadstring(content)
    if not fn then return nil end
    local ok, data = pcall(fn)
    if not ok or type(data) ~= "table" then return nil end

    self.flags = data.flags or {}
    self.relationships = data.relationships or {}
    self.day = data.day or 1
    return data.sceneName, data.sceneLine
end

function State:hasSave()
    return love.filesystem.getInfo("save.lua") ~= nil
end

function State:deleteSave()
    if love.filesystem.getInfo("save.lua") then
        love.filesystem.remove("save.lua")
    end
end

function State:calculateEnding()
    local total = self:totalRelationship()
    local highest = self:highestRelationship()

    -- Count compliance vs pushback flags
    local compliance = self:countFlags({
        "eager_for_vision", "started_wireframes", "made_prototype",
        "prioritized_product", "absorbed_scope", "followed_vision",
        "kept_complex_ux", "hid_bugs", "supported_pivot",
        "pulled_allnighter", "showed_everything"
    })
    local pushback = self:countFlags({
        "wants_research", "pushed_interviews", "pushed_back_demo",
        "prioritized_users", "fought_scope", "followed_data",
        "took_ownership", "resisted_pivot", "set_boundaries",
        "backed_riley", "polished_subset", "honest_demo"
    })
    local research = self:countFlags({
        "wants_research", "pushed_interviews", "followed_data",
        "prioritized_users", "retro_research"
    })

    -- The Promotion: high research + high total relationship + more pushback than compliance
    if research >= 3 and total >= 15 and pushback > compliance then
        return "ending_promotion"
    end

    -- The Pivot: PO is highest relationship + multiple scope flags
    local scopeChanges = self:countFlags({
        "absorbed_scope", "supported_pivot", "followed_vision", "showed_everything"
    })
    if highest == "po" and scopeChanges >= 2 then
        return "ending_pivot"
    end

    -- The Burnout: high compliance + low total relationship
    if compliance > pushback and total < 10 then
        return "ending_burnout"
    end

    -- The Ship: default / balanced
    return "ending_ship"
end

return State
