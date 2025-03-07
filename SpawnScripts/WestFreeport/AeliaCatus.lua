--[[
    Script Name    : SpawnScripts/WestFreeport/AeliaCatus.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.26 07:10:25
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"


local Quest1 = 5998

function spawn(NPC)
    ProvidesQuest(NPC, Spawn, Quest1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if not HasCompletedQuest(Spawn, Quest1) then
        Dialog2(NPC, Spawn)
    elseif HasQuest(Spawn, Quest1, 2) then
        FaceTarget(NPC, Spawn)
        Dialog.New(NPC, Spawn)
        Dialog.AddDialog("Have you spoken with Julia? If not, why are you bothering me...?")
        Dialog.AddOption("Actually I have spoken with her...", "CompleteQuest1")
        Dialog.Start()
    else
        Dialog3(NPC, Spawn)
    end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hail, adventurer.  I'm glad you wandered into my shop. I have an important message, and I need someone to relay it to Ledger Didicus at the port authority.  If you could do this for me, I'd be very thankful.")
	Dialog.AddVoiceover("voiceover/english/optional1/merchant_aelia_catus/fprt_west/mer_aeliacatus.mp3", 1437950883, 1488099263)
	Dialog.AddOption("I'm kind of busy right now.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hail, adventurer.  I'm glad you wandered into my shop. ")
	Dialog.AddVoiceover("voiceover/english/optional1/merchant_aelia_catus/fprt_west/mer_aeliacatus.mp3", 1437950883, 1488099263)
	Dialog.AddOption("I'm kind of busy right now.")
	if CanReceiveQuest(Spawn, Quest1) then
	    Dialog.AddOption("I'm looking for work.  Do you have anything for me?", "OfferQuest1")
	end
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hail, adventurer.  I'm glad you wandered into my shop. ")
	Dialog.AddVoiceover("voiceover/english/optional1/merchant_aelia_catus/fprt_west/mer_aeliacatus.mp3", 1437950883, 1488099263)
	Dialog.AddOption("I'm kind of busy right now.")
	Dialog.Start()
end

function OfferQuest1(NPC, Spawn)
   	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Now that you mention it, I could need someone to deliver this message for me to that wench Julia Florens. She runs the Jade Tiger's Den over in North Freeport, she's been trying to double cross me and I won't stand for it any longer! Please deliver this letter to her and return to me once you have done so.")
	Dialog.AddOption("I could do that for you.")
	OfferQuest(NPC, Spawn, Quest1)
	Dialog.Start() 
end

function CompleteQuest1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("[Place Holder]Good, at least she know's I'm done letting her debt go uncollected! And you, being my muscle unknowingly. Here's your reward, now if you don't mind I have thing's to do.")
	Dialog.AddOption("Wait you used me, without my consent?!", "FinishQuest1")
    SetStepComplete(Spawn, Quest1, 2)
	Dialog.Start() 
end 