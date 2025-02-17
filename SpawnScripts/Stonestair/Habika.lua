--[[
	Script Name		:	SpawnScripts/Stonestair/Habika.lua
	Script Author	:	Your Name
	Script Date		:	2/13/2025
	Script Purpose	:	Handles the interactions with Habika
--]]
require "SpawnScripts/Generic/DialogModule"


-- Quest ID's
local JumaAndHabikasStory = 5957

function spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if HasQuest(Spawn, JumaAndHabikasStory) and GetQuestStep(Spawn, JumaAndHabikasStory) == 1 then
			Dialog.New(NPC, Spawn)
			PlayFlavor(NPC, "voiceover/english/habika/fprt_hood02/quests/habika/habika000.mp3", "", "nod", 4228250953, 3196457960, Spawn, 0)
            Dialog.AddDialog("I'm not interested in whatever wares your peddling. Go away!")
            Dialog.AddOption("I'm not selling anything. I'm here on behalf of Juma", "Dialog1")
            Dialog.Start()
	else
		Say(NPC, "Hello, adventurer. What brings you to our humble town?")
	end
end

function respawn(NPC)
	spawn(NPC)
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 1
--------------------------------------------------------------------------------------------------------------------------------
function Dialog1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("I apologize for that. What news do you bring me from my love Juma? Is he alright? He finds himself in trouble quite often with my father.")
    Dialog.AddOption("Juma seems fine, he asked me to deliver this to you though.", "Dialog2")
    Dialog.Start()
    
end

function Dialog2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Thank you so much.. I will write Juma back as soon as I return home. Thank you kind stranger for this. I am sure Juma will reward you on our behalf in some way.")
    Dialog.AddOption("I was happy to help. I will return to Juma and inform him I have spoken with you.")
    Dialog.Start()
    SetStepComplete(Spawn, JumaAndHabikasStory, 1)
end