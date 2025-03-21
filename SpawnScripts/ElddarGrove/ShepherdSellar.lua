--[[
	Script Name		: SpawnScripts/TheElddarGrove/ShepherdSellar.lua
	Script Purpose	: Shepherd Sell`ar
	Script Author	: Dorbin
	Script Date		: 2022.05.07
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

local questsByLevel = {
    ["30-34"] = {6128, 6129, 6130, 6131},  -- Quests for levels 30-34
    ["35-39"] = {6132, 6133, 6134, 6135, 6136}  -- Quests for levels 35-39
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


function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'm sorry we can't talk now!  Were facing a possible invasion, and the Queen has commanded us to meet with the city guard about the matter.  Here is your writ.  Return to me once you complete your mission.")
	Dialog.AddOption("Okay.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("...")
	Dialog.AddOption("I would like the writ: Get the Balance Right", "Dialog1")
	Dialog.AddOption("I would like the writ: The Heavy Boot of Civilization")
	Dialog.AddOption("I would like the writ: Green Greasy Guardians")
	Dialog.AddOption("I would like the writ: Stench of the Void")
	Dialog.AddOption("I would like the writ: The Imbibers")
	Dialog.AddOption("I will be going.")
	Dialog.Start()
end

