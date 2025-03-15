--[[
	Script Name		:	the_darkest_devourers.lua
	Script Purpose	:	Handles the quest, "The Darkest Devourers"
	Script Author	:	Xiki
	Script Date		:	3/14/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The Elddar Grove
	Quest Giver		:	Wanderer Greencoast
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill blightfang broodtenders.", 13, 100, "I need to clear a path by destroying blightfang broodtenders within Blackburrow.", 611, 170006)
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
	UpdateQuestStepDescription(Quest, 1, "I killed blightfang broodtenders.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I cleared a path by destroying blightfang broodtenders.")

	UpdateQuestDescription(Quest, "The foragers should find their task of collecting mushrooms easier now that I have destroyed a number of the blighted spiders.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
