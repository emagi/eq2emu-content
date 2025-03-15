--[[
	Script Name		:	destination_omniscience.lua
	Script Purpose	:	Handles the quest, "Destination: Omniscience"
	Script Author	:	Xiki
	Script Date		:	3/14/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	South Qeynos
	Quest Giver		:	Aesthetic Winchester
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Tae Ew thaumaturges.", 19, 100, "I need to clear a path by slaying Tae Ew thaumaturges within the Feerrott.", 611, 1210159)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Tae Ew thaumaturges.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I cleared a path by slaying Tae Ew thaumaturges.")

	UpdateQuestDescription(Quest, "The scribes have found it easier to reach the temple now that I have slain a number of the lizardman sorcerers.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
