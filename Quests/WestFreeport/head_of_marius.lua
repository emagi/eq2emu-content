--[[
	Script Name		:	the_head_of_marius.lua
	Script Purpose	:	Handles the quest, "The Head of Marius"
	Script Author	:	Xiki
	Script Date		:	2/17/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	West Freeport
	Quest Giver		:	Lieutenant Darrius
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill one Marius Darkblade.", 1, 100, "I'm to find Marius Darkblade in Thieves Way and retrieved the stolen goods and his head.", 10, 8430018)
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
	UpdateQuestDescription(Quest, "That's gratitude for you. I do the Freeport militia a favor and all they can do is complain about the way I did it. I retrieved the stolen goods and brought back Marius's head... So they were in the same sack, big deal.")
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
    UpdateQuestStepDescription(Quest, 1, "I have killed one Marius Darkblade.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've the head of Marius and the sack stolen goods.")
	
	AddQuestStepChat(Quest, 2, "I should return to Lieutenant Darrius.", 1, "I need to return to Lieutenant Darrius with the stolen good I have recovered.", 11, 1680056)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end
