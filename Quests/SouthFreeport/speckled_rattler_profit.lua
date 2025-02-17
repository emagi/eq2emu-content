--[[
	Script Name		:	speckled_rattler_profit.lua
	Script Purpose	:	Handles the quest, "Speckled Rattler Profit"
	Script Author	:	Xiki
	Script Date		:	2/16/2025
	

	Zone			:	South Freeport
	Quest Giver		:   Weaponsmith Clodia Laeca
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I'm to collect as many speckled rattler skins from the Commonlands as I can for Clodia Laeca.", 15, 100, "	I must kill some speckled rattlers.", 98, 330022)
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
    UpdateQuestStepDescription(Quest, 1, "I have killed some speckled rattlers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've collected the skins from a number of Speckled Rattlers.")

	AddQuestStepChat(Quest, 2, "I should return to Clodia.", 1, "Clodia is awaiting my return with the rattler skins.", 11, 1660028)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end
