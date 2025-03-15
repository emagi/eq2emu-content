--[[
	Script Name		:	unnatural_circle_of_life.lua
	Script Purpose	:	Handles the quest, "Unnatural Circle of Life"
	Script Author	:	Xiki
	Script Date		:	3/14/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The Elddar Grove
	Quest Giver		:	Preservationist Reynolds
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill ice frights in Everfrost.", 25, 100, "I need to protect the fauna of Everfrost by killing the ice fright skeletons.", 611, 410078)
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
	UpdateQuestStepDescription(Quest, 1, "I killed a number of ice frights.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I protected the fauna of Everfrost by killing the ice fright skeletons.")

	UpdateQuestDescription(Quest, "Fewer creatures have been attacked by the frozen undead now that I have killed a number of the ice fright skeletons within Everfrost.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
