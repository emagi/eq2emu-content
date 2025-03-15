--[[
	Script Name		:	command_these_elements_to_silence.lua
	Script Purpose	:	Handles the quest, "Command These Elements to Silence"
	Script Author	:	Xiki
	Script Date		:	3/14/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The Elddar Grove
	Quest Giver		:	Preservationist Reynolds
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill ancient frostfins.", 22, 100, "I need to clear a path by slaying ancient frostfins within Everfrost.", 611, 410001, 410015, 410153)
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
	UpdateQuestStepDescription(Quest, 1, "I killed ancient frostfins.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I cleared a path by slaying ancient frostfins.")

	UpdateQuestDescription(Quest, "Explorers have reported as safer the passage across Everstorm Bay now that I have slain a number of gargantuan sharks.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
