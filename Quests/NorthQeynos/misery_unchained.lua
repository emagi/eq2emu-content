--[[
	Script Name		:	misery_unchained.lua
	Script Purpose	:	Handles the quest, "Misery Unchained"
	Script Author	:	Xiki
	Script Date		:	3/13/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Qeynos
	Quest Giver		:	Partisan Keladerouo
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Tae Ew gatherers.", 23, 100, "I need to prevent a blood sacrifice by slaughtering Tae Ew gatherers within the Temple of Cazic-Thule.", 611, 280007)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Tae Ew gatherers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I prevented a blood sacrifice by slaughtering Tae Ew gatherers.")

	UpdateQuestDescription(Quest, "The ritual to summon Terris-Thule has been interrupted now that I have slaughtered a number of the lizardmen embalmers.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
