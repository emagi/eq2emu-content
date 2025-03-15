--[[
	Script Name		:	the_inmost_recesses_of_the_catacombs.lua
	Script Purpose	:	Handles the quest, "The Inmost Recesses of the Catacombs"
	Script Author	:	Xiki
	Script Date		:	3/15/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Freeport
	Quest Giver		:	Forbidden Lore
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill armored fiends.", 23, 100, "I need to remove an obstacle by destroying armored fiends within Solusek's Eye.", 611, 2450060, 2450061)
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
	UpdateQuestStepDescription(Quest, 1, "I killed armored fiends.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I removed an obstacle by destroying armored fiends.")

	UpdateQuestDescription(Quest, "Acolytes have found it easier to reach the depths of Solusek's Eye now that I have destroyed a number of the ancient rumblers.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
