--[[
	Script Name		:	its_just_your_imagination.lua
	Script Purpose	:	Handles the quest, "It's Just Your Imagination"
	Script Author	:	Xiki
	Script Date		:	3/13/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Qeynos
	Quest Giver		:	Knight-Captain Steelgaze
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStep(Quest, 1, "I need to kill thulian skaters.", 23, 100, "I need to cleanse the waters by killing thulian skaters within the Feerrott.", 611, 1210174)
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
	UpdateQuestStepDescription(Quest, 1, "I killed thulian skaters.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I cleansed the waters by killing thulian skaters.")

	UpdateQuestDescription(Quest, "Fortune seekers have found safer the jungle streams now that I have killed a number of the vipers.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
