--[[
	Script Name		: SpawnScripts/SouthFreeport/MarauderKindolus.lua
	Script Purpose	: Marauder Kindolus
	Script Author	: Dorbin
	Script Date		: 2022.05.04
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local questsByLevel = {
    ["30-34"] = {6268, 6269, 6270, 6271},  -- Quests for levels 30-34
    ["35-39"] = {6272, 6273, 6274, 6275, 6276}  -- Quests for levels 35-39
}


function spawn(NPC)
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

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "Well, it seems you've been deemed worthy of trade in our organization.  My congratulations to you and your crew.  You need to speak to Corsair G`Kex over there.  You can't miss him -- he'll be the one standing upon the deck of a large vessel in port.  Good hunting! Until we meet again, friend...", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "What filth is this before me?  I've a schedule to keep and no time to associate with common trash.", "", 0, 0, Spawn, 0)
	end
	end