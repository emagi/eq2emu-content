--[[
    Script Name    : SpawnScripts/WestFreeport/BaronZafimus.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.26 07:10:09
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

local questsByLevel = {
    ["30-34"] = {6163, 6164, 6165, 6166},  -- Quests for levels 30-34
    ["35-39"] = {6167, 6168, 6169, 6170, 6171},  -- Quests for levels 35-39
}

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
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
    elseif playerLevel >= 40 then
        PlayFlavor(NPC, "voiceover/english/baron_zafimus/fprt_west/100_soc_human_militia_officer_zafimus_goodbye_31481c8.mp3", "I watched as your group grew beyond even my expectations. I appreciate your loyal service so much that I am reassigning you. You must report to Viscount Gelvonius immediately. Oh, and congratulations, citizen.", "", 1980835295, 3813422675, Spawn, 0)    
    elseif playerLevel <= 30 then
        Say(NPC, "I have no tasks suitable for your level. You may need to seek another challenge.")    
    else
        Say(NPC, "I have no tasks suitable for your level. You may need to seek another challenge.")
    end
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,1)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/baron_zafimus/fprt_west/100_soc_human_militia_officer_zafimus_no_23f6c2f6.mp3", "Mercy and kindness are for the undisciplined.  Victory follows only from brutality.  ", "", 2218115443, 3656215650, Spawn, 0)
	end
end