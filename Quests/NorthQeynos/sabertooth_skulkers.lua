--[[
	Script Name		:	sabertooth_skulkers.lua
	Script Purpose	:	Handles the quest, "Sabertooth Skulkers"
	Script Author	:	Xiki
	Script Date		:	3/14/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Qeynos
	Quest Giver		:	Guard Rellin`thir
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Sabertooth lookouts.", 14, 100, "I need to protect the refugees by slaughtering Sabertooth lookouts within Thundering Steppes.", 611, 2490262)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Sabertooth lookouts.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I protected the refugees by slaughtering Sabertooth lookouts.")

	UpdateQuestDescription(Quest, "The refugees should find their adventures safer now that I have slaughtered a number of the Sabertooth gnolls.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
