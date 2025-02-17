--[[
    Script Name    : SpawnScripts/Stonestair/InnkeeperZahar.lua
    Script Author  : Xiki
    Script Date    : 2025.02.11 10:02:48
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"

local EVICTION = 5946

function spawn(NPC)
    ProvidesQuest(NPC, EVICTION)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/innkeep/fprt_hood02/street_innkeep_zahar.mp3", "Step right in, take a look at the finest properties in Freeport.", "nod",  1393289577, 1044915906, Spawn, 0)
	if HasCompletedQuest(Spawn, EVICTION) then
	    Say(NPC, "Thank you for you help!")
	elseif GetQuestStep(Spawn, EVICTION) == 1 then
	    Say(NPC, "Have you spoken with Galenus yet?")
	elseif GetQuestStep(Spawn, EVICTION) == 2 then
	    Dialog.New(NPC, Spawn)
	    Dialog.AddDialog("Have you spoken to Galenus yet?")
	    Dialog.AddOption("Yes, after speaking with Galenus he said he needs more time to pay you.", "FinishQuest1")
	    Dialog.Start()
 	else
	    Dialog.New(NPC, Spawn)
	    Dialog.AddDialog("So many rooms to be cleared out from the previous vagrants who've stayed here...")
	    Dialog.AddOption("I'm looking for a room to rent. Do you have one?", "Dialog1")
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
    PlayFlavor(NPC, "voiceover/english/innkeep/fprt_hood02/quests/inkeepzahar/zahar_x1_initial.mp3", "", "nod", 3344369250, 2855749360, Spawn, 0)
    Dialog.AddDialog("Of course I do! All of my homes are affordably priced... And considering how luxurious they are, well you just cant go wrong!")
    Dialog.AddOption("Well then, let me get a room!", "Dialog2")
    Dialog.Start()
end

function Dialog2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/innkeep/fprt_hood02/quests/inkeepzahar/zahar_x1_initial2.mp3", "", "no", 990661332, 2831555211, Spawn, 0)
    Dialog.AddDialog("Oh, you're one of those people. No, a pathetic old man named Galenus rented my last cheap property. Speaking of whom, that worthless geezer owes me rent money. Listen here. Go tell Galenus his rent is due. If he doesn't pay it, then I'll throw him out on the street, and you can rent the place. Deal?")
    Dialog.AddOption("Sure, I can talk to Galenus for you.", "AcceptedQuest1")
    Dialog.Start()
    
end

function AcceptedQuest1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, EVICTION)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/innkeep/fprt_hood02/quests/inkeepzahar/zahar_x1_accept.mp3", "", "no", 2836079362, 3032719820, Spawn, 0)
    Dialog.AddDialog("He's down by the fountain. Don't dally around. I'm a very important man, and I don't have time to wait around for you.")
    Dialog.AddOption("I'll take care of it.")
    Dialog.Start()
end

function FinishQuest1(NPC, Spawn)
    SetStepComplete(Spawn, EVICTION, 2)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/innkeep/fprt_hood02/quests/inkeepzahar/zahar_x1_finish.mp3", "", "no", 2433773916, 218862422, Spawn, 0)
    Dialog.AddDialog("I knew it. I knew if I kept charging him for rent, then I'd milk him out of all his money. I'll personally see that he is evicted. I can't wait to see the look on his face when I tell him, no rent money, no home. After I evict him, you and I can talk about renting that small shack. Here's some coin for running that errand.")
    Dialog.AddOption("That sounds.. Great, really.")
    Dialog.Start()
end
