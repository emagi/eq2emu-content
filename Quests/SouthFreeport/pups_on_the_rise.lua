--[[
	Script Name		:	pups_on_the_rise.lua
	Script Purpose	:	Handles the quest, "Pups on the Rise"
	Script Author	:	Xiki
	Script Date		:	3/15/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	South Freeport
	Quest Giver		:	Corsair G`kex
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill ice wolf pups in Everfrost.", 21, 100, "I need to preserve the resources by slaughtering ice wolf pups within Everfrost.", 611, 410057)
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
	UpdateQuestStepDescription(Quest, 1, "I killed enough ice wolf pups.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I preserved the resources by slaughtering ice wolf pups within Everfrost.")

	UpdateQuestDescription(Quest, "Freeport miners will be able to lay claim to the large veins of minerals and gems hidden within the ice covered cliffs of Everfrost now that I have slaughtered a number of ice wolf pups.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


