--[[
    Script Name    : SpawnScripts/EastFreeport/ScribeZizwold.lua
    Script Author  : Xiki
    Script Date    : 2025.02.26 10:02:27
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local Quest1 = 5994

function spawn(NPC)
    ProvidesQuest(NPC, Spawn, Quest1)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if CanReceiveQuest(Spawn, Quest1) then 
	    Dialog.New(NPC, Spawn)
        Dialog.AddDialog("Finally! You've arrived! Take this and go quickly! Remember, gather the items exactly as I've specified on the list! Do not compromise with the quality! Now, I don't want to hear anything about payment until you've returned!")
        Dialog.AddOption("Huh? Who are you expected...? I suppose I could gather that stuff, I will be expecting that payment though!", "OfferQuest1")
        Dialog.AddOption("No, no, no! I'm not getting involved in random business anymore!!!", "No")
        Dialog.Start()
    elseif GetQuestStep(Spawn, Quest1)==4 then
        FaceTarget(NPC, Spawn)
        Dialog.New(NPC, Spawn)
        Dialog.AddDialog("Have you returned with the items? We cannot delay any longer!")
        Dialog.AddOption("Yes I have them right here for you.", "FinishedQuest1")
        Dialog.Start()
    else
        
    end
end

function respawn(NPC)
	spawn(NPC)
end

function OfferQuest1(NPC, Spawn)
   OfferQuest(NPC, Spawn, Quest1) 
end

function FinishedQuest1(NPC, Spawn)
    Say(NPC, "Great its about time! I've been waiting far to long! Take this as payment for your service. Now leave my sight, I have very important issue to tend to.")
    SetStepComplete(Spawn, Quest1, 4) 
end