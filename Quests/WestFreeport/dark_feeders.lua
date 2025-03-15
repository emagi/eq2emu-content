--[[
	Script Name		:	dark_feeders.lua
	Script Purpose	:	Handles the quest, "Dark Feeders"
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
	AddQuestStep(Quest, 1, "I need to kill mist shrillers.", 17, 100, "I need to thin the bat population by slaughtering dominant firelight shrillers within Nektulos.", 611, 1790079)
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
	UpdateQuestStepDescription(Quest, 1, "I killed mist shrillers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I thinned the bat population by slaughtering dominant firelight shrillers.")

	UpdateQuestDescription(Quest, "The giant shrillers have found food sources within the forest to be adequate now that I have slaughtered a number of the bats.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
