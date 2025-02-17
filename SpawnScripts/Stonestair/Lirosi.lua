--[[
	Script Name		:	SpawnScripts/Stonestair/Lirosi.lua
	Script Author	:	Xiki
	Script Date		:	2/13/2025
	Script Purpose	:	Handles the interactions with Lirosi
--]]
require "SpawnScripts/Generic/DialogModule"


-- Quest ID's
local TheContest = 5951
local EasyAcceptance = 5952

function spawn(NPC)
	ProvidesQuest(NPC, TheContest)
	ProvidesQuest(NPC, EasyAcceptance)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if HasCompletedQuest(Spawn, TheContest) then
		if not HasQuest(Spawn, EasyAcceptance) and not HasCompletedQuest(Spawn, EasyAcceptance) then
			Dialog.New(NPC, Spawn)
            Dialog.AddDialog("If your still convinced your better then me, why dont you take on another little  task I have for you. Completing it might sway my opinion of you... But I doubt it.")
            Dialog.AddOption("Anything you can do, I can do better.", "Dialog2")
            Dialog.Start()
		elseif GetQuestStep(Spawn, EasyAcceptance) == 1 then
			Say(NPC, "Return to me when you have the Mantle...")
		elseif GetQuestStep(Spawn, EasyAcceptance) == 2 then
			Say(NPC, "Ah, you've returned with the mantle. I must admit, I'm impressed. But don't think this means you're the better hunter.")
			SetStepComplete(Spawn, EasyAcceptance, 2)
		elseif HasCompletedQuest(Spawn, EasyAcceptance) then
		    Say(NPC, "This changes nothing... While I'm rather impressed by your ability to fend for yourself. I must say I did not expect you to return and furthermore, I am still the better hunter.")
		end
	elseif GetQuestStep(Spawn, TheContest) == 1 then
		Say(NPC, "I'm waiting for you to bring me those orc fingers. Don't bother coming back until you have them all.")
	elseif GetQuestStep(Spawn, TheContest) == 2 then
		Say(NPC, "Ah, you've returned with the fingers. I must admit, I'm impressed. But don't think this means you're the better hunter.")
		SetStepComplete(Spawn, TheContest, 2)
	else
		if not HasQuest(Spawn, TheContest) then
			Dialog.New(NPC, Spawn)
            Dialog.AddDialog("Why are you staring at me?! Do you know who I am? I'm the great hunter Lirosi of Stonestair Byway! You think you can best me? Prove it, I have a little challenge for you if your up to it.")
            Dialog.AddOption("Of course I do. Look at me and you!", "Dialog1")
            Dialog.Start()
		end
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
    Dialog.AddDialog("Really? Ha ha ha! Why dont you prove your better then me, go out and kill me some orcs. They're plenty tough, as proof of your victory over those brutes bring me back 10 of their fingers.")
    Dialog.AddOption("Sure thing! Orc's dont scare me!", "AcceptedQuest1")
    Dialog.Start()
end


function AcceptedQuest1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, TheContest)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Good! I'll be here enjoying a drink in your name.. I look forward to your return...If there will be one..")
    Dialog.AddOption("Uh, sure whatever that means.")
    Dialog.Start()
end

function FinishQuest1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("How impressive... I am truly shocked that you returned. But now I have a little bit of faith in your ability, perhaps you could try out another little task for me...")
    Dialog.AddOption("Yeah right.. I really enjoy helping you..")
    Dialog.Start()
    SetStepComplete(Spawn, TheContest, 2)
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 2
--------------------------------------------------------------------------------------------------------------------------------

function Dialog2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Ha ha ha! This time I will really put your 'skills' to the test then. Why dont you go out to the Sprawl, there you can pick a fight with some of the Dervish Crooks, dont worry they should be easy for someone as skilled as you compared to some half-wit orcs! What do you say? ")
    Dialog.AddOption("Sounds easy enough! I can take on anything.", "Dialog2")
    Dialog.Start()
end

function Dialog2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Dont get to cocky.. We'll see if you can one of their treasured items... The Hunters Mantle, find that and bring it back to me if you can. Though my expectations for you are low.")
    Dialog.AddOption("I'll be back before you finish your drink!", "AcceptedQuest2")
    Dialog.Start()
    
end

function AcceptedQuest2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, EasyAcceptance)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Great... Like always I look forward to your return... regardless of how it is, dead or alive.")
    Dialog.AddOption("Keep a seat open. I wont be long.")
    Dialog.Start()
end

function FinishQuest1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("I was really starting to worry about you out there! Not.. Ha ha ha but thanks for finding my old Hunters Mantle! I should've been more honest with you and told you this was just some old heirloom my father gave to me, but then you wouldnt appreciate the real value it holds... Ha ha ha. Here take this as a reward for returning my precious mantle.")
    Dialog.AddOption("You risked my life for that piece of garbage!?")
    Dialog.Start()
    SetStepComplete(Spawn, EasyAcceptance, 2)
end