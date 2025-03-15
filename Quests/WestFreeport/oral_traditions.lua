--[[
	Script Name		:	oral_traditions.lua
	Script Purpose	:	Handles the quest, "Oral Traditions"
	Script Author	:	Xiki
	Script Date		:	3/14/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	West Freeport
	Quest Giver		:	Baron Zafimus
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Runnyeye warlocks.", 21, 100, "I need to restrict arcane lore by killing Runnyeye warlocks within Runnyeye.", 611, 2420043)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Runnyeye warlocks.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I restricted arcane lore by killing Runnyeye warlocks.")

	UpdateQuestDescription(Quest, "Qeynos has found it difficult to discover the secrets of destructive magic now that I have killed a number of Runnyeye summoners.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
