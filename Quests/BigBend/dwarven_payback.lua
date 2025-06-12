--[[
	Script Name		:	dwarven_payback.lua
	Script Purpose	:	Handles the quest, "Dwarven Payback"
	Script Author	:	torsten
	Script Date		:	11.07.2022
	Script Notes	:	

	Zone			:	Big Bend
	Quest Giver		:	a dwarven prisoner
	Preceded by		:	None
	Followed by		:	None
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Slay ten ratonga", 10, 100, "Slay ratonga in the Sprawl. Many can be found throughout the area.", 611, 8400001, 8400002, 8400003, 8400004)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
	UpdateQuestZone(Quest,"The Sprawl")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "Ten ratonga have been slain")
	UpdateQuestTaskGroupDescription(Quest, 1, "Many ratonga have been slain by my hand.")

	UpdateQuestDescription(Quest, "I've killed a number of ratonga to avenge the dwarf.")
	GiveQuestReward(Quest, Player)
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

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


