--[[
	Script Name		:	stand_up_and_be_slaughtered.lua
	Script Purpose	:	Handles the quest, "Stand Up and Be Slaughtered"
	Script Author	:	Xiki
	Script Date		:	3/15/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Freeport
	Quest Giver		:	Paragon Jalex
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill enslaved warboars.", 18, 100, "I need to enforce obedience by killing enslaved warboars within Runnyeye.", 611, 2420008)
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
	UpdateQuestStepDescription(Quest, 1, "I killed enslaved warboars.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I enforced obedience by killing enslaved warboars.")

	UpdateQuestDescription(Quest, "Reference to the Academy once again bestirs respect now that I have killed a number of the disdainful warboars.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
