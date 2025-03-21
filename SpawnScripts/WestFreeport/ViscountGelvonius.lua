--[[
    Script Name    : SpawnScripts/WestFreeport/ViscountGelvonius.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.01.17 09:01:08
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

local questsByLevel = {
    ["40-44"] = {6172, 6173, 6174, 6175, 6176},  -- Quests for levels 40-44
    ["45-50"] = {6177, 6178, 6179, 6180, 6181, 6182}   -- Quests for levels 45-50
}

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
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
        PlayFlavor(NPC, "voiceover/english/viscount_gelvonius/fprt_west/100_soc_human_militia_officer_gelvonius_no_4a43e5be.mp3", "Hail to you as well. You're either very brave or very foolish to address me so casually. Stand at attention when you speak to me, citizen! Freeport is at war, and I've no time for your incoherent ramblings.", "", 2994522734, 1398023937, Spawn, 0)    

    end
end

function respawn(NPC)
	spawn(NPC)
end