--[[
	Script Name		:	message_for_lollia.lua
	Script Purpose	:	Handles the quest, "Message for Lollia"
	Script Author	:	Xiki
	Script Date		:	2/16/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	West Freeport
	Quest Giver		:	Anessa Bonefetter
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to deliver a message to Lollia Parnesius.", 100, "I need to deliver Anessa Bonefetter's message to Lollia Parnesius.", 11, 1440008)
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
    UpdateQuestStepDescription(Quest, 1, "I have delivered the message to Lollia Parnesius.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've delivered Anessa Bonefetter's message to Lollia Parnesius.")
	UpdateQuestDescription(Quest, "I've delivered the message to Lollia Parnesius and all I got was grief for the messages timeliness.")
    SetStepComplete(Quest, 2)
	
end
