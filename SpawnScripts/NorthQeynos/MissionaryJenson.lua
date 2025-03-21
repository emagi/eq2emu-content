--[[
    Script Name    : SpawnScripts/NorthQeynos/MissionaryJenson.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.23 03:04:43
    Script Purpose : 
                   : 
--]]

local questsByLevel = {
    ["30-34"] = {6057, 6058, 6059, 6060},  -- Quests for levels 30-34
    ["35-39"] = {6061, 6062, 6063, 6064, 6065}  -- Quests for levels 35-39
}

function spawn(NPC)

end

function hailed(NPC, Spawn)
    local playerLevel = GetLevel(Spawn)
    local quests = nil

    -- Determine the quests based on the player's level (30-39)
    if playerLevel >= 30 and playerLevel <= 34 then
        quests = questsByLevel["30-34"]
    elseif playerLevel >= 35 and playerLevel <= 39 then
        quests = questsByLevel["35-39"]
    end

    if quests then
        -- Check if the player already has any quest from the list
        for _, questID in ipairs(quests) do
            if HasQuest(Spawn, questID) then
                -- If the player has any quest from the list, exit early
                Say(NPC, "You're already on a task. Finish it first before taking another.")
                return
            end
        end
        -- If no quest was found, offer a new one
        local newQuestID = quests[math.random(#quests)]
        OfferQuest(NPC, Spawn, newQuestID)
        Say(NPC, "I have a task for someone of your experience. Will you take it?")
    else
        Say(NPC, "I have no tasks suitable for your level. You may need to seek another challenge.")
    end
end

function respawn(NPC)
	spawn(NPC)
end