--[[
	Script Name		:	nosy_neighbors.lua
	Script Purpose	:	Handles the quest, "Nosy Neighbors"
	Script Author	:	QuestParser (Replace this)
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
	AddQuestStepKill(Quest, 1, "I need to kill Bitterwind explorers.", 24, 100, "I need to remove a threat by slaying Bitterwind explorers within Everfrost.", 611, 410065)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Bitterwind explorers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I removed a threat by slaying Bitterwind explorers.")

	UpdateQuestDescription(Quest, "The boats may now once again supply our forces around Everfrost as the Bitterwind explorers have been successfully quelled.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
