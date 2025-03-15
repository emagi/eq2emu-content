--[[
	Script Name		:	troubles_melt.lua
	Script Purpose	:	Handles the quest, "Troubles Melt"
	Script Author	:	Xiki
	Script Date		:	3/15/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	South Freeport
	Quest Giver		:	Corsair G`kex
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Frosthorn minotaurs.", 21, 100, "I need to weaken the defenses by slaying Frosthorn minotaurs within Everfrost.", 611, 410268)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Frosthorn minotaurs.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I weakened the defenses by slaying Frosthorn minotaurs within Everfrost.")

	UpdateQuestDescription(Quest, "Surveyors have found it easier to continue their documentation now that I have slain a number of the Frosthorn minotaurs.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
