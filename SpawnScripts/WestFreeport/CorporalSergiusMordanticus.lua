--[[
    Script Name    : SpawnScripts/WestFreeport/CorporalSergiusMordanticus.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.01.17 08:01:36
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"
require "SpawnScripts/Generic/DialogModule"

local Quest1 = 5982
local Quest2 = 5992
local Quest3 = 6000
local Quest4 = 6004


function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    FreeportGuard(NPC)
    ProvidesQuest(NPC, Spawn, Quest3)
    ProvidesQuest(NPC, Spawn, Quest4)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
        Dialog.New(NPC, Spawn)
        Dialog.AddDialog("What do you want citizen, can you not see that I am busy right now? If you have something to say spit it out or begone from my pressense. ")
    if HasCompletedQuest(Spawn, Quest3) and not HasQuest(Spawn, Quest4) then
        Dialog.AddOption("I am looking for more work, perhaps something more serious then killing bats.", "Dialog2")
        Dialog.Start()
    end
    if CanReceiveQuest(Spawn, Quest3) then
        Dialog.AddOption("I was actually wondering if you had any work for me.", "Dialog1")
        Dialog.Start()
	elseif GetQuestStep(Spawn, Quest1)==1 then
        Dialog.AddOption("I have a note for you from Lucilla in South Freeport. She asked me to deliver this to you.", "CompleteQuest1")
        Dialog.Start()
    elseif GetQuestStep(Spawn, Quest2)==1 then
        Dialog.AddOption("I have a note for you from Sirraw Swiftpaw.. He claimed it's urgent and for your eyes only.", "CompleteQuest2")
        Dialog.Start()
    elseif GetQuestStep(Spawn, Quest3)==2 then
        Dialog.AddOption("I have returned from killing the bat's as you requested, sir.", "CompleteQuest3")
        Dialog.Start()
    elseif GetQuestStep(Spawn, Quest4)==2 then
        Dialog.AddOption("I have returned from killing the Orcs.", "CompleteQuest4")
        Dialog.Start()
    else
        PlayFlavor(NPC, "corporal_sergius_mordanticus/freeport_combined/quest/militia/corporal_sergius_mordanticus_001.mp3", "", "nod", 619502190, 3143033414, Spawn, 0)
        Say(NPC, "Hail yourself! The Freeport Militia's very busy, and we have many problems to keep at bay!")
        Dialog.Start()
    end
end

function respawn(NPC)
	spawn(NPC)
end

function CompleteQuest1(NPC, Spawn)
    SetStepComplete(Spawn, Quest1, 1)
    Say(NPC, "Thank you citizen. Here take this as payment.")
end
function CompleteQuest2(NPC, Spawn)
    SetStepComplete(Spawn, Quest2, 1)
    Say(NPC, "Thank you citizen. Here take this as payment.")
end

function Dialog1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("[placeholder]Actually now that you mention it, people have been reporting being swarmed by the increasing number of bats that seem to be swarming around the city. Go out to the Commonlands and thin out the bat population. Slay ten bat's and return to me when the task is complete.")
    Dialog.AddOption("Sure, that doesn't sound to tough.", "OfferQuest3")
    Dialog.AddOption("I have better thing's to do then play exterminator.", "No")
    Dialog.Start()
end

function OfferQuest3(NPC, Spawn)
   OfferQuest(NPC, Spawn, Quest3) 
end

function CompleteQuest3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("[placeholder]Great, the mighty bat slayer has returned. I am certain the citizen's of Freeport will sleep easy tonight knowing this menace has been dealt with. Take this and be off.")
    Dialog.AddOption("I feel like you made a joke of me. Thanks for the reward and humiliation.")
    SetStepComplete(Spawn, Quest3, 2)
    Dialog.Start()
end

function Dialog2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("[placeholder]Yeah sure, we could use some help now that I know you're able to handle yourself against some bats. Why don't you try taking on some orcs? Go kill ten orc's out in the Commonlands and return to me when you have completed the task.")
    Dialog.AddOption("Sure thing!", OfferQuest(NPC, Spawn, Quest4))
    Dialog.AddOption("On second thought I'll stick with bats.", "No")
    Dialog.Start()
end

function CompleteQuest4(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("[placeholder]Glad to see you came back alive, another worth recruit for the Overlord. Take this reward and move along citizen.")
    Dialog.AddOption("Thank you.")
    SetStepComplete(Spawn, Quest4, 2)
    Dialog.Start()
end
