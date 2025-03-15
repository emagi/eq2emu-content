--[[
	Script Name		:	plundering_the_ruins_of_the_dead.lua
	Script Purpose	:	Handles the quest, "Plundering the Ruins of the Dead"
	Script Author	:	Xiki
	Script Date		:	3/15/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	South Freeport
	Quest Giver		:	Squab Kalina
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to destroy fallen crusaders.", 11, 100, "I need to clear a path by destroying the fallen crusaders within the ruins of Val'Marr.", 611, 330329)
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
	UpdateQuestStepDescription(Quest, 1, "I destroyed fallen crusaders.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I cleared a path by destroying fallen crusaders.")

	UpdateQuestDescription(Quest, "The path is cleared for treasure seekers to loot the ruins now that I have destroyed a number of the unwanted undead.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
