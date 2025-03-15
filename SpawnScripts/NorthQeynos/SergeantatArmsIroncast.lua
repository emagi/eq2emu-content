--[[
	Script Name		: SpawnScripts/NorthQeynos/Sergeant-at-ArmsIroncast.lua
	Script Purpose	: Sergeant-at-Arms Ironcast
	Script Author	: Dorbin
	Script Date		: 2022.04.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

local questsByLevel = {
    ["30-34"] = {6025, 6026, 6027, 6028},  -- Quests for levels 30-34
    ["35-39"] = {6029, 6030, 6031, 6032, 6033}  -- Quests for levels 35-39
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
		PlayFlavor(NPC, "voiceover/english/sergeant-at-arms_ironcast/qey_north/100_soc_dwarf_guard_officer_ironcast_tasked_28d1905b.mp3", "Please return to me when you have completed your current task.", "", 1503240045, 3535420733, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/sergeant-at-arms_ironcast/qey_north/100_soc_dwarf_guard_officer_ironcast_no_181290a1.mp3", "Hail, citizen. I'm on duty and can't speak.  If you need the assistance of the guard,  let us know.", "", 904288338, 3551828428, Spawn, 0)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Greetings, again. We're in serious trouble, friend, and the court needs your help.  This writ was hand delivered from the castle.  Take it and follow its instuctions to the letter.  Be very careful. I've a bad feeling about this one.")
	Dialog.AddVoiceover("voiceover/english/sergeant-at-arms_ironcast/qey_north/100_soc_dwarf_guard_officer_ironcast_hail_dcee4157.mp3", 2922366004, 1416171234)
	Dialog.AddOption("Okay.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Welcome, friend. Our thanks to you for your continued service to Qeynos.  I'm afraid the reports from the villages are not good. We've a situation we'd like you to look at.  Take this writ and exercise extreme caution. I'll speak to you again once you complete this task.")
	Dialog.AddVoiceover("voiceover/english/sergeant-at-arms_ironcast/qey_north/100_soc_dwarf_guard_officer_ironcast_greeting_9e29967c.mp3", 3325653132, 2631555784)
	Dialog.AddOption("Okay.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("...")
	Dialog.AddOption("I would like the writ: Earth and Water", "Dialog2")
	Dialog.AddOption("I would like the writ: The Gathering Shadows")
	Dialog.AddOption("I would like the writ: No One Sees Us")
	Dialog.AddOption("I would like the writ: Sinew vs. Steel")
	Dialog.AddOption("I will be going.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("...")
	Dialog.AddOption("I would like the writ: Muzzle the Carnivores", "Dialog1")
	Dialog.AddOption("I would like the writ: Blind to All Else")
	Dialog.AddOption("I would like the writ: Legacy of Xanuusus")
	Dialog.AddOption("I would like the writ: The Roar of the Colossal")
	Dialog.AddOption("I would like the writ: Underneath the Bridge")
	Dialog.AddOption("I will be going.")
	Dialog.Start()
end
