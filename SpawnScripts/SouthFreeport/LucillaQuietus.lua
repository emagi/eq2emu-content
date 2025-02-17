--[[
    Script Name    : SpawnScripts/SouthFreeport/LucillaQuietus.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.25 07:06:19
    Script Purpose : 
    Script Notes   :  New to add missing dialog for quest "Reward For A Missing Music Box".
--]]
require "SpawnScripts/Generic/DialogModule"

local  RewardForAMissingMusicBox = 5261
local HuntingHenchmen = 5979
local MessageForValary = 5981

function spawn(NPC)
    ProvidesQuest(NPC, Spawn, HuntingHenchmen)
    ProvidesQuest(NPC, Spawn, MessageForValary)
end

function hailed(NPC, Spawn)
    if HasQuest(Spawn, RewardForAMissingMusicBox) then
        Dialog1(NPC, Spawn)
    elseif HasCompletedQuest(Spawn, RewardForAMissingMusicBox) then
        Dialog5(NPC, Spawn)
    elseif GetQuestStep(Spawn, HuntingHenchmen)==2 then
        FaceTarget(NPC, Spawn)
    	Dialog.New(NPC, Spawn)
    	Dialog.AddDialog("Did you deal with those thieves?")
        PlayFlavor(NPC,"","","ponder",0,0,Spawn)
    	Dialog.AddOption("Yes, I killed a handful of them. They should be less of a problem, now where's my reward?","FinishQuest2")
    	Dialog.Start()
    elseif CanReceiveQuest(Spawn, HuntingHenchmen) or CanReceiveQuest(Spawn, MessageForValary) then
        Dialog5(NPC, Spawn)
    else
    end
end

function respawn(NPC)
	spawn(NPC)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Either buy something or get out of the way!")
	Dialog.AddVoiceover("voiceover/english/optional1/weaponsmith_lucilla_quietus/fprt_south/100_questlucillaquietus_callout1_3d9a231a.mp3", 3790442270, 2463491720)
    PlayFlavor(NPC,"","","sniff",0,0,Spawn)
    if GetQuestStep(Spawn,RewardForAMissingMusicBox)==1 then
	Dialog.AddOption("Actually, I found a note with your name on it. Give me a few coins and you can have it.It looks like I've come across something with your name on it.  You may be interested in this music box.","Dialog2")
    end
    Dialog.AddOption("Well, show me your wares then!")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The ratonga thieves took that music box from me!  I demand you give it to me this instant! ")
    PlayFlavor(NPC,"","","boggle",0,0,Spawn)
	Dialog.AddOption("For the right price, its yours.","Dialog3")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Are you always this infuriating?! Here. Take these few coins I have and give me the box!")
    PlayFlavor(NPC,"","","frustrated",0,0,Spawn)
    Dialog.AddOption("Deal.", "Dialog4")
    Dialog.AddOption("On second thought, nevermind. I'll keep it.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Finally! Give it here... It seems the nameplate hasn't been opened... and... Ah, hah! Yes! I can't believe neither you nor the filthy thief found my savings! Five years worth of business could have slipped through my fingers. Enjoy your copper \"friend\". Hahaha!")
    PlayFlavor(NPC,"","","happy",0,0,Spawn)
    Dialog.AddOption("Err...")
	Dialog.Start()
	SetStepComplete(Spawn, RewardForAMissingMusicBox, 1)
end

function Dialog5(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("You look strong, perhaps you can help me out with dealing some other work I have to offer.")
    if CanReceiveQuest(Spawn, HuntingHenchmen) then
        Dialog.AddOption("I could help, as long as theres something in it for me.", "Dialog6")
    elseif CanReceiveQuest(Spawn, MessageForValary) then
        Dialog.AddOption("I could help, as long as theres something in it for me.", "Dialog7")
    end
    Dialog.AddOption("Sorry but I dont have time.", "No")
    Dialog.Start()
end

function Dialog6(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Great, I need you to head out to the Edgewater Drains, I believe the thieves hideout there. Thin out there numbers to show them that we aren't messing around anymore. Return to me if you make it out of there alive and I'll have a reward for you.")
    Dialog.AddOption("That sounds fun... Risking my neck for more merchants...Sure why not.", "AcceptedQuest2")
    Dialog.AddOption("I've got better things to do.", "No")
    Dialog.Start()
    
end

function AcceptedQuest2(NPC, Spawn)
    OfferQuest(NPC, Spawn, HuntingHenchmen)
end

function FinishQuest2(NPC, Spawn)
    SetStepComplete(Spawn, HuntingHenchmen, 2)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Your efforts help, but they reproduce like ratonga.. I'm sure we'll have more thieves to deal within before the months end. But thank you, and as promised your reward.")
    Dialog.AddOption("Next time, dont let them steal your wares perhaps.")
    Dialog.Start()
end

function Dialog7(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("It's nothing difficult, you should manage just fine... Take this letter to Merchant Valary for me. She can be found in the Commonlands at the crossroads, probably.")
    Dialog.AddOption("Sure, I love a good run through the Commonlands so a merchant doesn't have to!", "AcceptedQuest3")
    Dialog.AddOption("sorry I'm not in the mood for errands today.", "No")
    Dialog.Start()
end

function AcceptedQuest3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, MessageForValary)
end
