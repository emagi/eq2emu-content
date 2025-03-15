--[[
	Script Name		:	escorting_the_royal_planners.lua
	Script Purpose	:	Handles the quest, "Escorting the Royal Planners"
	Script Author	:	Xiki
	Script Date		:	3/14/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	South Qeynos
	Quest Giver		:	Chronicler Steelwill
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Sabertooth scouts.", 14, 100, "I need to remove an obstacle by slaughtering Sabertooth scouts within Thundering Steppes.", 611, 2490260)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Sabertooth scouts.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I removed an obstacle by slaughtering Sabertooth scouts.")

	UpdateQuestDescription(Quest, "The assaults against the surveyors have slowed now that I have slaughtered a number of gnolls.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
