--[[
	Script Name		:	the_world_left_them_behind_long_ago.lua
	Script Purpose	:	Handles the quest, "The World Left Them Behind Long Ago"
	Script Author	:	Xiki
	Script Date		:	3/15/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Freeport
	Quest Giver		:	Archivist Jindlefog
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Thexian ruffians and scouts.", 16, 100, "I need to clear a path by killing Thexian ruffians and scouts within Nektulos.", 611, 1790152, 1790158, 1790141, 1790147, 1790153)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Thexian ruffians and scouts.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I cleared a path by killing Thexian ruffians and scouts.")

	UpdateQuestDescription(Quest, "The forest is cleared for researchers to continue their studies now that I have killed a number of the ruffians and scouts.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
