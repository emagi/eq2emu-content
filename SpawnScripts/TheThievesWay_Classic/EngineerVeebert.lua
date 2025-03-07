--[[
    Script Name    : SpawnScripts/TheThievesWay_Classic/EngineerVeebert.lua
    Script Author  : dorbin
    Script Date    : 2024.01.05 09:01:29
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local Quest1 = 5995

function spawn(NPC)
    SetInfoStructString(NPC, "action_state", "tapfoot")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Get out of the way! Get OUT OF THE WAY! I need to keep this clanking-heap working!")
	Dialog.AddVoiceover("voiceover/english/engineer_veebert/fprt_sewer01/quests/engineerveebert000.mp3", 3787332000, 2245703769)
	PlayFlavor(NPC, "", "", "frustrated", 0, 0, Spawn, 0)
	Dialog.AddOption("Okay! I'm going!")
	if GetQuestStep(Spawn, Quest1)==1 then
	    Dialog.AddOption("Actually I have a letter here from Foreman Asprenus for you. He mentioned you're working on something and I should assist you if need be.", "Dialog1")
	end
	Dialog.Start()
end

function respawn(NPC)
	spawn(NPC)
end

function Dialog1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/engineer_veebert/fprt_sewer01/quests/engineerveebert003.mp3", "", "nod", 1775956219, 1310346606, Spawn, 0)
    Dialog.AddDialog("I created a special goo grease that lubricates the gears and unclogs tough drains at the same time. Problem is, different batches of the goo I make seem to react violently when they come into contact with each other. That's no problem, though. I just told the other engineers not to share the goo grease with each other and to dispose of it when it gets old.")
    Dialog.AddOption("And what exactly do you need from me?", "Dialog2")
    Dialog.Start()
end

function Dialog2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Well the issue is that the goo seem's to be causing an issue. I need you to head down and speak with Shift Boss Murkle, perhaps he know's what's going on down there! You can find him in The Serpent Sewers but be careful down there. It's not a place you want to let your guard down!")
    Dialog.AddOption("Alright, I seek out this Murkle and speak with him.", "Step1Complete")
    Dialog.Start()
end

function Step1Complete(NPC, Spawn)
   SetStepComplete(Spawn, Quest1, 1) 
end