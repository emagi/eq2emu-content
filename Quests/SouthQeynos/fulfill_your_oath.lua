--[[
	Script Name		:	fulfill_your_oath.lua
	Script Purpose	:	Handles the quest, "Fulfill Your Oath"
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
	AddQuestStepKill(Quest, 1, "I need to kill Evol Ew disciples.", 20, 100, "I need to protect Qeynos by slaughtering Evol Ew disciples within the Feerrott.", 611, 1210065)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Evol Ew disciples.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I protected Qeynos by slaughtering Evol Ew disciples.")

	UpdateQuestDescription(Quest, "The Alliz Evol Ew invasion has been disrupted now that I have slaughtered a number of the lizardmen defilers.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
