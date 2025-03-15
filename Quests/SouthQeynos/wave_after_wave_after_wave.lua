--[[
	Script Name		:	wave_after_wave_after_wave.lua
	Script Purpose	:	Handles the quest, "Wave after Wave after Wave"
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
	AddQuestStepKill(Quest, 1, "I need to kill small shore crabs.", 13, 100, "I need to remove a threat by killing small shore crabs within Thundering Steppes.", 611, 2490873)
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
	UpdateQuestStepDescription(Quest, 1, "I killed small shore crabs.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I removed a threat by killing small shore crabs.")

	UpdateQuestDescription(Quest, "The acolytes should find more soothing their shoreline meditations now that I have killed a number of the crabs.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
