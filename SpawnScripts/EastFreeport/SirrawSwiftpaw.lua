--[[
    Script Name    : SpawnScripts/EastFreeport/SirrawSwiftpaw.lua
    Script Author  : Xiki
    Script Date    : 2025.02.25 11:02:12
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local Quest1 = 5992
local Quest2 = 6013

function spawn(NPC)
    ProvidesQuest(NPC, Spawn, Quest1)
    ProvidesQuest(NPC, Spawn, Quest2)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog1(NPC, Spawn)
	Say(NPC, "I'm Sirraw Swiftpaw of the Seafuries. I know everything important that happens in this city. I know nothing of you, therefore you're not important. Leave!")

end

function respawn(NPC)
	spawn(NPC)
end

function Dialog1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Hey you! Long leg, come over here.. I need a hand.")
    if CanReceiveQuest(Spawn, Quest1) then
    Dialog.AddOption("Who are you insulting? What do you want...", "Dialog2")
    end
    if CanReceiveQuest(Spawn, Quest2) then
        Dialog.AddOption("What do you need from me...?", "Dialog3")
    end
    Dialog.AddOption("Sorry I am not interested in talking Rats.", "No")
    Dialog.Start()
end

function Dialog2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Don't take it personally! Hey do me a favor and bring this letter to Sergius Mordanticus, he's outside the Militia house in West Freeport. The Seafuries will make it worth your while.")
    Dialog.AddOption("Sure... I can do that, is that all?", "AcceptedQuest1")
    Dialog.AddOption("I am not interested.", "No")
    Dialog.Start()
end

function AcceptedQuest1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Quest1)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Yeah that's all I need. I just can't leave my post right now or I would deliver it myself. It's urgent and it's for Sergius' eyes only! So keep your nose out of that letter! He will know if it's been tampered with.")
    Dialog.AddOption("Right.. Like I care what it says...")
    Dialog.Start()
end

function Dialog3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("I need you to head out to the Sunken City and dispatch some of those undead lurking around. Six of them should be enough for me to get in there and check out that Shrine of Prexus a bit closer!")
    Dialog.AddOption("Six undead, coming right up.", "AcceptedQuest2")
    Dialog.AddOption("I dont have time for securing your interests...", "No")
    Dialog.Start()
end

function AcceptedQuest2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Quest2)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Great, return to me once you have cleaned up the mess for me and I'll have a small reward for you waiting.")
    Dialog.AddOption("How thoughtful of you, assuming I live...")
    Dialog.Start()
end