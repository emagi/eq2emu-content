--[[
	Script Name		: SpawnScripts/NorthQeynos/Knight-CaptainSteelgaze.lua
	Script Purpose	: Knight-Captain Steelgaze
	Script Author	: Dorbin
	Script Date		: 2022.04.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

local questsByLevel = {
    ["40-44"] = {6034, 6035, 6036, 6037, 6038},  -- Quests for levels 40-44
    ["45-50"] = {6039, 6040, 6041, 6042, 6043, 6044}   -- Quests for levels 45-50
}

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
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
	Dialog.AddDialog("...")
	Dialog.AddOption("I would like the writ: We Pruned the Hedges")
	Dialog.AddOption("I would like the writ: It's Just Your Imagination")
	Dialog.AddOption("I would like the writ: Unspeakable Malice")
	Dialog.AddOption("I would like the writ: It Is the Soldier")
	Dialog.AddOption("I would like the writ: Pillars of Perseverance")
	Dialog.AddOption("I will be going.")
	Dialog.Start()
end
