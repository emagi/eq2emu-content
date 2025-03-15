--[[
	Script Name		:	bad_case_of_crabs.lua
	Script Purpose	:	Handles the quest, "Bad Case of Crabs"
	Script Author	:	Xiki
	Script Date		:	3/15/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Freeport
	Quest Giver		:	Forbidden Lore
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill smoldering king crabs.", 22, 100, "I need to clear a path by slaying smoldering king crabs within Lavstorm.", 611, 1710024)
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
	UpdateQuestStepDescription(Quest, 1, "I killed smoldering king crabs.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I cleared a path by slaying smoldering king crabs within Lavstorm.")

	UpdateQuestDescription(Quest, "Explorers have found it easier to enter Lavastorm now that I have slain a number of the smoldering king crabs.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
