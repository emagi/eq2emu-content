--[[
	Script Name		:	the_contest.lua
	Script Purpose	:	Handles the quest, "The Contest"
	Script Author	:	Xiki
	Script Date		:	2/13/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Stonestair Byway
	Quest Giver		:	Lirosi
	Preceded by		:	None
	Followed by		:	Easy Acceptance
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Slay orcs and gather their fingers.", 10, 33, "I think orcs in the Ruins should be the ones to die. I'll collect their fingers after I kill them.", 87, 8420001, 8420002, 8420003, 8420004, 8420005, 8420006,
	8420007, 8420009, 8420010, 8420011, 8420012, 8420013, 8420014, 8420042, 8420043, 8420069)
	AddQuestStepCompleteAction(Quest, 1, "ReturnToLirosi")

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

function ReturnToLirosi(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have collected all the fingers, now I need to return to Lirosi.")
	
	AddQuestStep(Quest, 2, "Return to Lirosi", 1, 1350000, "I should return to Lirosi now with these fingers.")
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have returned to Lirosi.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've returned to Lirosi and showed him the fingers. He's impressed, but still refuses to acknowledge who the better hunter is.")

	UpdateQuestDescription(Quest, "Lirosi was shocked that I managed to kill the orcs. He refused to acknowledge who the better hunter is.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		ReturnToLirosi(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
