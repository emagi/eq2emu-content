--[[
	Script Name		:	kouryicks_missing_cargo.lua
	Script Purpose	:	Handles the quest, "Kouryick's Missing Cargo"
	Script Author	:	Xiki
	Script Date		:	2/16/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	East Freeport
	Quest Giver		:	Kouryick
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Find Kouryick's cargo on the Nerius pirates.", 1, 15, "Kouryick said the Nerius pirates are sneaky so the cargo may be hard to find or gone for good.", 75, 1790052)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	    Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Step1Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I found a manifest from Kouryick's cargo.")
    UpdateQuestTaskGroupDescription(Quest, 1, "The marauders did steal Kouryick's cargo.  I could return this manifest to him as proof.  But even more interesting is that, according to this manifest, it was a shipment of weapons destined for Qeynos!  There is mention of a militiaman named Rillian who was duped by the smuggler.  I bet he would also be interested in seeing this.")
    UpdateQuestDescription(Quest, "After returning the recovered manifest to Kouryick, he rewarded me well.  But I heard him mumble something that makes me suspect he was actually in league with those Nerius marauders somehow.")
	
	AddQuestStepChat(Quest, 2, "I found Kouryick's manifest on the pirates. ", 1, "I should return the manifest to Kouryick as proof of recovering it.", 11, 1280093)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
	
end
