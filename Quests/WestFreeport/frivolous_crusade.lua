--[[
	Script Name		:	frivolous_crusade.lua
	Script Purpose	:	Handles the quest, "Frivolous Crusade"
	Script Author	:	Xiki
	Script Date		:	3/14/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	West Freeport
	Quest Giver		:	Viscount Gelvonius
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Galebreaker pilgrims.", 25, 100, "I need to protect the soldiers of Freeport by slaughtering Galebreaker pilgrims within Everfrost.", 611, 410107, 410108, 410111, 410114)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Galebreaker pilgrims.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I protected the soldiers of Freeport by slaying Galebreaker pilgrims.")

	UpdateQuestDescription(Quest, "Soldiers in Everfrost are no longer hunted by the Galebreaker pilgrims within Everfrost.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
