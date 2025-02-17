--[[
	Script Name		:	armadillo_hides.lua
	Script Purpose	:	Handles the quest, "Armadillo Hides"
	Script Author	:	Xiki
	Script Date		:	2/16/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	South Freeport
	Quest Giver		:	Armorsmith Nipius Malchus
	Preceded by		:	None
	Followed by		:	Armor Delivery
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to collect fifteen armadillo hides for Nipius", 15, 100, "I need to collect the armadillo hides for Nipius.", 2047, 330024, 330028, 331148, 331149)
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
	UpdateQuestStepDescription(Quest, 1, "I have collected the armadillo hides.")

	AddQuestStepChat(Quest, 2, "I need to bring these hides to Nipius", 1, "I need to collect the armadillo hides for Nipius.", 11, 1660027)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have given Nipius the hides.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have given Nipius the armadillo hides.")

	UpdateQuestDescription(Quest, "I have turned in the 15 armadillo hides that merchant Nipius Malchus wanted.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
