--[[
	Script Name		:	horrors_of_the_past.lua
	Script Purpose	:	Handles the quest, "Horrors of the Past"
	Script Author	:	Xiki
	Script Date		:	3/14/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	West Freeport
	Quest Giver		:	Trooper Bonesaw
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to destroy fallen crusaders.", 13, 100, "I need to protect Freeport by destroying fallen crusaders within the ruins of Val'Marr.", 611, 330329)
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
	UpdateQuestStepDescription(Quest, 1, "I destroyed fallen crusaders.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I protected Freeport by destroying fallen crusaders.")

	UpdateQuestDescription(Quest, "The danger to Freeport travelers from the undead horrors should be lessened now that I have killed a number of the monsters.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
