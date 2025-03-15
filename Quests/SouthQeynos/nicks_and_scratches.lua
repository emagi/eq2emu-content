--[[
	Script Name		:	nicks_and_scratches.lua
	Script Purpose	:	Handles the quest, "Nicks and Scratches"
	Script Author	:	Xiki
	Script Date		:	3/14/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	South Qeynos
	Quest Giver		:	Exalted Milanthroo
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Sootfoot rockpickers.", 25, 100, "I need to protect the mages by destroying Sootfoot rockpickers within Lavastorm.", 611, 1710104)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Sootfoot rockpickers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I protected the mages by destroying Sootfoot rockpickers.")

	UpdateQuestDescription(Quest, "Acolytes have reported it safer to navigate the lands of Lavastorm now that I have destroyed a number of the Sootfoot rockpickers.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
