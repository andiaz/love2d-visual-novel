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
