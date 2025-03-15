--[[
	Script Name		:	our_elaborate_plans.lua
	Script Purpose	:	Handles the quest, "Our Elaborate Plans"
	Script Author	:	Xiki
	Script Date		:	3/14/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	West Freeport
	Quest Giver		:	Viscount Gelvonius
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill nightblood tormentors.", 22, 100, "I need to instill a fear of Freeport by destroying nightblood tormentors within Rivervale.", 611, 2390150)
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
	UpdateQuestStepDescription(Quest, 1, "I killed nightblood tormentors.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I instilled a fear of Freeport by destroying nightblood tormentors.")

	UpdateQuestDescription(Quest, "The beasts of the Shattered Lands recognize the price to be paid for opposing the Citadel now that I have destroyed a number of nightblood despisers.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
