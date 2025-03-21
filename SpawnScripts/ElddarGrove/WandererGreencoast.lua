--[[
	Script Name	: SpawnScripts/ElddarGrove/WandererGreencoast.lua
	Script Purpose	: Wanderer Greencoast <Tunarian Alliance Grove Warden>
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local questsByLevel = {
    ["10-14"] = {6116, 6117},  -- Quests for levels 10-14
    ["15-19"] = {6118, 6119, 6120}  -- Quests for levels 15-19
}

function hailed(NPC, Spawn)
    local playerLevel = GetLevel(Spawn)
    local quests = nil

    -- Determine the quests based on the player's level (10-19)
    if playerLevel >= 10 and playerLevel <= 14 then
        quests = questsByLevel["10-14"]
    elseif playerLevel >= 15 and playerLevel <= 19 then
        quests = questsByLevel["15-19"]
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


