--[[
	Script Name		:	message_for_mallius.lua
	Script Purpose	:	Handles the quest, "Message for Mallius"
	Script Author	:	Xiki
	Script Date		:	2/17/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	East Freeport
	Quest Giver		:   Julie Danerous
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must find Mallius Otho.", 1, "I must find Mallius Otho and deliver a message to him for Julie Danerous.", 11, 1680016)
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
	UpdateQuestStepDescription(Quest, 1, "I have found Mallius Otho")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have delivered a message for Julie Danerous to Mallius Otho.")

	UpdateQuestDescription(Quest, "I have delivered Julie's message to Mallius Otho, who I found in West Freeport.  He paid me with a few coins.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
