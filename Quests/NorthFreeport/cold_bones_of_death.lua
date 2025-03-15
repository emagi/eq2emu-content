--[[
	Script Name		:	cold_bones_of_death.lua
	Script Purpose	:	Handles the quest, "Cold Bones of Death"
	Script Author	:	Xiki
	Script Date		:	3/15/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Freeport
	Quest Giver		:	Thaumaturge Ranollious
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill ice frights in Everfrost.", 24, 100, "I need to remove an obstacle by killing the ice fright skeletons in Everfrost.", 611, 410078)
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
	UpdateQuestStepDescription(Quest, 1, "I killed ice frights.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I removed an obstacle by killing ice fright skeletons in Everfrost.")

	UpdateQuestDescription(Quest, "The road to the ancient entrance to Miragul's Menagerie has been smoothed now that I have killed a number of the ice fright skeletons in Everfrost.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
