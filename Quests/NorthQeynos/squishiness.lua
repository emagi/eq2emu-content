--[[
	Script Name		:	squishiness.lua
	Script Purpose	:	Handles the quest, "Squishiness"
	Script Author	:	Xiki
	Script Date		:	3/13/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Qeynos
	Quest Giver		:	Knight-Captain Steelgaze
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill bighorn dashers.", 24, 100, "I need to protect the Qeynosians from the harsh winters of Everfrost by slaying bighorn dashers for their coats..", 611, 410032)
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
	UpdateQuestStepDescription(Quest, 1, "I killed bighorn dashers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I protected the Qeynosians from the cold by slaying bighorn dashers.")

	UpdateQuestDescription(Quest, "The soldiers stationed in the Everfrost area are warmer now with their new winter clothing.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
