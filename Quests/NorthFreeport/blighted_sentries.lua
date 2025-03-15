--[[
	Script Name		:	blighted_sentries.lua
	Script Purpose	:	Handles the quest, "Blighted Sentries"
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
	AddQuestStepKill(Quest, 1, "I need to kill decaying flesh beings.", 15, 100, "I need to clear a path by destroying decaying flesh beings within Nektulos.", 611, 1790205)
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
	UpdateQuestStepDescription(Quest, 1, "I killed decaying flesh beings.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I cleared a path by destroying decaying flesh beings.")

	UpdateQuestDescription(Quest, "The acolytes have found their excursions to Nektropos Castle safer now that I have destroyed a number of the wretched minions.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


function Reload(Quest, QuestGiver, Player, Step)

end

