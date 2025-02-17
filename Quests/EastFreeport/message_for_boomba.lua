--[[
	Script Name		:	message_for_boomba.lua
	Script Purpose	:	Handles the quest, "Message for Boomba"
	Script Author	:	Xiki
	Script Date		:	2/17/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	East Freeport
	Quest Giver		:   Annia Velithe
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to deliver a message to Boomba.", 1, "I must deliver Annia Velithe's message to Boomba near the Commonlands gate.", 11, 1680016)
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
	UpdateQuestStepDescription(Quest, 1, "I have delivered the message to Boomba.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have delivered Annia Velithe's message to Boomba.")

	UpdateQuestDescription(Quest, "I have delivered Annia Velithe's message to Boomba, who I found near the gate to the Commonlands.  He paid me with a few coins and a nice lunch.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
