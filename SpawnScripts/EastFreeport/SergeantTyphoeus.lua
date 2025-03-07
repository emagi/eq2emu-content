--[[
    Script Name    : SpawnScripts/EastFreeport/SergeantTyphoeus.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.01.22 02:01:36
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"
require "SpawnScripts/Generic/DialogModule"

local Quest1 = 5993
local Quest2 = 5996
local Quest3 = 6003

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    FreeportGuard(NPC)
    ProvidesQuest(NPC, Spawn, Quest1)
    ProvidesQuest(NPC, Spawn, Quest2)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("What're you looking at?! Are you even supposed to be here?")
    PlayFlavor(NPC, "voiceover/english/sergeant_typhoeus/fprt_east/qst_typhoeus.mp3", "", "shoo", 64175540, 1491057960, Spawn, 0)
    if GetQuestStep(Spawn, Quest3)==1 then
        Dialog.AddOption("I have a letter from you from Anessa Bonefetter", "Dialog4")
    end
    if CanReceiveQuest(Spawn, Quest1) and not HasCompletedQuest(Spawn, Quest1) and not HasCompletedQuest(Spawn, Quest2) then
        Dialog.AddOption("I am looking for some work. I am in need of training my skills. Perhaps you have some work that I could do?", "Dialog1")
        Dialog.AddOption("Right. Goodbye.", "No")
    elseif GetQuestStep(Spawn, Quest1)==2 then
        Dialog.AddOption("I have returned from your... Training task.. I think you were trying to get me killed on purpose out there! What's your problem!", "Dialog2")
    elseif GetQuestStep(Spawn, Quest2)==2 then
        Dialog.AddOption("I have bought back the tattered orc armor you requested... I hope this will be enough for the payment of my earlier outburst.", "Dialog3")
    elseif HasCompletedQuest(Spawn, Quest1) and not HasQuest(Spawn, Quest2) then
        OfferQuest(NPC, Spawn, Quest2)
        Say(NPC, "I thought I told you already. If you want to keep your citizenship, you best return me some tattered orc armor, it will count as payment for your insolence earlier.")
    else
	    
    end
    Dialog.Start()
end

function respawn(NPC)
	spawn(NPC)
end

function Dialog1(NPC, Spawn)
    	FaceTarget(NPC, Spawn)
        Dialog.New(NPC, Spawn)
        PlayFlavor(NPC, "voiceover/english/sergeant_typhoeus/fprt_east/qst_typhoeus001.mp3", "", "laugh", 3194016251, 1287523443, Spawn, 0)
        Dialog.AddDialog("Hah! Dont make me laugh, so you want to improve your skills huh? Well then, go kill some putrid zombies in the graveyard. That'll improve your skills, or kill you.")
        Dialog.AddOption("I don't know if you are trying to get me killed or not, but I'll return once I have completed your task..")
        Dialog.AddOption("On second thought, I need to get going.", "No")
        Dialog.Start()
        OfferQuest(NPC, Spawn, Quest1)
end

function Dialog2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/sergeant_typhoeus/fprt_east/qst_typhoeus002.mp3", "", "nod", 1512917371, 1931479981, Spawn, 0)
    Dialog.AddDialog("Watch your tongue! For showing such disrespect, perhaps I'll relieve you of your citizenship papers and throw you back to the districts! In fact, unless you take care of our little orc problem in the ruins, I'll do just that. Understand, peasant? And I'll need proof of your accomplishment. Let's see. Yes. I'll need tattered armor from an orc.")
    SetStepComplete(Spawn, Quest1, 2)
    if CanReceiveQuest(Spawn, Quest2) then
        OfferQuest(NPC, Spawn, Quest2)
    end
    Dialog.Start()
end

function Dialog3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/sergeant_typhoeus/fprt_east/qst_typhoeus003.mp3", "", "nod", 599673979, 1153483254, Spawn, 0)
    Dialog.AddDialog("You understand the unwritten laws of Freeport well...As you kept your citizenship you're free to go, but watch your step.")
    Dialog.AddOption("Thank you Sergeant.")
    Dialog.Start()
    SetStepComplete(Spawn, Quest2, 2)
end

function Dialog4(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("[Placeholder] Great, I have been waiting for word from her. Thank you for delivering this but be on your way citizen.")
    Dialog.AddOption("Thank you Sergeant.")
    Dialog.Start()
    SetStepComplete(Spawn, Quest3, 1)
end
