--[[
	Script Name		:	a_plague_of_problems.lua
	Script Purpose	:	Handles the quest, "A Plague of Problems"
	Script Author	:	Xiki
	Script Date		:	3/15/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Freeport
	Quest Giver		:	Neophyte Jhanov
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to slay scourge rats.", 12, 100, "I need to keep plague out of Freeport by slaying scourge rats within the Commonlands.", 611, 330064)
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
	UpdateQuestStepDescription(Quest, 1, "I have slain scourge rats.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have kept at least one source of plague from Freeport by reducing the number of scourge rats.")

	UpdateQuestDescription(Quest, "The danger to Freeport has been reduced now that I have slain a number of the diseased rodents.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

