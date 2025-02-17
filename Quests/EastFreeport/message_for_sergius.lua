--[[
	Script Name		:	message_for_sergius.lua
	Script Purpose	:	Handles the quest, "Message for Sergius"
	Script Author	:	Xiki
	Script Date		:	2/17/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	East Freeport
	Quest Giver		:   Sirraw Swiftpaw
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to deliver a message to Sergius Mordanticus.", 1, "I must deliver Sirraw Swiftpaw's message to Sergius Mordanticus outside the militia house", 75, 1680144)
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
	UpdateQuestStepDescription(Quest, 1, "I have delivered the message to Segius.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have delivered Sirraw Swiftpaw's message to Sergius Mordanticus.")

	UpdateQuestDescription(Quest, "I have delivered Sirraw Swiftpaw's message to Sergius Mordanticus.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
