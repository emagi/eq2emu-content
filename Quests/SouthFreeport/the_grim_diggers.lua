--[[
	Script Name		:	the_grim_diggers.lua
	Script Purpose	:	Handles the quest, "The Grim Diggers"
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
	AddQuestStepKill(Quest, 1, "I need to kill blighted denizens.", 12, 100, "I need to remove a threat by slaying blighted denizens within Fallen Gate.", 611, 1190039, 1190068)
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
	UpdateQuestStepDescription(Quest, 1, "I killed blighted denizens")
	UpdateQuestTaskGroupDescription(Quest, 1, "I removed a threat by slaying blighted denizens.")

	UpdateQuestDescription(Quest, "The subterranean threat to Freeport has been slowed now that I have slain a number of the undead invaders.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
