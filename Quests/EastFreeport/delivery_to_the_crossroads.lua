--[[
	Script Name		:	delivery_to_the_crossroads.lua
	Script Purpose	:	Handles the quest, "Delivery to the Crossroads"
	Script Author	:	Xiki
	Script Date		:	2/16/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	East Freeport
	Quest Giver		:	Merchant Viducius Festus
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must find merchant Valary at the Crossroads in the Commonlands.", 1, "I must find merchant Valary at the Crossroads in the Commonlands.", 10, 330253)
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
	UpdateQuestStepDescription(Quest, 1, "I have found merchant Valary.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found merchant Valary.")

	UpdateQuestDescription(Quest, "I was sent on an errand to deliver a package to the Crossroads Village.  I found the village and delivered the package to merchant Valary.  In exchange, I received some coin, but something seemed suspicious. I will remember this encounter.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
