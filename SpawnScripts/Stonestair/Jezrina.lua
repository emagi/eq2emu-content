--[[
	Script Name		:	SpawnScripts/Stonestair/Jezrina.lua
	Script Author	:	Xiki
	Script Date		:	2/13/2025
	Script Purpose	:	Handles the interactions with Jezrina
--]]
require "SpawnScripts/Generic/DialogModule"


-- Quest ID's
local JezrinasProphecy = 5954

function spawn(NPC)
    ProvidesQuest(NPC, JezrinasProphecy)
    SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")		
end

function InRange(NPC,Spawn)
    RandomGreeting(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if not HasQuest(Spawn, JezrinasProphecy) then
		Dialog.New(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/jezrina/fprt_hood02/20_streetfortuneteller_callout_b0a8c048.mp3", "", "nod",  1328150242, 529176628, Spawn, 0)
        Dialog.AddDialog("I must find the one! You seek to know your fortune do you not?")
        Dialog.AddOption("Of course I do, but whats the cost?", "AcceptedQuest1")
        Dialog.Start()
    
	elseif GetQuestStep(Spawn, JezrinasProphecy) == 1 then
		Say(NPC, "I'm waiting for you to bring me that tumor-infested heart. Don't bother coming back until you have it.")
	elseif GetQuestStep(Spawn, JezrinasProphecy) == 2 then
        Dialog.New(NPC, Spawn)
        Dialog.AddDialog("You have it! The tumor-infested heart. Now we can begin the ritual! Are you prepared?")
        Dialog.AddOption("Yes, what must I do?", "FinalDialog1")
        Dialog.Start()	    
	end
end

function respawn(NPC)
	spawn(NPC)
end

function RandomGreeting(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/jezrina/fprt_hood02/street_fortune_teller_jezrina.mp3", "You! Come to me! You have weaves of strength about you. Destiny heaves and bellows in the scouring lines within your presence. What makes you so special, young one?", "beckon", 2880871151, 250719269, Spawn, 0)
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 1
--------------------------------------------------------------------------------------------------------------------------------


function AcceptedQuest1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, JezrinasProphecy)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/fortuneteller/fprt_hood02/quests/jezrina/jezrina_x1_accept.mp3", "", "nod", 3510270197, 2345655871, Spawn, 0)
    Dialog.AddDialog("To pierce the veil of fate that conceals you, I need the heart of a squalid vermin. Not any heart will do, though. It must be a heart bursting with pestilence and tumors. When you find it, you must hold it in your mouth. Let its dark energy merge with your being. Bring the cancerous heart to me, and I shall see more.")
    Dialog.AddOption("That sounds like a great time to me...")
    Dialog.Start()
end

function FinalDialog1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/fortuneteller/fprt_hood02/quests/jezrina/jezrina_x1_finish.mp3", "", "crazy", 283269250, 3500629533, Spawn, 0)
	Dialog.AddDialog("No, not yet. I am beginning to see through the veil. Yes, you are a catalyst of great change. With what change? I must see more. The shadows are hiding. *gasp* Can it be? Did I just see? The veil is nearly parted. Chew and swallow the heart. I must see if you are the one. Chew it now, fool!")
	Dialog.AddOption("*chew the heart*", "FinalDialog2")
    Dialog.Start()
end

function FinalDialog2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/fortuneteller/fprt_hood02/quests/jezrina/jezrina_x1_finish2.mp3", "", "scream", 1607961607, 2169343946, Spawn, 0)
	Dialog.AddDialog("Yes! The veil lifts as I speak! GASP! SIGH! Yes! It's exactly as I thought! Young one, much awaits you! There will be choices, and you may reach in and have the snake bite you!")
	Dialog.AddOption("That was disgusting! But what do you see?!", "FinalDialog3")
    Dialog.Start()
    
end

function FinalDialog3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/fortuneteller/fprt_hood02/quests/jezrina/jezrina_x1_finish3.mp3", "", "snicker", 3739030713, 3446011172, Spawn, 0)
    Dialog.AddDialog("Some secrets must remain in shadow. Had I any feelings, I would feel sorry for you. That is all.")
    Dialog.AddOption("What does that even mean!? Why did I eat that disgusting thing?!", "FinishQuest1")
    Dialog.Start()
    
end

function FinishQuest1(NPC, Spawn)
    SetStepComplete(Spawn, JezrinasProphecy, 2)
end