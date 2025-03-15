--[[
	Script Name		:	proaction.lua
	Script Purpose	:	Handles the quest, "Proaction"
	Script Author	:	Xiki
	Script Date		:	3/14/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Qeynos
	Quest Giver		:	Guard Rellin`thir
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Bloodsaber sentinels.", 16, 100, "I need to reduce a threat to Qeynos by killing Bloodsaber sentinels within the Crypt of Betrayal.", 611, 2010004)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Bloodsaber sentinels.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I reduced the threat to Qeynos by killing Bloodsaber sentinels.")

	UpdateQuestDescription(Quest, "The potential threat from the Bloodsabers has been reduced now that I have killed a number of the soldiers.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
