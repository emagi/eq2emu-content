--[[
	Script Name		:	golem_research.lua
	Script Purpose	:	Handles the quest, "Golem Research"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	2/16/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The City of Freeport
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]
local QuestID = 5974

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must collect more undead ogre remains.", 4, 15, "I must collect the remains of undead Ogres and Trolls in Fallen Gate.", 91, 1190077)
	AddQuestStepKill(Quest, 2, "I must collect more undead troll remains.", 4, 15, "I must collect the remains of undead Ogres and Trolls in Fallen Gate.", 91, 1190078)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	
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
    GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	    Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    Step2Complet(Quest, QuestGiver, Player)
	elseif Step == 3 then
	   	QuestComplete(Quest, QuestGiver, Player)
	end
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've collected enough ogre remains.")
	CompleteStage1Check(Quest, Player)

end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've collected enough troll remains.")
	CompleteStage1Check(Quest, Player)
end

function CompleteStage1Check(Quest, Player)
	if QuestStepIsComplete(Player, QuestID, 1) and QuestStepIsComplete(Player, QuestID, 2) then
		UpdateQuestTaskGroupDescription(Quest, 1, "I have collected all of the remains for Euphemius.")
		AddQuestStepChat(Quest, 3, "I need to return to Euphemius with these undead remains.", 1, "I have done what Euphemius asked of me.", 11, 1440033)
		AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
	end
end