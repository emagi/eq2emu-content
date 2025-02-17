--[[
	Script Name		:	sewer_problem_a_gnome_solution.lua
	Script Purpose	:	Handles the quest, "Sewer Problem: A Gnome Solution"
	Script Author	:	Xiki
	Script Date		:	2/17/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The City of Freeport
	Quest Giver		:	Foreman Asprenus
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to find Engineer Veebert.", 1, "I need to find Engineer Veebert in the Thieves' Way and find out what problems the sewer is having.", 11, 8430047)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
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
	UpdateQuestStepDescription(Quest, 1, "I found Engineer Veebert.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found Engineer Veebert in the Thieves' Way and discovered the gnomes are using an unstable goo on the machinery.  They better not have mixed up the batches.")

	UpdateQuestDescription(Quest, "I was able to get the key to Storage Room 303 where the gnomes have been storing their unstable Goo Grease.  It looks like it is up to me to get into the room and take care of the problem. <br> <br>")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
