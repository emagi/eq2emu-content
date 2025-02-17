--[[
    Script Name    : SpawnScripts/SouthFreeport/ArmorsmithNipiusMalchus.lua
    Script Author  : Xiki
    Script Date    : 2025.02.16 11:02:53
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"

local ArmadilloHides = 5976
local ArmorDelivery = 5977

function spawn(NPC)
    ProvidesQuest(NPC, ArmadilloHides)
    ProvidesQuest(NPC, ArmorDelivery)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if not HasCompletedQuest(Spawn, ArmadilloHides) and CanReceiveQuest(Spawn, ArmadilloHides) then
	    FaceTarget(NPC, Spawn)
        Dialog.New(NPC, Spawn)
	    PlayFlavor(NPC, "voiceover/english/nipius_malchus/fprt_south/nipiusmalchus000.mp3", "", "nod", 266175188, 3990993797, Spawn, 0)
        Dialog.AddDialog("Hail to you as well.  Forgive me if we've met before...  I'm a little distracted.  I've more custom orders for armor then I've the tradesmen to match.")
        Dialog.AddOption("My name is "..GetName(Spawn)..". And I since your busy, perhaps I could help you out?", "Dialog1")
        Dialog.Start()
    elseif GetQuestStep(Spawn, ArmadilloHides)==1 then
        Dialog.New(NPC, Spawn)
        Dialog.AddDialog("Have you collected the hides required? If not then I have no futher use for you...")
        Dialog.AddOption("I am still gathering them.", "No")
        Dialog.Start()
    elseif GetQuestStep(Spawn, ArmadilloHides)==2 then
        Dialog.New(NPC, Spawn)
        Dialog.AddDialog("Have you collected the hides required? If not then I have no futher use for you...")
        Dialog.AddOption("Yes I have them all right here.", "FinishQuest1")
        Dialog.Start()
    elseif HasCompletedQuest(Spawn, ArmadilloHides) and CanReceiveQuest(Spawn, ArmorDelivery) then
        Dialog.New(NPC, Spawn)
        Dialog.AddDialog("Still so much to do...")
        Dialog.AddOption("Perhaps I can help you some more, for a price.", "Dialog2")
        Dialog.Start()
    elseif GetQuestStep(Spawn, ArmorDelivery)==2 then
        Dialog.New(NPC, Spawn)
        Dialog.AddDialog("Have you spoken with Darrius yet?")
        Dialog.AddOption("Yes. I have delivery his armor to him. What about my reward?", "FinishQuest2")
        Dialog.Start()
    elseif HasCompletedQuest(Spawn, ArmadilloHides) and HasCompletedQuest(Spawn, ArmorDelivery) then
        Say(NPC, "Sorry but I am busy, please do not bother me.")
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
    PlayFlavor(NPC, "voiceover/english/nipius_malchus/fprt_south/nipiusmalchus001.mp3", "", "nod", 3934698461, 2661004240, Spawn, 0)
    Dialog.AddDialog("The armor makers of the city are working on a new, cheaper type of armor.  To make the gear they need armadillo hides and lots of them.  Go and bring me the carcasses of the filthy beasts.  You'll find them living outside the city in the Commonlands.")
    Dialog.AddOption("Sure I could do that", "AcceptedQuest1")
    Dialog.Start()
end

function AcceptedQuest1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, ArmadilloHides)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Great. Return to me once you have collected the hides. Roughly 15 should be just fine for now. I'll even make you a little something in exchange for your hard work.")
    Dialog.AddOption("Great! I'll return once I have the hides.")
    Dialog.Start()
end

function FinishQuest1(NPC, Spawn)
    SetStepComplete(Spawn, ArmadilloHides, 2)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Outstanding. Here take this as a token of my thanks. This will help the Armorer's work on some orders in the mean time. Speak to me again if your looking for some more work.")
    Dialog.AddOption("Sure. Thank you.")
    Dialog.Start()
end
--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 2
--------------------------------------------------------------------------------------------------------------------------------

function Dialog2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/armorsmith_nipius_malchus/fprt_south/nipiusmalchus003.mp3", "", "nod", 2207113659, 2092128035, Spawn, 0)
    Dialog.AddDialog("Now that would be a big help. Um, but wait just a moment. How do I know I can trust you with this armor? Ah, no matter. If it isn't delivered to Darius over in West Freeport, I'll put a price on your head worth ten times the price of the armor. So don't think about stealing from me. It won't be worth it.")
    Dialog.AddOption("I wouldnt't dream of it... ", "AcceptedQuest2")
    Dialog.AddOption("On second thought I'm busy right now.","No")
    Dialog.Start()
end

function AcceptedQuest2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, ArmorDelivery)
end

function FinishQuest2(NPC, Spawn)
    SetStepComplete(Spawn, ArmorDelivery, 2)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/nipius_malchus/fprt_south/nipiusmalchus002.mp3", "", "nod", 3589959546, 2183078217, Spawn, 0)
    Dialog.AddDialog("Take this. And never forget the generocity I've shown you.")
    Dialog.AddOption("What kind of reward is this?!")
    Dialog.Start()
end