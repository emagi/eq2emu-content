--[[
	Script Name		:	armor_delivery.lua
	Script Purpose	:	Handles the quest, "Armor delivery"
	Script Author	:	Xiki
	Script Date		:	2/16/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	South Freeport
	Quest Giver		:	Armorsmith Nipis Malchus
	Preceded by		:	Armadillo Hides
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must deliver armor to Lieutenant Darrius.", 1, "I must deliver this armor to Lieutenant Darrius.", 11, 1680056)
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
    UpdateQuestStepDescription(Quest, 1, "I have delivered armor to Lieutenant Darrius.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have delivered the armor to Lieutenant Darrius.")
	UpdateQuestDescription(Quest, "I have given Lieutenant Darrius his armor crafted by Nipius.")
	
	AddQuestStepChat(Quest, 2, "I have completed the delivery. I should speak to Nipius", 1, "I must return to Nipius", 11, 1660027)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end