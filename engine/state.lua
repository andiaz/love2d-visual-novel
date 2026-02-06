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

return State
