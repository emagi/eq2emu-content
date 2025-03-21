--[[
    Script Name    : SpawnScripts/NorthFreeport/ParagonJalex.lua
    Script Author  : Xiki
    Script Date    : 2025.03.15 11:03:41
    Script Purpose : 
                   : 
--]]

local questsByLevel = {
    ["30-34"] = {6198, 6199, 6200, 6201},  -- Quests for levels 30-34
    ["35-39"] = {6202, 6203, 6204, 6205, 6206}  -- Quests for levels 35-39
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