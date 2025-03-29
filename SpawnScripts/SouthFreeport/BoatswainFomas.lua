--[[
	Script Name		: SpawnScripts/SouthFreeport/BoatswainFomas.lua
	Script Purpose	: Boatswain Fomas
	Script Author	: Dorbin
	Script Date		: 2022.05.04
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local questsByLevel = {
    ["20-24"] = {6258, 6259, 6260, 6262, 6263},  -- Quests for levels 20-24
    ["25-29"] = {6264, 6265, 6266, 6267}  -- Quests for levels 25-29
}


function spawn(NPC)
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
    else
        Say(NPC, "I have no tasks suitable for your level. You may need to seek another challenge.")
    end
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/boatswain_fomas/fprt_west/100_soc_kerra_seafury_fomas_goodbye_88fcfb69.mp3", "You have done a fine job.  The officers have taken notice, and no longer consider you a bilge rat.  Speak to Marauder Kindolus when you have a moment.  He's upstairs. You'll be reporting to him from now on.  Smooth sailing, friend. You're one of us now!", "", 1411838584, 2227083440, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "What are you looking at?  This ship is for pirates and cutthroats; lily-livered landlubbers aren't allowed in here!", "", 0, 0, Spawn, 0)
	end
end