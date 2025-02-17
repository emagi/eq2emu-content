--[[
    Script Name    : SpawnScripts/NorthFreeport/ScribeJabirMaridar.lua
    Script Author  : Xiki
    Script Date    : 2025.02.16 05:02:29
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local NoteForLusius = 5971
local ShipmentForJabir = 5972

function spawn(NPC)
    ProvidesQuest(NPC, NoteForLusius)
    ProvidesQuest(NPC, ShipmentForJabir)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if CanReceiveQuest(Spawn, NoteForLusius) then
	    Dialog.New(NPC, Spawn)
	    PlayFlavor(NPC, "voiceover/english/jabir_maridar/fprt_north/mer_jabirmaridar.mp3", "", "nod", 3193515490, 4152861529, Spawn, 0)
        Dialog.AddDialog("Hmm? I'm sorry, did you want something? I have quite a supply of scribing materials here, if you are interested.")
        Dialog.AddOption("Yes actually, I was wondering if you had any tasks I could help you with. I'm seeking work.","Dialog1")
        Dialog.Start()
    elseif GetQuestStep(Spawn, NoteForLusius)==2 then
        Dialog.New(NPC, Spawn)
        Dialog.AddDialog("Have you delivered the letter to Lusius?")
        Dialog.AddOption("Yes.","FinishQuest1")
        Dialog.Start()
    elseif HasCompletedQuest(Spawn, NoteForLusius) and CanReceiveQuest(Spawn, ShipmentForJabir) then
        Dialog.New(NPC, Spawn)
	    PlayFlavor(NPC, "voiceover/english/jabir_maridar/fprt_north/mer_jabirmaridar.mp3", "", "nod", 3193515490, 4152861529, Spawn, 0)
        Dialog.AddDialog("Hmm? I'm sorry, did you want something? I have quite a supply of scribing materials here, if you are interested.")
        Dialog.AddOption("Yes actually, I was wondering if you had anything else I can help with?","Dialog2")
        Dialog.Start()
    elseif GetQuestStep(Spawn, ShipmentForJabir)==2 then
        FaceTarget(NPC, Spawn)
        Dialog.New(NPC, Spawn)
        Dialog.AddDialog("Have you spoken with William about my shipment? I simply cannot wait any longer.")
        Dialog.AddOption("Yes I have returned from speaking with William.", "Dialog3")
        Dialog.AddOption("Nevermind.","No")
        Dialog.Start()
    else
        FaceTarget(NPC, Spawn)
        Dialog.New(NPC, Spawn)
        Dialog.AddDialog("Sorry but I am terribly busy at the moment.")
        Dialog.AddOption("Nevermind.","No")
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
    PlayFlavor(NPC, "voiceover/english/jabir_maridar/fprt_north/mer_jabirmaridar002.mp3", "", "nod", 3364445932, 403831483, Spawn, 0)
    Dialog.AddDialog("I could use your help. Take this message to Banker Lusius Ulixes. I'm sure you can handle this simple task.")
    Dialog.AddOption("Sure, I could do that I suppose. ", "AcceptedQuest1")
    Dialog.AddOption("On second thought...","No")
    Dialog.Start()
end

function AcceptedQuest1(NPC, Spawn)
    OfferQuest(NPC, Spawn, NoteForLusius)
end

function FinishQuest1(NPC, Spawn)
    SetStepComplete(Spawn, NoteForLusius, 2)
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 2
--------------------------------------------------------------------------------------------------------------------------------

function Dialog2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/jabir_maridar/fprt_north/mer_jabirmaridar000.mp3", "", "nod", 4244723176, 4064370778, Spawn, 0)
    Dialog.AddDialog("I could use your help. I am the personal supplier for the Overlord's scribes. I sell only the finest materials. In the past, my supplier, Merchant William, was very reliable, but unfortunately our relationship has soured. I need you to find Merchant William in the commonlands and return with my shipment.")
    Dialog.AddOption("Sure, I'll go speak with William.", "AcceptedQuest2")
    Dialog.Start()
end

function Dialog3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Well then, hurry up and hand it over. I do not have time to be wasted on this matter any further, people have real expectations out of me unlike some chore boy...")
    Dialog.AddOption("Why you... Your ungrateful! Wheres the reward you mentioned?", "FinishQuest2")
    Dialog.Start()
    
end

function AcceptedQuest2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, ShipmentForJabir)
end

function FinishQuest2(NPC, Spawn)
    SetStepComplete(Spawn, ShipmentForJabir, 2)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/jabir_maridar/fprt_north/mer_jabirmaridar001.mp3", "", "nod", 1100189173, 703240436, Spawn, 0)
    Dialog.AddDialog("Your reward? My gratitude is more than enough reward for such a simple task. I hope you told William I'm disappointed with his services.")
    Dialog.AddOption("I told him, but its not more then I am disappointed in yours!")
    Dialog.Start()
end