--[[
    Script Name    : SpawnScripts/SouthFreeport/ClaraMaius.lua
    Script Author  : Dorbin
    Script Date    : 2022.03.21 03:03:15
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")
require "SpawnScripts/Generic/DialogModule"


local Quest1 = 5983

function spawn(NPC)
    ProvidesQuest(NPC, Spawn, Quest1)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericEcologyHail(NPC, Spawn, faction)
    if not HasQuest(Spawn, Quest1) and not HasCompletedQuest(Spawn, Quest1) then
        FaceTarget(NPC, Spawn)
        Dialog.New(NPC, Spawn)
        Dialog.AddDialog("Greetings adventurer. What can I do for you?")
        Dialog.AddOption("I was wondering if you had any work that needed to be done?", "Dialog1")
        Dialog.AddOption("Nothing, sorry to bother you.", "No")
        Dialog.Start()
    elseif GetQuestStep(Spawn, Quest1)==4 then
        FaceTarget(NPC, Spawn)
        Dialog.New(NPC, Spawn)
        Dialog.AddDialog("Finally, I've been expecting your return. Did you manage to collect the offerings?")
        Dialog.AddOption("Yes I have them right here.", "FinishQuest1")
        Dialog.Start()
    else 
        FaceTarget(NPC, Spawn)
        GenericEcologyHail(NPC, Spawn, faction)
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
    Dialog.AddDialog("Actually, now that you mention it I could use somebody like you. I need to collect offerings for the Dismal Rage, perhaps you can help me out? I could make it worth your while of course.")
    Dialog.AddOption("Sure, what do you need me to do?", "Dialog2")
    Dialog.AddOption("Sorry but I have to go.", "No")
    Dialog.Start()
end

function Dialog2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("The Dismal Rage will be pleased with my service, and your help of course... I need you to find Missionary G`Zule, he's stationed near the Temple of War. Then you should seek out Bruccius Capito on the docks of East Freeport, and lastly Magia Cotta. She is a banker in West Freeport. Once you have collected these 'offerings' from them, bring their offerings back to me and I will reward you for your efforts.")
    Dialog.AddOption("Deal. I'll return once I've collected these offerings.", "AcceptedQuest1")
    Dialog.AddOption("Sorry but I have other things to do.", "No")
    Dialog.Start()
    
end

function AcceptedQuest1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Quest1)
    Dialog.New(NPC, Spawn)
    Say(NPC, "Great, I will be here waiting for your return. Make haste and don't keep me waiting long, I dont have all day.")
    Dialog.Start()
end

function FinishQuest1(NPC, Spawn)
    SetStepComplete(Spawn, Quest1, 4)
    FaceTarget(NPC, Spawn)

end