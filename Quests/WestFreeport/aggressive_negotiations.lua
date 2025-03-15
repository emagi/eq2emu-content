--[[
	Script Name		:	aggressive_negotiations.lua
	Script Purpose	:	Handles the quest, "Aggressive Negotiations"
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
	AddQuestStepKill(Quest, 1, "I need to remove living magma from within Lavastorm.", 23, 100, "I need to clear a path by extinguishing a number of the living magma within Lavastorm.", 611, 1710173, 1710178)
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
	UpdateQuestStepDescription(Quest, 1, "I have removed enough of the living magma.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I cleared a path by extinguishing a number of the living magma.")

	UpdateQuestDescription(Quest, "The emissaries have been able to reach the gates of the Temple of Solusek Ro now that I have extinguished a number of the living magma.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
