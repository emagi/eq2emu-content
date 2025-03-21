--[[
    Script Name    : SpawnScripts/NorthFreeport/ForbiddenLore.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 01:06:58
    Script Purpose : 
                   : 
--]]

local questsByLevel = {
    ["40-44"] = {6242, 6243, 6244},  -- Quests for levels 40-44
    ["45-50"] = { 6245, 6246 ,6247, 6248, 6249, 6250, 6251, 6252}   -- Quests for levels 45-50
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