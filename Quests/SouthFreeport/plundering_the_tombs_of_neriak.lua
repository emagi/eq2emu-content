--[[
	Script Name		:	plundering_the_tombs_of_neriak.lua
	Script Purpose	:	Handles the quest, "Plundering the Tombs of Neriak"
	Script Author	:	Xiki
	Script Date		:	3/15/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	South Freeport
	Quest Giver		:	Boatswain Fomas
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Thexian dragoons.", 11, 100, "I need to clear a path by killing Thexian dragoons within Fallen Gate.", 611, 1190025)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Thexian dragoons.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I cleared a path by killing Thexian dragoons.")

	UpdateQuestDescription(Quest, "The path is cleared for treasure seekers to loot the tombs now that I have killed a number of the Thexians.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
