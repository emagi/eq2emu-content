--[[
	Script Name		:	blind_to_all_else.lua
	Script Purpose	:	Handles the quest, "Blind to All Else"
	Script Author	:	Xiki
	Script Date		:	3/13/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Qeynos
	Quest Giver		:	Sergeant-at-Arms Ironcast
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Sullon centurions.", 20, 100, "I need to generate a distraction by slaughtering Sullon centurions within the Orcish Wastes.", 611, 1900433)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Sullon centurions.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I generated a distraction by slaughtering Sullon centurions.")

	UpdateQuestDescription(Quest, "The mountain passes have been left lightly patrolled now that I have slaughtered a number of the Zek legionnaires.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
