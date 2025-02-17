--[[
	Script Name		:	SpawnScripts/Stonestair/Juma.lua
	Script Author	:	Your Name
	Script Date		:	2/13/2025
	Script Purpose	:	Handles the interactions with Juma
--]]
require "SpawnScripts/Generic/DialogModule"


-- Quest ID's
local JumaAndHabikasStory = 5957

function spawn(NPC)
	ProvidesQuest(NPC, JumaAndHabikasStory)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if not HasQuest(Spawn, JumaAndHabikasStory) and not HasCompletedQuest(Spawn, JumaAndHabikasStory) then
			Dialog.New(NPC, Spawn)
            Dialog.AddDialog("Ah and adventurer! Psst! Could you do me a favor? I would do it myself but there are certain... 'restrictions' that prevent me and I would be in your debt if you could help me.")
            Dialog.AddOption("That sounds like a big favor... and what restrictions?", "Dialog1")
            Dialog.Start()
    
	elseif GetQuestStep(Spawn, JumaAndHabikasStory) == 1 then
		Say(NPC, "I'm waiting for you to deliver my letter to Habika. Don't bother coming back until you've done so.")
	elseif GetQuestStep(Spawn, JumaAndHabikasStory) == 2 then
			Dialog.New(NPC, Spawn)
            Dialog.AddDialog("Adventurer! You've returned! Did you give my letter to Habika? Did she seem pleased?")
            Dialog.AddOption("Yes, I found her and delivered your letter to her", "Dialog2")
            Dialog.Start()
	else
		Say(NPC, "Thank you, adventurer! You've done me a great service.")
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
    Dialog.AddDialog("It's not as bad as it sounds... My love, Habika and me have been driven apart by her damned parents! They think I am unworthy of her love and incapable of taking care of her... But she doesn't feel that way.. I'm certain! Please take this letter to her, her parents would have me hung if they knew I approached her after the last time her father caught me..")
    Dialog.AddOption("I can do that, nothing stands in the way of love!", "AcceptedQuest1")
    Dialog.Start()
end

function AcceptedQuest1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, JumaAndHabikasStory)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Thank you kind adventurer. You can find Habika in her room, over near the docks up the stairs from that old bag Fariola. Never did like her much... Humph! ")
    Dialog.AddOption("I'll return once I have spoke to Habika.")
    Dialog.Start()
end

function Dialog2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Thats amazing news! I bet she was happy to finally have my answer and plans to ensure we are never seperated again! Thank you adventurer. Take this small token of my gratitude.")
    Dialog.AddOption("Thanks but it was really nothing.", "FinishQuest1")
    Dialog.Start()
    
end

function FinishQuest1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn, JumaAndHabikasStory, 2)
end