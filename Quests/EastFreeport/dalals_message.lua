--[[
	Script Name		:	dalals_message.lua
	Script Purpose	:	Handles the quest, "Dalal’s Message"
	Script Author	:	Xiki
	Script Date		:	2/16/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	East Freeport
	Quest Giver		:	Dalal Akilia
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I've been told Nyjuss can be found at the Market Square.", 1, "	I need to speak with Nyjuss.", 11, 1440008)
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
	UpdateQuestStepDescription(Quest, 2, "I've spoken with Nyjuss.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have delivered the message to Nyjuss.")
    UpdateQuestDescription(Quest, "Dalal Akilia has given an odd message to Nyjuss. The message pertained to seabirds roosting, and I'm not sure what it meant. This is something I might want to look into at a later time.")

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

	
	AddQuestStepChat(Quest, 2, "I should speak with Preceptor Nyjuss and hand him the message from Dalal.", 1, "Speak with Nyjuss.", 11, 1440008)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end
