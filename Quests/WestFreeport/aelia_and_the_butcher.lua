--[[
	Script Name		:	aelia_and_the_butcher.lua
	Script Purpose	:	Handles the quest, "Aelia and the Butcher"
	Script Author	:	Xiki
	Script Date		:	2/17/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	West Freeport
	Quest Giver		:	Merchant Aelia Catus
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Julia Florens.", 1, "Aelia Catus wants me to visit Julia Florens at the Jade Tiger's Den and deliver a 'friendly reminder' about her debt.", 11, 1440060)
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

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Julia Florens.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have delivered the message as instructed.")

	AddQuestStepChat(Quest, 2, "I need to return to Aelia.", 1, "I need to speak with Aelia Catus and inform her I have delivered her message.", 11, 1680046)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Aelia Catus.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Aelia Catus has rewarded me for my time and bravery.")

	UpdateQuestDescription(Quest, "Aelia Catus paid me to give Julia Florens a threatening reminder of debts owed.  I'm not sure of Julia Floren's affiliations, but hopefully this won't be held against me.  After all, I was just the messenger. <br> <br>")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
