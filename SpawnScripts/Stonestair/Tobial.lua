--[[
    Script Name    : SpawnScripts/Stonestair/Tobial.lua
    Script Author  : Xiki
    Script Date    : 2025.02.12 11:02:15
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local LetMeCount = 5947

function spawn(NPC)
    ProvidesQuest(NPC, LetMeCount)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if HasCompletedQuest(Spawn, LetMeCount) then
	    Say(NPC, "Thank you for your help!")
	    --OfferQuest(NPC, Spawn, LetMeCount)
	elseif GetQuestStep(Spawn, LetMeCount) == 1 then
	    Say(NPC, "Have you managed to slay those pesky Ratonga for my lovely Miala? We can't keep her waiting!")
	elseif GetQuestStep(Spawn, LetMeCount) == 2 then
	    Dialog.New(NPC, Spawn)
	    Dialog.AddDialog("Have you returned with the rats I asked of you?")
        Dialog.AddOption("Yes I have them here.", "FinishQuest1")
        Dialog.Start()
	else
	    Dialog.New(NPC, Spawn)
	    Dialog.AddDialog("Adventurer! Help a fellow out. I could make it worth your time! I simply cannot leave the tavern right now.")
        Dialog.AddOption("Sure, I always love a good adventure and rewards!", "Dialog1")
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
    PlayFlavor(NPC, "voiceover/english/tavernpatron/fprt_hood02/quests/tobial/tobial_x1_initial.mp3", "", "ponder", 4145325606, 456342211, Spawn, 0)
    Dialog.AddDialog("What?! You do not tell a Karen you like her. She'll take me for one of those prissy erudites. I must bring her a gift of food. But if I leave, another Tom may take my place. Oh, I killed two already today to keep this position. Oh, she teases me so. Miala!")
    Dialog.AddOption("If you are really that desperate, perhaps I could help you out?", "AcceptedQuest1")
    Dialog.Start()
end


function AcceptedQuest1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, LetMeCount)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/tavernpatron/fprt_hood02/quests/tobial/tobial_x1_accept.mp3", "", "nod", 1967334668, 3109708149, Spawn, 0)
    Dialog.AddDialog("Yes, then I can hold my position and still bring her a gift. I know she'd like a tasty rat. Yes, she looks like she could eat a ratonga in one bite. Go to the sprawl and bring me many rats. One for each day I have loved her. Oh, oh, my Miala... Return and I'll give you some coin.")
    Dialog.AddOption("Sure thing...")
    Dialog.Start()
end

function FinishQuest1(NPC, Spawn)
    SetStepComplete(Spawn, LetMeCount, 2)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/tavernpatron/fprt_hood02/quests/tobial/tobial_x1_finish.mp3", "", "nod", 3722850794, 2313018695, Spawn, 0)
    Dialog.AddDialog("Yes, they are still warm, too. Too bad they're not alive, though. I would kill a hundred trolls to see her play with her food. See it kick and scream as she bats at it. Oh, Miala, Miala! Here is some coin for these gifts. *Hiss* Now back off! Miala is mine!")
    Dialog.AddOption("Wow, your creepy!")
    Dialog.Start()
end