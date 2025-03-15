--[[
	Script Name		:	separate_the_righteous_from_the_wicked.lua
	Script Purpose	:	Handles the quest, "Separate the Righteous from the Wicked"
	Script Author	:	Xiki
	Script Date		:	3/15/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Freeport
	Quest Giver		:	Forbidden Lore
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Sootfoot whelps.", 22, 100, "I need to remove a threat by destroying Sootfoot whelps within Lavastorm.", 611, 1710098)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Sootfoot whelps.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I removed a threat by destroying Sootfoot whelps.")

	UpdateQuestDescription(Quest, "The goblins have abandoned their studies of dark arcana now that I have destroyed a number of the Sootfoot whelps.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
