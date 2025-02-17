--[[
	Script Name		:	are_you_there_tom_its_me_pona..lua
	Script Purpose	:	Handles the quest, "Are You There, Tom? It's Me, Pona."
	Script Author	:	QuestParser (Replace this)
	Script Date		:	2/11/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Stonestair Byway
	Quest Giver		:	Pona
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill ten undead fighters", 1, 100, "I don't want to be all day, so I figure ten undead fighters should be enough.", 611, 8390022)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_talktoPona")
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

function step1_complete_talktoPona(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I have killed the undead fighters")
	
	
	AddQuestStepChat(Quest, 2, "I should return to Pona with the news.", 1, "Return to Pona.", 11, 1350028)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_talktoPona(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    QuestComplete(Quest, QuestGiver, Player)
	end
end
