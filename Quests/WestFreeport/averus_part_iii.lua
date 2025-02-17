--[[
	Script Name		:	averus_part_iii.lua
	Script Purpose	:	Handles the quest, "Averus, Part III"
	Script Author	:	Xiki
	Script Date		:	2/17/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	West Freeport
	Quest Giver		:	Averus Justarius
	Preceded by		:	Averus, Part II
	Followed by		:	Averus, Part IV
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Garreg Stonecrusher.", 1, 100, "I need to venture to the Wailing Caves and find the orcish bandit.", 91, 2580031)
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

	UpdateQuestDescription(Quest, "I've brought Averus the head of Garreg Stonecrusher.")
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
    UpdateQuestStepDescription(Quest, 1, "I've killed Garreg Stonecrusher.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've lopped off the head of Garreg Stonecrusher.")
	
	AddQuestStepChat(Quest, 2, "I need to return to Averus again", 1, "I have killed the orc bandit, I should return to Averus Justarius.", 11, 1680136)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end
