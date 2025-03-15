--[[
	Script Name		:	between_a_rock_and_lava.lua
	Script Purpose	:	Handles the quest, "Between a Rock and Lava"
	Script Author	:	Xiki
	Script Date		:	3/14/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The Elddar Grove
	Quest Giver		:	Preservationist Reynolds
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill basalt sliders in Lavastorm's Dagger Spires Pass.", 24, 100, "I need to protect the gatherers by slaying monstrous lizards within Lavastorm.", 611, 1710371)
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
	UpdateQuestStepDescription(Quest, 1, "I killed enough basalt sliders.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I protected the gatherers by slaying monstrous lizards.")

	UpdateQuestDescription(Quest, "The collection of diamonds within Lavastorm has resumed now that I have slain a number of the monstrous lizards within the searing landscape.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
