--[[
	Script Name		:	to_sulphurous_and_tormenting_flames.lua
	Script Purpose	:	Handles the quest, "To Sulphurous and Tormenting Flames"
	Script Author	:	Xiki
	Script Date		:	3/15/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:   South Freeport
	Quest Giver		:	Corsair G`kex
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Sootfoot sages.", 22, 100, "I need to remove a threat by destroying Sootfoot sages within Lavastorm.", 611, 1710166)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Sootfoot sages.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I removed a threat by destroying Sootfoot sages.")

	UpdateQuestDescription(Quest, "The threat to Freeport from Koba Monimaja has been lessened now that I have destroyed a number of his goblin underlings.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
