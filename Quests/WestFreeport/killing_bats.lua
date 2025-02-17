--[[
	Script Name		:	killing_bats.lua
	Script Purpose	:	Handles the quest, "Killing bats"
	Script Author	:	Xiki
	Script Date		:	2/17/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	West Freeport
	Quest Giver		:	Sergius Mordanticus
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill ten bats in the Commonlands.", 10, 100, "Sergius Mordanticus wants me to slay a bunch of swarm bats out in the Commonlands.", 611, 330023)
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
	UpdateQuestDescription(Quest, "I went to the Commonlands and killed ten of the swarm bats as requested by Sergius Mordanticus.")
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
    UpdateQuestStepDescription(Quest, 1, "I've killed the swarm of bats.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have killed the bats in the Commonlands for Sergius Mordanticus.")
	
	AddQuestStepChat(Quest, 2, "I must kill ten bats in the Commonlands.", 1,"Sergius Mordanticus wants me to slay a bunch of swarm bats out in the Commonlands.", 11, 1680144)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end