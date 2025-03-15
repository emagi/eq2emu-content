--[[
	Script Name		:	thinning_the_herd_fallen_gate.lua
	Script Purpose	:	Handles the quest, "Thinning the Herd (Fallen Gate)"
	Script Author	:	Xiki
	Script Date		:	3/14/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	West Freeport
	Quest Giver		:	Liege Helvanica
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStep(Quest, 1, "I need to kill tortured invaders.", 12, 100, "I need to protect the refugees by slaying tortured invaders within Fallen Gate.", 611, 1190012, 1190040, 1190042, 1190054, 1190055)
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
	UpdateQuestStepDescription(Quest, 1, "I killed tortured invaders.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I protected the refugees by slaying tortured invaders.")

	UpdateQuestDescription(Quest, "The new refugees should find their excursions from Freeport safer now that I have slain a number of the undead attackers.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
