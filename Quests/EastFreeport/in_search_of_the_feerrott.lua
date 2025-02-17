--[[
	Script Name		:	in_search_of_the_feerrott.lua
	Script Purpose	:	Handles the quest, "In Search of the Feerrott"
	Script Author	:	Xiki
	Script Date		:	2/17/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	East Freeport
	Quest Giver		:	Slaughtergrott the Vigilant
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Search the Orcish Wastes for someone that might know the location of the Feerrott", 1, "I must travel to the Zek and search for some artifact that will lead me to the Feerrott.  Perhaps I could interrogate some orc for information leading to the Feerrott.", 11, 1900125)
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
	UpdateQuestStepDescription(Quest, 1, "I've found an orc cartographer with information")
	UpdateQuestTaskGroupDescription(Quest, 1, "I was able to find an orc cartographer and interrogate him for information regarding the whereabouts of the Feerrott.")

	AddQuestStepKill(Quest, 2, "Eliminate catapult operator threat ", 3, 100, "With information gathered from the orc cartographer escape is assured.  We must eliminate the catapult operators.", 611, 1900086)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've taken care of the catapult threat")
	UpdateQuestTaskGroupDescription(Quest, 2, "We were able to eliminate the catapult threat.  Now on to the General.")

	AddQuestStepChat(Quest, 3, "Find General Lutzgorg", 1, "With the catapults out of the way it's time to find this General Lutzgorg who is overseeing the Sullon clan mill.", 185, 1900086)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've taken the map General Lutzgorg had.")
	UpdateQuestTaskGroupDescription(Quest, 3, "We found the General and he had maps that lead to the Feerrott.")

	AddQuestStepChat(Quest, 4, "Meet Slaughtergrott on the docks in the Steppes", 1, "I need to meet Slaughtergrott at the dock in the Thundering Steppes.", 11, 1900086)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I've met Slaughtergrott on the docks in the Steppes")
	UpdateQuestTaskGroupDescription(Quest, 4, "I've meet up with Slaughtergrott on the dock in the Steppes, now the real adventure begins.")

	UpdateQuestDescription(Quest, "With much running about Zek we found a map to the Feerrott.  Now the real adventure begins.")
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
