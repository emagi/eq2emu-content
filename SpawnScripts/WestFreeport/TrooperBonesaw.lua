--[[
    Script Name    : SpawnScripts/WestFreeport/TrooperBonesaw.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.26 07:10:34
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"
require "SpawnScripts/Generic/NPCModule"

local questsByLevel = {
    ["10-14"] = {6148, 6150, 6151},  -- Quests for levels 10-14
    ["15-19"] = {6149, 6152}  -- Quests for levels 15-19
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

    -- Determine the quests based on the player's level (10-19)
    if playerLevel >= 10 and playerLevel <= 14 then
        quests = questsByLevel["10-14"]
    elseif playerLevel >= 15 and playerLevel <= 19 then
        quests = questsByLevel["15-19"]
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
        -- If no active or pending quest was found, offer a new one
        local newQuestID = quests[math.random(#quests)]
        OfferQuest(NPC, Spawn, newQuestID)
        Dialog5(NPC, Spawn)
    elseif playerLevel >= 20 then
        PlayFlavor(NPC, "voiceover/english/trooper_bonesaw/fprt_west/100_soc_ogre_militia_bonesaw_goodbye_8a31f1a4.mp3", "I don't say this often, but it seems my liege was wrong about your band of cutthroats.  You've been useful to the city, and have earned a measure of respect in Freeport.  You need to report to Liege Helvanica immediately. She's waiting for you in the Militia House!", "salute_freeport", 1432955551, 1695843427, Spawn, 0)
    else
        Say(NPC, "You are not experienced enough for a task from me. Come back later.")
    end
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,1)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/trooper_bonesaw/fprt_west/100_soc_ogre_militia_bonesaw_goodbye_8a31f1a4.mp3", "I don't say this often, but it seems my liege was wrong about your band of cutthroats.  You've been useful to the city, and have earned a measure of respect in Freeport.  You need to report to Liege Helvanica immediately. She's waiting for you in the Militia House!  ", "salute_freeport", 1432955551, 1695843427, Spawn, 0)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("...")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1002.mp3", 0, 0)
	Dialog.AddOption("I would like the writ: Thinning the Herd")
	Dialog.AddOption("I would like the writ: Orcish Threats")
	Dialog.AddOption("I would like the writ: Horrors of the Past")
	Dialog.AddOption("I will be going.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("...")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_2_1002.mp3", 0, 0)
	Dialog.AddOption("I would like the writ: Thinning the Herd", "Dialog5")
	Dialog.AddOption("I would like the writ: Orcish Threats")
	Dialog.AddOption("I would like the writ: Horrors of the Past")
	Dialog.AddOption("I will be going.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("...")
	Dialog.AddOption("I would like the writ: Thinning the Herd")
	Dialog.AddOption("I would like the writ: Orcish Threats")
	Dialog.AddOption("I would like the writ: Horrors of the Past")
	Dialog.AddOption("I will be going.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("...")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1002.mp3", 0, 0)
	Dialog.AddOption("I would like the writ: Thinning the Herd")
	Dialog.AddOption("I would like the writ: Orcish Threats")
	Dialog.AddOption("I would like the writ: Horrors of the Past")
	Dialog.AddOption("I will be going.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Good of you to rejoin us.  It appears your carcass is not feeding the buzzards after all.  Here is another writ, don't forget the penalty for failure, and you'll do just fine.")
	Dialog.AddVoiceover("voiceover/english/trooper_bonesaw/fprt_west/100_soc_ogre_militia_bonesaw_hail_1f887477.mp3", 2188261085, 1324657018)
	Dialog.AddOption("Okay.")
	Dialog.Start()
end

