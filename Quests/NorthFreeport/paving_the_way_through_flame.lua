--[[
	Script Name		:	paving_the_way_through_flame.lua
	Script Purpose	:	Handles the quest, "Paving The Way Through Flame"
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
	AddQuestStepKill(Quest, 1, "I need to kill flame walkers and magma worms in Lavastorm's Dagger Spires Pass.", 25, 100, "I need to thin the number of dangerous lizards in Lavastorm.", 611, 1710172, 1710171)
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
	UpdateQuestStepDescription(Quest, 1, "I killed enough flame walkers and magma worms.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I thinned the number of dangerous lizards in Lavastorm.")

	UpdateQuestDescription(Quest, "The lizards of Lavastorm are now more wary about attacking explorers as they venture around Dagger Spires Pass.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
