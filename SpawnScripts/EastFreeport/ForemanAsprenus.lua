--[[
    Script Name    : SpawnScripts/EastFreeport/ForemanAsprenus.lua
    Script Author  : Xiki
    Script Date    : 2025.02.25 10:02:34
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local Quest1 = 5985
local Quest2 = 5995


function spawn(NPC)
    ProvidesQuest(NPC, Spawn, Quest1)
    ProvidesQuest(NPC, Spawn, Quest2)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if CanReceiveQuest(Spawn, Quest1) then
        Dialog.New(NPC, Spawn)
        Dialog.AddDialog("Ah a young adventurer! I Have you been to the Crossroads yet out in the Commonlands? It's a great little spot for newer adventurers, I've been told there's be alot going out in the Commonlands lately too, so perhaps an eager one like yourself could even find some work there!")
        Dialog.AddOption("I'm always up for adventure, and making some coin!", "Dialog1")
        Dialog.AddOption("Sorry. I'm not interested.", "No")
        Dialog.Start()
    elseif HasCompletedQuest(Spawn, Quest1) and CanReceiveQuest(Spawn, Quest2) then
        Dialog.New(NPC, Spawn)
        Dialog.AddDialog("Ah, it's you again. Still alive I see, if you're interested I do have some rather important matters that need attending and I could use your help.")
        Dialog.AddOption("Sure, what do you need this time.", "Dialog2")
        Dialog.AddOption("Sorry but I need to go.", "No")
        Dialog.Start()
    else
        Say(NPC, "Before you go opening your mouth, remember that I'm a citizen of Freeport. A rich one at that.")
    end
end

function respawn(NPC)
	spawn(NPC)
end

function Dialog1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Here, let me mark out your map for ya then, if you've never been there. Although it seems like it would be hard to miss... ")
    Dialog.AddOption("Wonderful, thank you!", "AcceptedQuest1")
    Dialog.Start()
end

function AcceptedQuest1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Quest1)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Sure thing, just be careful out there. The Commonlands aren't the place to be letting your guard down.")
    Dialog.AddOption("I understand. Thanks again for the warning.")
    Dialog.Start()
end

function Dialog2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("I need someone to head down to the Thieves' Way and find out what problems the sewer is having. Assist Engineer Veebert in anyway he requires, I will see to it you're rewarded for your effort's now be off.")
    Dialog.AddOption("Ah another errand to run, great. Sure why not.", "AcceptedQuest2")
    Dialog.AddOption("I'll come back another time.", "No")
    Dialog.Start()
end

function AcceptedQuest2(NPC, Spawn)
    OfferQuest(NPC, Spawn, Quest2)
    Say(NPC, "Great. Take this letter and deliver it to Veebert, and use some sense of urgency.")
end