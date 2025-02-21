--[[
    Script Name    : SpawnScripts/EastFreeport/BrucciusCapito.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.11 02:10:07
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"

local Quest1 = 5983

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if GetQuestStep(Spawn, Quest1)==2 then
        FaceTarget(NPC, Spawn)
    	Dialog.New(NPC, Spawn)
    	Dialog.AddDialog("Helloo there!  Can you feel it?  The wind is changing direction....")
    	Dialog.AddOption("I need to speak with you regarding Clara Maius and the Dismal Rage.", "Dialog2")
    	Dialog.Start()
    else
        Dialog1(NPC, Spawn)
    end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Helloo there!  Can you feel it?  The wind is changing direction....")
	Dialog.AddVoiceover("voiceover/english/optional1/bruccius_capito/fprt_east/qst_brucciuscapito.mp3", 2213419422, 824549942)
	Dialog.AddOption("I must meet someone soon and must be going.  Good day.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Oh great... Are they collecting already!? These guys are going to rob the city blind at this rate... Their collections seem to be happening alot more often then they used to... What if I refuse to give you my offering...?")
    Dialog.AddOption("There isn't much I can or will do, it's not my problem. I simply will report it to Clara and let her and the Dismal Rage deal with the likes of you.", "Dialog3")
    Dialog.Start()
end

function Dialog3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Argh! While I know I could take you on with ease. I am not so confident when it comes to the likes of the entire Dismal Rage coming after me...")
    Dialog.AddOption("Your right, so it's probably easier to just pay up.", "UpdateQuest1")
    Dialog.Start()
    
end

function UpdateQuest1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Say(NPC, "Fine! But you tell Clara, that this is the last time! I want nothing to do with the Dismal Rage, or her. And you tell her if I see her at the Jade Tiger... It's fair game whatever happens...")
    SetStepComplete(Spawn, Quest1, 2)
end