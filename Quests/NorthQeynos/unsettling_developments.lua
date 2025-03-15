--[[
	Script Name		:	unsettling_developments.lua
	Script Purpose	:	Handles the quest, "Unsettling Developments"
	Script Author	:	Xiki
	Script Date		:	3/13/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:   North Qeynos
	Quest Giver		:	Squire-Guard Williamson
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill scrounging zombies.", 11, 100, "I need to slow the digging by destroying scrounging zombies within Stormhold.", 611, 150063, 150277)
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
	UpdateQuestStepDescription(Quest, 1, "I killed scrounging zombies.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I slowed the digging by destroying scrounging zombies.")

	UpdateQuestDescription(Quest, "The digging operation has been slowed now that I have destroyed a number of zombie workers.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
