--[[
	Script Name		:	message_for_typhoeus.lua
	Script Purpose	:	Handles the quest, "Message for Typhoeus"
	Script Author	:	Xiki
	Script Date		:	2/17/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	West Freeport
	Quest Giver		:	Anessa Bonefetter
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to deliver a message to Sergeant Typhoeus.", 1, "I need to deliver Anessa Bonefetter's message to Sergeant Typhoeus down at the docks.", 11, 1280021)
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
    UpdateQuestStepDescription(Quest, 1, "I have delivered the message to Sergeant Typhoeus.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've delivered Anessa Bonefetter's message to Sergeant Typhoeus.")

	UpdateQuestDescription(Quest, "I've delivered the message to Sergeant Typhoeus at the docks.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end