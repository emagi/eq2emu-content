--[[
	Script Name		:	easy_acceptance.lua
	Script Purpose	:	Handles the quest, "Easy Acceptance"
	Script Author	:	Xiki
	Script Date		:	2/13/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Stonestair Byway
	Quest Giver		:	Lirosi
	Preceded by		:	The Contest
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Slay Dervish crooks until the Hunter's Mantle is located.", 1, 15, "I should find these crooks and take care of them until I locate the one who has the Mantle.  I fully expect this to be a trap.", 6, 1260000)
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
	UpdateQuestDescription(Quest, "I have found the Mantle, now I need to return to Lirosi.")
	
	AddQuestStep(Quest, 2, "Return to Lirosi", 1, 1350000, "I need to return to Lirosi and show him the Mantle.")
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have returned to Lirosi.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've returned to Lirosi and showed him the Mantle.")

	UpdateQuestDescription(Quest, "I've let Lirosi know I managed to find his bait, but the trap wasn't enough to finish me.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		ReturnToLirosi(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
