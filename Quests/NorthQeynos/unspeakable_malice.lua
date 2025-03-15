--[[
	Script Name		:	unspeakable_malice.lua
	Script Purpose	:	Handles the quest, "Unspeakable Malice"
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
	AddQuestStepKill(Quest, 1, "I need to kill sattar abominations.", 21, 100, "I need to rally the adventurers by slaying sattar abominations within the Feerrott.", 611, 1210076)
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
	UpdateQuestStepDescription(Quest, 1, "I killed sattar abominations.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I rallied the adventurers by slaying sattar abominations.")

	UpdateQuestDescription(Quest, "Qeynosians have been inspired to continue their assaults against the Temple of Cazic-Thule now that I have slain a number of manticore dreadclaws.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
