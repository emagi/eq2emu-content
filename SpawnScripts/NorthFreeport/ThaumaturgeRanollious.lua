--[[
    Script Name    : SpawnScripts/NorthFreeport/ThaumaturgeRanollious.lua
    Script Author  : Xiki
    Script Date    : 2025.03.15 11:03:48
    Script Purpose : 
                   : 
--]]

local questsByLevel = {
    ["40-44"] = {6207, 6208, 6209},  -- Quests for levels 40-44
    ["45-50"] = {6210, 6211, 6212, 6213, 6214, 6215, 6216, 6217}   -- Quests for levels 45-50
}

function spawn(NPC)

end

function hailed(NPC, Spawn)
    local playerLevel = GetLevel(Spawn)
    local quests = nil

    -- Determine the quests based on the player's level (40-50)
    if playerLevel >= 40 and playerLevel <= 44 then
        quests = questsByLevel["40-44"]
    elseif playerLevel >= 45 and playerLevel <= 50 then
        quests = questsByLevel["45-50"]
    end

    if quests then
        -- Check if the player already has an active quest
        for _, questID in ipairs(quests) do
            if HasQuest(Spawn, questID) then
                -- If the player has an active quest, inform them and exit
                Say(NPC, "You're already on a task. Finish it first before taking another.")
                return
            elseif HasPendingQuest(Spawn, questID) then
                -- If the player has a pending quest, do nothing and exit
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