--[[
	Script Name		:	offerings_of_the_faithful.lua
	Script Purpose	:	Handles the quest, "Offerings of the Faithful"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	2/16/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The City of Freeport
	Quest Giver		:	Clara Maius
	Preceded by		:	None
	Followed by		:	None
--]]

local QuestID = 5983

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to collect the offering from Missionary G'Zule near the Temple of War.", 1, "I need to speak with several people in Freeport and collect offerings for Dismal Rage.", 11, 1440056)
	AddQuestStepChat(Quest, 2, "I need to collect the offering from Bruccius Capito is in East Freeport by the docks.", 1, "I need to speak with several people in Freeport and collect offerings for Dismal Rage.", 11, 1280032)
	AddQuestStepChat(Quest, 3, "I need to collect the offering from Banker Magia Cotta in West Freeport near the bank.", 1, "I need to speak with several people in Freeport and collect offerings for Dismal Rage.", 11, 1680025)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
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
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected all of the offerings from the faithful.")

	UpdateQuestDescription(Quest, "Clara conned me into collecting offerings for Dismal Rage from people who didn't sound like they were too happy to offer these donations. She didn't even give me a reward for my help.")
	GiveQuestReward(Quest, Player)
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected G'Zule's offering.")
	CompleteStage1Check(Quest, Player)

	--AddQuestStepKill(Quest, 2, "I need to kill ten snakes.", 10, 100, "I need to head out into Antonica and kill the vermin that infest the land; rats, snakes and beetles. Knight-Lieutenant Alesso said I should kill about ten of each.", 1908, 120068, 121226, 121347)
	--AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have collected Bruccius' offering.")
	CompleteStage1Check(Quest, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have collected Magia's offering.")
	CompleteStage1Check(Quest, Player)
end

function CompleteStage1Check(Quest, Player)
	if QuestStepIsComplete(Player, QuestID, 1) and QuestStepIsComplete(Player, QuestID, 2) and QuestStepIsComplete(Player, QuestID, 3) then
		UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the offerings for Clara.")
		AddQuestStepChat(Quest, 4, "I need to return to Clara now.", 1, 100, "I have done what Clara asked of me.", 11, 121435)
		AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
	end
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have spoken with Clara.")
	UpdateQuestDescription(Quest, "I did as Clara asked and collected offerings for the Dismal Rage. Unfortunately she conned me...")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end