--[[
	Script Name		:	the_snapping_turtles.lua
	Script Purpose	:	Handles the quest, "The Snapping Turtles"
	Script Author	:	Xiki
	Script Date		:	3/15/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	South Freeport
	Quest Giver		:	Marauder Kindolus
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill sand snappers.", 19, 100, "I need to remove an obstacle by slaughtering sand snappers within the Enchanted Lands.", 611, 390053)
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
	UpdateQuestStepDescription(Quest, 1, "I killed sand snappers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I removed an obstacle by slaughtering sand snappers.")

	UpdateQuestDescription(Quest, "The merchants have been able to harvest buried eggs now that I have slaughtered a number of the sea turtles.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
