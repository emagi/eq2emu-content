--[[
	Script Name		:	know_without_thinking.lua
	Script Purpose	:	Handles the quest, "Know without Thinking"
	Script Author	:	Xiki
	Script Date		:	3/13/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Qeynos
	Quest Giver		:	Partisan Keladerouo
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Tae Ew defenders.", 22, 100, "I need to clear a path by killing Tae Ew defenders within the Temple of Cazic-Thule.", 611, 280008)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Tae Ew defenders.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I cleared a path by killing Tae Ew defenders.")

	UpdateQuestDescription(Quest, "The disciples have found it easier to reach the inner catacombs now that I have killed a number of lizardmen guardians.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
