--[[
	Script Name		:	hunting_henchmen.lua
	Script Purpose	:	Handles the quest, "Hunting Henchmen"
	Script Author	:	Xiki
	Script Date		:	2/16/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	South Freeport
	Quest Giver		:	Weaponsmith Lucilla Quietus
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill seven Murkwater henchmen.", 7, 100, "Lucilla would like me to eliminate several murkwater henchmen.", 611, 1560004, 1560012)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
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
	
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	   Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Step1Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I have killed seven Murkwater henchmen.")
	UpdateQuestTaskGroupDescription(Quest, 1, "The murkwater henchmen have been cut down.")

	AddQuestStepChat(Quest, 2, "I should return to Lucilla.", 1, "I have eliminated the henchmen for Lucilla. I should let her know.", 11, 1660054)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end
