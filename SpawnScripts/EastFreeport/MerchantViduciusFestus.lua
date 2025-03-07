--[[
    Script Name    : SpawnScripts/EastFreeport/MerchantViduciusFestus.lua
    Script Author  : Xiki
    Script Date    : 2025.02.21 12:02:37
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local Quest1 = 5987

function spawn(NPC)
    ProvidesQuest(NPC, Spawn, Quest1)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if CanReceiveQuest(Spawn, Quest1) then
	    Dialog.New(NPC, Spawn)
        Dialog.AddDialog("You there, adventurer. You look like you could hold your own. Perhaps you could handle a simple task for me?")
        Dialog.AddOption("Sure, what do you need from me?", "Dialog1")
        Dialog.AddOption("Sorry, I have better things to do.", "No")
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
    Dialog.AddDialog("It's nothing to crazy so don't be gettin' to excited. I just need someone to deliver this message for me to Valary at the Crossroads out in the Commonlands, I would do it but I can't be making money if I'm not here. You understand right?")
    Dialog.AddOption("Sure I guess... I could take the letter for you.", "AcceptedQuest1")
    Dialog.AddOption("That does seem to be quite the problem.. but I cant help you.", "No")
    Dialog.Start()
end

function AcceptedQuest1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Quest1)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Perfect, I'll make sure Valary rewards you for your time.")
    Dialog.AddOption("Someone better pay me!")
    Dialog.Start()
end

