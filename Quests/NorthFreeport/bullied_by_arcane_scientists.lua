--[[
	Script Name		:	bullied_by_arcane_scientists.lua
	Script Purpose	:	Handles the quest, "Bullied by Arcane Scientists"
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
	AddQuestStepKill(Quest, 1, "I need to kill Frosthorn minotaurs.", 23, 100, "I need to slay Frosthorn minotaurs within Everfrost in search of powerful arcane items.", 611, 410268)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Frosthorn minotaurs.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain enough Frosthorn minotaurs within Everfrost in search of powerful arcane items.")

	UpdateQuestDescription(Quest, "I did not find any arcane items of significance on the Frosthorn minotaurs that I slew within Everfrost, but Thaumaturge Ranollious is satisfied with my thorough search.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
