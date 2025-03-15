--[[
	Script Name		:	bedlam.lua
	Script Purpose	:	Handles the quest, "Bedlam"
	Script Author	:	Xiki
	Script Date		:	3/13/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Qeynos
	Quest Giver		:	Disciple Telas`velle
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill agonized essences.", 16, 100, "I need to restore hope to Qeynos by killing agonized essences within the Crypt of Betrayal.", 611, 2010012, 2010014, 2010018, 2010019)
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
	UpdateQuestStepDescription(Quest, 1, "I killed agonized essences.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I restored hope to Qeynos by killing agonized essences.")

	UpdateQuestDescription(Quest, "Qeynosians should find their minds and spirits cleared of despair now that I have killed a number of the tortured undead.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
