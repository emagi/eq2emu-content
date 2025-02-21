--[[
    Script Name    : SpawnScripts/EastFreeport/BowyerDalalAkilia.lua
    Script Author  : Xiki
    Script Date    : 2025.02.21 10:02:57
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local DalalsMessage = 5986

function spawn(NPC)
    ProvidesQuest(NPC, Spawn, DalalsMessage)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if CanReceiveQuest(Spawn, DalalsMessage) then
	    Dialog.New(NPC, Spawn)
        Dialog.AddDialog("Greeting adventurer. Are you looking for work?")
        Dialog.AddOption("Sure, I could offer my help. What do you need from me?", "Dialog1")
        Dialog.AddOption("Sorry but I am to busy.", "No")
        Dialog.Start()
    else
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
    Dialog.AddDialog("Great! I need someone to take this letter to Preceptor Nyjuss. He can be found in North Freeport most likely in The Jade Tiger's Den of the Market Square. Could you do that for me?")
    Dialog.AddOption("Sure I can do that.", "AcceptedQuest1")
    Dialog.AddOption("Sorry but I'm not a courier...", "No")
    Dialog.Start()
end

function AcceptedQuest1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, DalalsMessage)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Great, thank you. Just a word of advice, The Jade Tiger can be a bit of a rough place if you dont watch yourself.")
    Dialog.AddOption("I can manage. Thanks.")
    Dialog.Start()
end
