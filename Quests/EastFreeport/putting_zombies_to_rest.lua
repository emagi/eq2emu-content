--[[
	Script Name		:	putting_zombies_to_rest.lua
	Script Purpose	:	Handles the quest, "Putting Zombies to Rest"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	2/16/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	East Freeport
	Quest Giver		:	Sergeant Typhoeus
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill twelve zombies in the Graveyard.", 12, 100, "I must slay twelve putrid zombies in the Graveyard.", 611, 8390012, 8390013)
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
	UpdateQuestStepDescription(Quest, 1, "I have killed all twelve zombies.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain twelve putrid zombies in the Graveyard.")

	UpdateQuestDescription(Quest, "I have slain twelve putrid zombies in the Graveyard.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
