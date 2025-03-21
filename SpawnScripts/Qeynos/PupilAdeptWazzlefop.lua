--[[
	Script Name	: SpawnScripts/SouthQeynos/PupilAdeptWazzlefop.lua
	Script Purpose	: Pupil Adept Wazzlefop <Concordium Mage>
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local questsByLevel = {
    ["10-14"] = {6084, 6085},  -- Quests for levels 10-14
    ["15-19"] = {6086, 6087, 6088}  -- Quests for levels 15-19
}

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

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

--[[
    conversation = CreateConversation()

		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I would like the writ: Followers of the Fang", "dlg_5_1")
		AddConversationOption(conversation, "I would like the writ: Darkpaw Encroachment")
		AddConversationOption(conversation, "I will be going.")
	StartConversation(conversation, NPC, Spawn, "...")
	if convo==6 then
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I would like the writ: Followers of the Fang", "dlg_6_1")
		AddConversationOption(conversation, "I would like the writ: Darkpaw Encroachment")
		AddConversationOption(conversation, "I will be going.")
		StartConversation(conversation, NPC, Spawn, "...")
	end

end
]]--

function dlg_6_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/pupil_adept_wazzlefop/qey_south/100_soc_gnome_concordium_wazzlefop_greeting_fd45f78a.mp3", "", "", 4189930656, 304987589, Spawn)
--	AddConversationOption(conversation, "Okay.", "dlg_6_2")
	AddConversationOption(conversation, "Not today.")
	StartConversation(conversation, NPC, Spawn, "Are you a seeker of the arcane?  Do you thirst for the knowledge of the mystical?  You've come to the right place.  Here at the Concordium, we serve the queen by using our mystical prowess to aid those in need.  Take this writ and help us in our search for truth.")
end

