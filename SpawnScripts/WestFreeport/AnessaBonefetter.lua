--[[
    Script Name    : SpawnScripts/WestFreeport/AnessaBonefetter.lua
    Script Author  : Xiki
    Script Date    : 2025.02.15 05:02:39
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local MessageForAnessa = 5962
local Quest2 = 6001
local Quest3 = 6002
local Quest4 = 6003

function spawn(NPC)
    ProvidesQuest(NPC, Spawn, Quest2)
    ProvidesQuest(NPC, Spawn, Quest3)
    ProvidesQuest(NPC, Spawn, Quest4)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    if HasQuest(Spawn, MessageForAnessa, 1) then
        PlayFlavor(NPC, "voiceover/english/anessa_bonefetter/fprt_west/anessa_bonefetter.mp3", "", "ponder", 3323713632, 2616012978, Spawn, 0)
        Dialog.AddDialog("Watch your step in this here tavern! This is Buccaneer territory, and I'm a second mate of Soren. You had best have good reason to intrude upon my presence.")
        Dialog.AddOption("I am here on behalf of Augurer Valgus. He asked me to deliver this to you.", "Dialog1")
        Dialog.Start()
    elseif HasQuest(Spawn, MessageForAnessa, 2) then
        Say(NPC, "Alright alright! I am going! I will report to Valgus after I finish my drink I told you!")
    elseif not HasQuest(Spawn, Quest2)  and not HasCompletedQuest(Spawn, Quest2) then
        Dialog.AddDialog("[Placeholder] What do you want now?")
        Dialog.AddOption("I was actually looking for some more work.", "Dialog5")
        Dialog.Start()
    elseif GetQuestStep(Spawn, Quest2)==2 then
        FinishQuest2(NPC, Spawn)
    elseif not HasQuest(Spawn, Quest3)  and not HasCompletedQuest(Spawn, Quest3) then
        Dialog.New(NPC, Spawn)
        Dialog.AddDialog("What do you want now?")
        Dialog.AddOption("I am looking for some more work if you need my help.", "Dialog6")
        Dialog.AddOption("Nothing nevermind.", "No")
        Dialog.Start()
    elseif not HasQuest(Spawn, Quest4)  and not HasCompletedQuest(Spawn, Quest4) then
        Dialog.New(NPC, Spawn)
        Dialog.AddDialog("What do you want now?")
        Dialog.AddOption("I am looking for some more work if you need my help.", "Dialog7")
        Dialog.AddOption("Nothing nevermind.", "No")
        Dialog.Start()
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

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 2
--------------------------------------------------------------------------------------------------------------------------------

function Dialog5(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("[placeholder] Head out to the Nektulos Forest, and kill some of the Nerius Marauders and bring me back six of their eye patches.")
    Dialog.AddOption("Sure I can handle that.", OfferQuest(NPC, Spawn, Quest2))
    Dialog.AddOption("Sorry I am busy now.", "No")
    Dialog.Start()
end

function FinishQuest2(NPC, Spawn)
    SetStepComplete(Spawn, Quest2, 2)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("[placeholder]Great you've managed to collect the eye patches. Good job, and here's your reward.")
    Dialog.AddOption("Thank you.")
    Dialog.Start()
end


--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 3
--------------------------------------------------------------------------------------------------------------------------------

function Dialog6(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/anessa_bonefetter/fprt_west/anessa_bonefetter001.mp3", "", "ponder", 2636342338, 2791552985, Spawn, 0)
    Dialog.AddDialog("Your mouth is quick, I'm sure you'll pay for this some day. For now take this message to Lollia Parnesius in East Freeport.")
    Dialog.AddOption("Sure I'll deliver your letter.", OfferQuest(NPC, Spawn, Quest3))
    Dialog.AddOption("I'm far to busy now.", "No")
    Dialog.Start()
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 4
--------------------------------------------------------------------------------------------------------------------------------

function Dialog7(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/anessa_bonefetter/fprt_west/anessa_bonefetter000.mp3", "", "ponder", 126554483, 783792117, Spawn, 0)
    Dialog.AddDialog("Take this message to the docks and give it to Sergeant Typhoeus. Dont muddle this up, it's very imporant.")
    Dialog.AddOption("Sure, I'll handle that for you.", OfferQuest(NPC, Spawn, Quest4))
    Dialog.AddOption("Deliver your own messages.", "No")
    Dialog.Start()
end
