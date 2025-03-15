--[[
	Script Name		:	pestilence.lua
	Script Purpose	:	Handles the quest, "Pestilence"
	Script Author	:	Xiki
	Script Date		:	3/13/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Qeynos
	Quest Giver		:	Caretaker Nogfizzle
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Darkpaw mystics", 11, 100, "I need to cleanse the water by slaying Darkpaw mystics within Antonica.", 611, 120015)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Darkpaw mystics.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I cleansed the water by slaying Darkpaw mystics.")

	UpdateQuestDescription(Quest, "The streams that flow into Qeynos have been cleansed of filth and sickness now that I have slain a number of the gnoll seers. ")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
