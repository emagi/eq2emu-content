--[[
	Script Name		:	unsustainable_population_growth.lua
	Script Purpose	:	Handles the quest, "Unsustainable Population Growth"
	Script Author	:	Xiki
	Script Date		:	3/14/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The Elddar Grove
	Quest Giver		:	Shepherd Sell`ar
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Tallon foragers.", 17, 100, "I need to preserve the balance by slaughtering Tallon foragers within the Orcish Wastes.", 611, 1900089)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Tallon foragers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I preserved the balance by slaughtering Tallon foragers.")

	UpdateQuestDescription(Quest, "The animals have found food more plentiful now that I have slaughtered a number of the Tallon scavengers.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
