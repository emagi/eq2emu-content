--[[
	Script Name		:	averus_part_iv.lua
	Script Purpose	:	Handles the quest, "Averus, Part IV"
	Script Author	:	Xiki
	Script Date		:	2/17/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	West Freeport
	Quest Giver		:	Averus Justarius
	Preceded by		:	Averus, Part III
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to collect five ectoplasmic cores from Shin'Ree spirits.", 5, 15, "I need to.  At the bottom of that pit, I should find some spirits of the long-dead orcs.", 1162, 2580034)
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
	UpdateQuestDescription(Quest, "Averus has the audacity to claim he's done most of the work in our ventures together.  He has kept the lion's share of the money, leaving me with a piddling amount of coin as my share. If there's ever a way for me to pay him back, so to say, I most defintely will.")
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
    UpdateQuestStepDescription(Quest, 1, "I've collected five ectoplasmic cores.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've managed to collect five of these spiritual cores from the disembodied ghosts.")
	
	AddQuestStepKill(Quest, 2, "Now that I have collected the cores for Averus, I should return.", 1, "Averus Justarius said that these cores are going to make us rich! I should hurry back to him with them for my payment.", 11, 1680136)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end
