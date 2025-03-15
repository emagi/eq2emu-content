--[[
	Script Name		:	hunting_the_iofer_stalkers.lua
	Script Purpose	:	Handles the quest, "Hunting the Iofer Stalkers"
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
	AddQuestStepKill(Quest, 1, "I need to kill arctic monitors and arctic behemoths in Everfrost.", 23, 100, "I need to maintain the supply of herbs by slaughtering arctic lizards within Everfrost.", 611, 410052, 410048)
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
	UpdateQuestStepDescription(Quest, 1, "I killed arctic lizards.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I maintained the supply of herbs by slaughtering arctic lizards within Everfrost.")

	UpdateQuestDescription(Quest, "Academy harvesters have reported a burgeoning of herbs in Everfrost now that I have slaughtered a number of the arctic lizards.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
