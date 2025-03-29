--[[
	Script Name	: SpawnScripts/ElddarGrove/NaturalistTummyfill.lua
	Script Purpose	: Naturalist Tummyfill <Tunarian Alliance Grove Warden>
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local questsByLevel = {
    ["20-24"] = {6121, 6122, 6123},  -- Quests for levels 20-24
    ["25-29"] = {6124, 6125, 6126, 6127}  -- Quests for levels 25-29
}

function hailed(NPC, Spawn)
    local playerLevel = GetLevel(Spawn)
    local quests = nil

    -- Determine the quests based on the player's level (20-29)
    if playerLevel >= 20 and playerLevel <= 24 then
        quests = questsByLevel["20-24"]
    elseif playerLevel >= 25 and playerLevel <= 29 then
        quests = questsByLevel["25-29"]
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
