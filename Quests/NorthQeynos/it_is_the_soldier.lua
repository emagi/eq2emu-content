--[[
	Script Name		:	it_is_the_soldier.lua
	Script Purpose	:	Handles the quest, "It Is the Soldier"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	3/13/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	City Tasks
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill terror wraiths.", 22, 100, "I need to protect Qeynos by destroying terror wraiths within the Feerrott.", 611, 1210187)
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
	UpdateQuestStepDescription(Quest, 1, "I killed terror wraiths.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I protected Qeynos by destroying terror wraiths.")

	UpdateQuestDescription(Quest, "The sightings of Thulian monstrosities have waned now that I have destroyed a number of the wraith lords.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
