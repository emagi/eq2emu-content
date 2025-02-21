--[[
    Script Name    : SpawnScripts/NorthFreeport/PreceptorNyjuss.lua
    Script Author  : Xiki
    Script Date    : 2025.02.21 11:02:42
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local DalalsMessage = 5986

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetQuestStep(Spawn, DalalsMessage)==1 then
	    SetStepComplete(Spawn, DalalsMessage, 1)
        FaceTarget(NPC, Spawn)
        Dialog.New(NPC, Spawn)
        Dialog.AddDialog("What do you want... Can't you see that I am busy?")
        Dialog.AddOption("My apologies, I'm have a note here for you from Dalal.", "Dialog1")
        Dialog.Start()
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
    Dialog.AddDialog("Ah yes. I've been awaiting this message, hand it over quickly.")
    Dialog.AddOption("Sure, here you go.", "Dialog2")
    Dialog.Start()
    
end

function Dialog2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Hmm how interesting. The seabirds will be roosting... fair game... Oh hmm? You're still here? Hey! This note isn't for you to see! Take this as a reward and begone from my sight.")
    Dialog.AddOption("Thanks. *lie* I wasnt trying to see it anyways, I was just waiting for payment.", "FinishQuest1")
    Dialog.Start()
    
end

function FinishQuest1(NPC, Spawn)
    SetStepComplete(Spawn, DalalsMessage, 2)
    FaceTarget(NPC, Spawn)
    Say(NPC, "Don't insult my intelligence! I could see your wandering eyes.. I said begone!")
end