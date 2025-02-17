--[[
	Script Name		:	roris_back.lua
	Script Purpose	:	Handles the quest, "Rori's Back"
	Script Author	:	Your Name
	Script Date		:	2/13/2025
	Script Notes	:	Modified with QuestParser.

	Zone			:	Stonestair Byway
	Quest Giver		:	Rori
	Preceded by		:	Rori's Proposal
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill ten orcs in the Ruins.", 10, 55, "Rori wants me to gather orc hides from the Ruins.", 168, 8420025)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_gatherhides")
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

function step1_complete_gatherhides(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I have gathered the orc hides")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the hides from the orcs in the Ruins.")

	AddQuestStepChat(Quest, 2, "I need to return to Rori and give him the orc hides", 1, "Rori is waiting for the hides.", 11, 1350034)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_gatherhides(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    QuestComplete(Quest, QuestGiver, Player)
	end
end