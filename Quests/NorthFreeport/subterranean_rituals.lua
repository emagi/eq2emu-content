--[[
	Script Name		:	subterranean_rituals.lua
	Script Purpose	:	Handles the quest, "Subterranean Rituals"
	Script Author	:	Xiki
	Script Date		:	3/15/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:   North Freeport
	Quest Giver		:	Archivist Jindlefog
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill tormented war witches.", 12, 100, "I need to disrupt the rituals by killing tormented war witches within Fallen Gate.", 611, 1190045)
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
	UpdateQuestStepDescription(Quest, 1, "I killed tormented war witches.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I disrupted the rituals by killing tormented war witches.")

	UpdateQuestDescription(Quest, "The ceremonies have been interrupted now that I have destroyed a number of the undead mages.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
