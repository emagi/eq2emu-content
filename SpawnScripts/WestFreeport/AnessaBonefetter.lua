--[[
    Script Name    : SpawnScripts/WestFreeport/AnessaBonefetter.lua
    Script Author  : Xiki
    Script Date    : 2025.02.15 05:02:39
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local MessageForAnessa = 5962

function spawn(NPC)
    
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if HasQuest(Spawn, MessageForAnessa, 1) then
        FaceTarget(NPC, Spawn)
        Dialog.New(NPC, Spawn)
        PlayFlavor(NPC, "voiceover/english/anessa_bonefetter/fprt_west/anessa_bonefetter.mp3", "", "ponder", 3323713632, 2616012978, Spawn, 0)
        Dialog.AddDialog("Watch your step in this here tavern! This is Buccaneer territory, and I'm a second mate of Soren. You had best have good reason to intrude upon my presence.")
        Dialog.AddOption("I am here on behalf of Augurer Valgus. He asked me to deliver this to you.", "Dialog1")
        Dialog.Start()
    elseif HasCompletedQuest(Spawn, MessageForAnessa) or HasQuest(Spawn, MessageForAnessa, 2) then
        Say(NPC, "Alright alright! I am going! I will report to Valgus after I finish my drink I told you!")
    else
        PlayFlavor(NPC, "voiceover/english/anessa_bonefetter/fprt_west/100_quest_human_anessa_bonefetter_callout1_66ee4d4.mp3", "", "ponder", 2590123097, 2412521446, Spawn, 0)
        Say(NPC, "What brings you to Freeport? Its a danger place for drifters and stray folk..")
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
    Dialog.AddDialog("Why didn't you say so?! Hand that over quickly you fool! Next time lead with that kind of information or you could end up hurt!")
    Dialog.AddOption("You...Never mind, here you go.", "Dialog2")
    Dialog.Start()
end

function Dialog2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Ah, I see. My old friend Javvy has fallen off for the last time it would seem. Now they want me to deal with this low life, I offered my service to them to deal with this drunk a long time ago.")
    Dialog.AddOption("Do you know Javvy or something?", "Dialog3")
    Dialog.Start()
    
end

function Dialog3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Javvy and I used to sail together years ago... He is not to be trusted and has always had loose lips and a deep love for his ale that has always caused him and those around him nothing but problems...")
    Dialog.AddOption("So what will become of Javvy?", "Dialog4")
    Dialog.Start()
end

function Dialog4(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Well, thats between Valgus and myself and does not concern the likes of some mere errand runner. You are dismissed.")
    Dialog.AddOption("I... You... How rude.")
    Dialog.Start()
    SetStepComplete(Spawn, MessageForAnessa, 1)
end