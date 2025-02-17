--[[
    Script Name    : SpawnScripts/NorthFreeport/ConsternatorSoulinus.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 01:06:48
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local DismalTidings = 5958
local TheMouthofEvil = 5959

function spawn(NPC)
    ProvidesQuest(NPC, DismalTidings)
    ProvidesQuest(NPC, TheMouthofEvil)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if not HasQuest(Spawn, DismalTidings) and not HasCompletedQuest(Spawn, DismalTidings) then
	    Dialog.New(NPC, Spawn)
	    Dialog.AddDialog("You there, underling I have task for you.")
        Dialog.AddOption("What can I do for you?", "Dialog1")
        Dialog.Start()
    elseif HasQuest(Spawn, DismalTidings, 2) then
        Dialog.New(NPC, Spawn)
	    Dialog.AddDialog("Wondeful, you have returned. What were your findings out there? Tell me quickly, if the situation is bad we must act fast.")
        Dialog.AddOption("The situation was looking pretty bad, theres undead everywhere!", "FinishQuest1")
        Dialog.Start()
    elseif HasCompletedQuest(Spawn, DismalTidings) and not HasQuest(Spawn, TheMouthofEvil) and not HasCompletedQuest(Spawn, TheMouthofEvil) then
        Dialog.New(NPC, Spawn)
	    Dialog.AddDialog("I have another task for you adventurer. Quickly speak with me.")
        Dialog.AddOption("How can I help?", "Dialog3")
        Dialog.AddOption("Sorry I am to busy","No")
        Dialog.Start()
    elseif HasQuest(Spawn, TheMouthofEvil, 2) then
        Dialog.New(NPC, Spawn)
	    Dialog.AddDialog("I am glad to see you have returned to us once again. What do you have to report to this time.")
        Dialog.AddOption("There was undead surrounding the entrance of the cave as well.", "FinishQuest2")
        Dialog.Start()
        
    else
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1003.mp3", "I am busy. Maybe when I'm done with my current work I'll send for you. Until then, leave me be.", "no", 0, 0, Spawn, 0)
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
    Dialog.AddDialog("The Temple of War has been receiving reports of a growing threat of undead out in the Commonlands, we believe this is the work of necromancers in the area however we need someone to go and investigate. Are you willing to serve The Temple of War?")
    Dialog.AddOption("Tell me what I need to do.", "Dialog2")
    Dialog.AddOption("I cant offer my services right now.","No")
    Dialog.Start()
end

function Dialog2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("We have thought to believe a group of rogue necromancers is at work, please head out to the cemetary west of the Crossroads, just south of the river. Investigate the mausoleum and then report back to me with your findings.")
    Dialog.AddOption("Is there anything I should consider before hand?", "AcceptedQuest1")
    Dialog.AddOption("On second thought, I have other things I need to do.", "No")
    Dialog.Start()
    
end

function AcceptedQuest1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, DismalTidings)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Just try now to get closer then you need to as we dont know what we're dealing with yet. Also, if we dont receive a report within a a day or two's time, we will assume you have perished.")
    Dialog.AddOption("Thanks, thats reassuring.")
    Dialog.Start()
end

function FinishQuest1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Say(NPC, "Just as we had suspected.. I bet those necromancers from the Academy are behind this. Speak with me again when you are ready, we could use your service again if you welcome the challenge.")
    SetStepComplete(Spawn, DismalTidings, 2)
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 2
--------------------------------------------------------------------------------------------------------------------------------

function Dialog3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("I believe this problem is wider spread then we initially thought. I need you to head to the Wailing Caves entrance and scout the area once again for me. Once you have done so return to me with your report. Make haste as the situation may be more dire then we know.")
    Dialog.AddOption("I will return as quickly as I can!", "AcceptedQuest2")
    Dialog.AddOption("On second thought, my feet hurt.","No")
    Dialog.Start()
end


function AcceptedQuest2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, TheMouthofEvil)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Thank you again adventurer. Be safe on your mission.")
    Dialog.AddOption("Thank you Constenator.")
    Dialog.Start()
end

function FinishQuest2(NPC, Spawn)
    SetStepComplete(Spawn, TheMouthofEvil, 2)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Damn! Thank you for this information. The Temple of War will have to act swiftly. I must inform Lucan D'Lere of this situation at once. Thank you adventurer. I must leave at once to notify the council, here is a small token of my gratitude for the work you have done.")
    Dialog.AddOption("I was happy to help")
    Dialog.Start()
end