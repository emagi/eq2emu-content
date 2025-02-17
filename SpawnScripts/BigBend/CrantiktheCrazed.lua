--[[
	Script Name		: SpawnScripts/BigBend/CrantiktheCrazed.lua
	Script Purpose	: Crantik the Crazed
	Script Author	: torsten
	Script Date		: 2022.07.13
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
require "SpawnScripts/Generic/DialogModule"

local MucksQuest = 5874
local KazarAndTheVial = 5949

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if HasQuest(Spawn, MucksQuest) then
        Dialog1(NPC, Spawn)
    elseif GetQuestStep(Spawn, KazarAndTheVial)==1 then
        Dialog3(NPC, Spawn)
    end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Up is down and down is up, yet both are still sideways!  Hoooooooo hee hee haaaaaaaa!")
	Dialog.AddVoiceover("voiceover/english/crantik_the_crazed/fprt_hood1/qst_crantikthecrazed.mp3", 1553641466, 3781649488)
	
    if GetQuestStep(Spawn,MucksQuest)==1 then	
	Dialog.AddOption("I need a vial of the something that Old Man Muckwort wants.","Dialog2")
    end

	Dialog.AddOption("Um, ya....right....")
	Dialog.Start()
end

function Dialog2(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Whooo hooo heee heee! Crantik makes some more of the droopy-gloppy! Muckwort always gets my droopy-gloppy, weee heee!!! Crantik makes it from his own body, he does! Ratsies and Catsies drop dead when they do the licky licky licky, then they make a lot of sizzzzzzzle sounds! Yeeee wooo heee! Crantik gives you a vial!")
 	Dialog.AddVoiceover("voiceover/english/crantik_the_crazed/fprt_hood03/quests/oldmanmuckwort/crantik_muckwort_x1_initial.mp3",3426325136,2692118135)
    PlayFlavor(NPC, "","","scratch",0,0, Spawn)
	Dialog.AddOption("Err... Thanks.")
	Dialog.Start()
    SetStepComplete(Spawn, MucksQuest, 1)
end

function Dialog3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
 	PlayFlavor(NPC, "voiceover/english/crantik_the_crazed/fprt_hood02/quests/kazar/crantik_kazar_x1_initial.mp3", "", "no",  146488314, 1942964512, Spawn, 0)
 	Dialog.AddDialog("Wee-hoo-hoo-hee-hee-hoo-hoo-hoo! Crantik no have any! Hee-hee-hee-hee! Crantik need to eat a tasty little morsel to make more of the bile! Wee-ha-ha-ha! No squirming and flamming morsels around! Hee-ha-ha-ha! Other sides of walkers make even greater bile, but not from Crantik! Enjoy the sauce! Hee-ha-ha-ha-ha!")
	Dialog.AddOption("Err... Thanks.")
	Dialog.Start()
    SetStepComplete(Spawn, KazarAndTheVial, 1)
end
