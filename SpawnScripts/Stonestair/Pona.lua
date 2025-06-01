--[[
    Script Name    : SpawnScripts/Stonestair/Pona.lua
    Script Author  : Xiki
    Script Date    : 2025.02.10 11:02:52
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"



-- Quest ID's
local AreYouThereTom = 5944
local NosnosProphecy = 5950

function spawn(NPC)
    ProvidesQuest(NPC, AreYouThereTom)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if HasCompletedQuest(Spawn, AreYouThereTom) then
	    Say(NPC, "Thank you for your help!")
	elseif GetQuestStep(Spawn, AreYouThereTom) == 1 then
	    Say(NPC, "Have you dealt with those undead for me?")
	elseif GetQuestStep(Spawn, AreYouThereTom) == 2 then
	    FaceTarget(NPC, Spawn)
        Dialog.New(NPC, Spawn)
	    Dialog.AddDialog("You back? Have you dealt with those undead?")
	    Dialog.AddOption("Yes I have, I have slain undead fighters within the Graveyard for you and Tom.", "FinishQuest1")
        Dialog.Start()
	else
	    if not HasQuest(Spawn, AreYouThereTom) then
	        FaceTarget(NPC, Spawn)
            Dialog.New(NPC, Spawn)
            Dialog.AddDialog("[Placeholder]Those damned undead.. TOM!!! Where are you!?")
            Dialog.AddOption("What are you yelling about?", "Dialog1")
            Dialog.Start()
	    end
	end
    if GetQuestStep(Spawn, NosnosProphecy)==2 then
        FaceTarget(NPC, Spawn)
	    Say(NPC, "I am not interested in hearing about Nosno's cult.That man is a creep.")
	    SetStepComplete(Spawn, NosnosProphecy, 2)
	end
end

function respawn(NPC)
	spawn(NPC)
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST Are You There Tom
--------------------------------------------------------------------------------------------------------------------------------

function Dialog1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("[Placeholder]You there, Adventurer. Could you help a poor greiving woman avenge her husband?")
    Dialog.AddOption("What do you need from me?", "AcceptedQuest1")
    Dialog.Start()
end

function AcceptedQuest1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, AreYouThereTom)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Oh thank you so much! I need you to head into the Graveyard and slay those undead fighters lurking around..You should be able to find them roaming close by the gates.")
    Dialog.AddOption("Sure, I'll slay some undead for you.")
    Dialog.Start()
end

function FinishQuest1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Say(NPC,"Thank you so much for getting revenge on those undead for me and my beloved Tom, may he rest in peace now.")
    SetStepComplete(Spawn, AreYouThereTom, 2)
end