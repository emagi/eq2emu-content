--[[
	Script Name		:	the_unseen_master.lua
	Script Purpose	:	Handles the quest, "The Unseen Master"
	Script Author	:	Xiki
	Script Date		:	3/15/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Freeport
	Quest Giver		:	Occultist Levonicus
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill cackling cadavers.", 13, 100, "I need to reduce the influence of Nektropos Castle by slaying cackling cadavers within Nektulos.", 611, 1790116)
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
	UpdateQuestStepDescription(Quest, 1, "I killed cackling cadavers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I reduced the influence of Nektropos Castle by slaying cackling cadavers.")

	UpdateQuestDescription(Quest, "The grip of Nektropos Castle upon the surrounding lands has been weakened now that I have slain a number of the skeleton minions.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
