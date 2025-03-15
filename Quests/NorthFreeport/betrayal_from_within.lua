--[[
	Script Name		:	betrayal_from_within.lua
	Script Purpose	:	Handles the quest, "Betrayal from Within"
	Script Author	:	Xiki
	Script Date		:	3/15/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Freeport
	Quest Giver		:	Neophyte Jhanov
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill brittle skeletons.", 9, 100, "I need to protect Freeport by destroying brittle skeletons within the Commonlands.", 611, 330232)
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
	UpdateQuestStepDescription(Quest, 1, "I killed brittle skeletons.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I protected Freeport by destroying brittle skeletons.")

	UpdateQuestDescription(Quest, "The threat to Freeport from Zilvua Quantog has been lessened now that I have destroyed a number of her skeleton minions.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
