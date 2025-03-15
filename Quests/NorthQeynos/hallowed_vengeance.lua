--[[
	Script Name		:	hallowed_vengeance.lua
	Script Purpose	:	Handles the quest, "Hallowed Vengeance"
	Script Author	:	Xiki
	Script Date		:	3/13/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:   North Qeynos
	Quest Giver		:	Disciple Telas`velle
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill skeletal footsoldiers.", 15, 100, "I need to thin the population of undead by killing skeletal footsoldiers within Thundering Steppes.", 611, 2490217)
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
	UpdateQuestStepDescription(Quest, 1, "I killed skeletal footsoldiers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I thinned the population of undead by killing skeletal footsoldiers.")

	UpdateQuestDescription(Quest, "The undead menace has been reduced now that I have killed a number of skeleton warriors.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
