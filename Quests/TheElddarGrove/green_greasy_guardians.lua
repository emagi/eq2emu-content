--[[
	Script Name		:	green_greasy_guardians.lua
	Script Purpose	:	Handles the quest, "Green Greasy Guardians"
	Script Author	:	Xiki
	Script Date		:	3/14/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The Elddar Grove
	Quest Giver		:	Shepherd Sell`ar
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Evol Ew menders.", 20, 100, "I need to remove an obstacle by killing Evol Ew menders within the Feerrott.", 611, 1210064)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Evol Ew menders.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I removed an obstacle by killing Evol Ew menders.")

	UpdateQuestDescription(Quest, "Surveyors have been able to locate some of the Rallosian temples now that I have killed a number of the lizardmen.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
