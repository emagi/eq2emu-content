--[[
    Script Name    : SpawnScripts/WestFreeport/LiegeHelvanica.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.26 07:10:40
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

local questsByLevel = {
    ["20-24"] = {6153, 6154, 6155, 6156, 6157},  -- Quests for levels 20-24
    ["25-29"] = {6158, 6159, 6160, 6161, 6162}  -- Quests for levels 25-29
}

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    FreeportGuard(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

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
    elseif playerLevel >= 30 then
        PlayFlavor(NPC, "voiceover/english/liege_helvanica/fprt_west/100_soc_human_militia_helvanica_goodbye_f5d64723.mp3", "It's with great pleasure that I bring news of your success to the Citadel.  The Overlord is most pleased with your progress.  You have been remanded to the care of Baron Zafimus.  He is conducting patrols inside the Militia House.  You must report to him immediately. Now move!", "", 3582510567, 2094203553, Spawn, 0)    
    elseif playerLevel <= 20 then
        PlayFlavor(NPC, "voiceover/english/liege_helvanica/fprt_west/100_soc_human_militia_helvanica_no_5a6d5fb9.mp3", "Hail, fool. Have the poorhouses overflowed out into the streets?  The militia has no time for vagrants!  Get out of my sight!", "", 3239214506, 3877091290, Spawn, 0)
    else
        Say(NPC, "I have no tasks suitable for your level. You may need to seek another challenge.")
    end
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
--		
		PlayFlavor(NPC, "voiceover/english/liege_helvanica/fprt_west/100_soc_human_militia_helvanica_no_5a6d5fb9.mp3", "Hail, fool. Have the poorhouses overflowed out into the streets?  The militia has no time for vagrants!  Get out of my sight!", "glare", 3239214506, 3877091290, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/liege_helvanica/fprt_west/100_soc_human_militia_helvanica_no_5a6d5fb9.mp3", "Hail, fool. Have the poorhouses overflowed out into the streets?  The militia has no time for vagrants!  Get out of my sight!", "stare", 3239214506, 3877091290, Spawn, 0)
	end
end