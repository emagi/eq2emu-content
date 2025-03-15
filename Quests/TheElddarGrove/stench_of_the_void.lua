--[[
	Script Name		:	stench_of_the_void.lua
	Script Purpose	:	Handles the quest, "Stench of the Void"
	Script Author	:	Xiki
	Script Date		:	3/14/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The Elddar Grove
	Quest Giver		:	Shepherd Sell`ar
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill pungent recluses.", 19, 100, "I need to cleanse the rivers by destroying pungent recluses within the Feerrott.", 611, 1210024)
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
	UpdateQuestStepDescription(Quest, 1, "I killed pungent recluses.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I cleansed the rivers by destroying pungent recluses.")

	UpdateQuestDescription(Quest, "Filth has begun to recede from the waters now that I have destroyed a number of the vile gutterbeasts.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
