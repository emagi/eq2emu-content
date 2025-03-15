--[[
	Script Name		:	he_was_number_one.lua
	Script Purpose	:	Handles the quest, "He Was Number One!"
	Script Author	:	Xiki
	Script Date		:	3/14/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	South Qeynos
	Quest Giver		:	Chronicler Steelwill
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Varsoon apprentices.", 15, 100, "I need to reduce a threat by destroying Varsoon apprentices within the Ruins of Varsoon.", 611, 2560000)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Varsoon apprentices.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I reduced a threat by destroying Varsoon apprentices.")

	UpdateQuestDescription(Quest, "The ability of the blighted researchers to restore the remains of Valdoartus Varsoon has been diminished now that I have destroyed a number of the undead sages.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
