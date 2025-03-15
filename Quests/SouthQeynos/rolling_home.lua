--[[
	Script Name		:	rolling_home.lua
	Script Purpose	:	Handles the quest, "Rolling Home"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	3/14/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	City Tasks
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill living magmas.", 25, 100, "I need to quiet the alarm by killing living magmas within Lavastorm.", 611, 1710173, 1710178)
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
	UpdateQuestStepDescription(Quest, 1, "I killed living magmas.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I quieted the alarm by killing living magmas within Lavastorm.")

	UpdateQuestDescription(Quest, "The discoveries of ancient chambers and forgotten treasures have increased now that I have killed a number of the living magmas.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
