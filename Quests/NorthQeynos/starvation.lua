--[[
	Script Name		:	starvation.lua
	Script Purpose	:	Handles the quest, "Starvation"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	3/13/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	City Tasks
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Tallon warpriests.", 18, 100, "I need to disrupt a ritual by slaying Tallon warpriests within the Orcish Wastes.", 611, 1900084)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
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
	UpdateQuestStepDescription(Quest, 1, "I killed Tallon warpriests.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I disrupted a ritual by slaying Tallon warpriests.")

	UpdateQuestDescription(Quest, "The orcs have been unable to gather sufficient resources for the summoning now that I have slain a number of Zek enthusiasts.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
