--[[
	Script Name		: SpawnScripts/NorthQeynos/CaretakerNogfizzle.lua
	Script Purpose	: Caretaker Nogfizzle
	Script Author	: Dorbin
	Script Date		: 2022.04.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

local questsByLevel = {
    ["10-14"] = {6045, 6046},  -- Quests for levels 10-14
    ["15-19"] = {6047, 6048, 6049}  -- Quests for levels 15-19
}

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
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

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/caretaker_nogfizzle/qey_north/100_soc_gnome_celestial_nogfizzle_goodbye_92e2ec93.mp3", "I'm afraid you've surpassed the ability of this humble caretaker's teachings. Seek out Disciple Telas'velle when you're ready to continue your teachings.  Farewell!  ", "sigh", 1044710758, 3793935981, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/caretaker_nogfizzle/qey_north/100_soc_gnome_celestial_nogfizzle_goodbye_92e2ec93.mp3", "I'm afraid you've surpassed the ability of this humble caretaker's teachings. Seek out Disciple Telas`velle when you're ready to continue your teachings.  Farewell!  ", "sigh", 1044710758, 3793935981, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/caretaker_nogfizzle/qey_north/100_soc_gnome_celestial_nogfizzle_no_e415b034.mp3", "Welcome to the Temple of Life.  May the peace and prosperity of those within remove all doubt and questions from your mind.", "bow", 3983926383, 3492617579, Spawn, 0)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("...")
	Dialog.AddOption("I would like the writ: Scatter the Bones")
	Dialog.AddOption("I would like the writ: The Path of Enlightenment")
	Dialog.AddOption("I would like the writ: Wasteland")
	Dialog.AddOption("I will be going.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("...")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", 0, 0)
	Dialog.AddOption("I would like the writ: Scatter the Bones")
	Dialog.AddOption("I would like the writ: The Path of Enlightenment")
	Dialog.AddOption("I would like the writ: Wasteland", "Dialog3")
	Dialog.AddOption("I will be going.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'm happy to see you return!  We set aside another writ for you. Take it, my student, and see to the safety of our city.")
	Dialog.AddVoiceover("voiceover/english/caretaker_nogfizzle/qey_north/100_soc_gnome_celestial_nogfizzle_hail_f4707a0f.mp3", 2710561134, 2435527520)
	Dialog.AddOption("Okay.")
	Dialog.Start()
end