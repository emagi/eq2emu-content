--[[
    Script Name    : SpawnScripts/EastFreeport/DyricPire.lua
    Script Author  : Xiki
    Script Date    : 2025.03.04 10:03:32
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local Quest1 = 6014
local Quest2 = 6015
local Quest3 = 6016
local Quest4 = 6017
local Quest5 = 6018
local Quest6 = 6019


function spawn(NPC)
    ProvidesQuest(NPC, Spawn, Quest1)
    ProvidesQuest(NPC, Spawn, Quest2)
    ProvidesQuest(NPC, Spawn, Quest3)
    ProvidesQuest(NPC, Spawn, Quest4)
    ProvidesQuest(NPC, Spawn, Quest5)
    ProvidesQuest(NPC, Spawn, Quest6)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	if HasQuest(Spawn, Quest1) and not HasCompletedQuest(Spawn, Quest1) then
	    PlayFlavor(NPC, "voiceover/english/dyric_pire/fprt_east/quests/qst_dyric_pire/dyric_pire005.mp3", "Why are you back? Did you do what I asked?  No?  Then get out of here, whelp. Don't come back until you're finished.", "nod", 3050300851, 2513349709, Spawn, 0)    
	elseif CanReceiveQuest(Spawn, Quest1) then
        PlayFlavor(NPC, "voiceover/english/dyric_pire/fprt_east/quests/qst_dyric_pire/dyric_pire001.mp3", "", "nod", 3701303021, 1797256872, Spawn, 0)
        Dialog.AddDialog("Look, I'm extremely busy and I don't have time for idle chat. Either help me, or bother someone who's more patient.")
        Dialog.AddOption("If you had a task I could prove my use.", "Dialog1")
        Dialog.AddOption("I've already had enough of you.", "No")
    Dialog.Start()
    end
end

function respawn(NPC)
	spawn(NPC)
end

function Dialog1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/dyric_pire/fprt_east/quests/qst_dyric_pire/dyric_pire002.mp3", "", "nod", 3749798775, 3286677616, Spawn, 0)
    Dialog.AddDialog("Hmmm ... Yes, perhaps you can help me after all. I'm working on a new technique to create armor. Before I can continue, I need to pick up some items, but I'm much too busy to do it myself. Perhaps you can help me--I'll give you one of my top-of-the-line, cold-forged sets of armor!")
    Dialog.AddOption("That sounds great. What do you want me to do?", "Dialog2")
    Dialog.AddOption("No, I'm not interested right now.", "No")
    Dialog.Start()
end

function Dialog2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/dyric_pire/fprt_east/quests/qst_dyric_pire/dyric_pire003.mp3", "", "nod", 3821248598, 1506569560, Spawn, 0)
    Dialog.AddDialog("Let's start with the basics.  If you survive, then I'll give you a more difficult task.")
    Dialog.AddOption("That's reasonable, if basics will protect my hands.", "OfferQuest1")
    Dialog.AddOption("Find someone else for this, I'm not interested.", "No")
    Dialog.Start()
end

function OfferQuest1(NPC, Spawn)
    OfferQuest(NPC, Spawn, Quest1)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/dyric_pire/fprt_east/quests/qst_dyric_pire/dyric_pire004.mp3", "", "nod", 1907847328, 2132139184, Spawn, 0)
    Dialog.AddDialog("Fair enough.  I need very specific materials for the armor I'm creating.  It's taken me years to perfect the formula, but I'm sure I have it right this time. Hand me your journal, and I'll write down what I need.  After you gather these components, bring them back and we'll see if the other adventurers I sent out make it back alive.")
    Dialog.AddOption("I'll return when I've collected what you require.")
    Dialog.Start()
end

function Dialog3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("")
    Dialog.AddOption("", "Dialog2")
    Dialog.AddOption("", "No")
    Dialog.Start()
end

function Dialog4(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("")
    Dialog.AddOption("", "AcceptedQuest1")
    Dialog.AddOption("", "No")
    Dialog.Start()
end
