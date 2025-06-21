--[[
	Script Name		:	trials_of_the_soldier.lua
	Script Purpose	:	Handles the quest, "Trials of the Soldier"
	Script Author	:	Xiki
	Script Date		:	2/17/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	West Freeport
	Quest Giver		:	Sergius Mordanticus
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must find some orcs and destroy 10 of them for Sergius.", 10, 100, "Sergius Mordanticus of the Freeport Militia has asked me to kill ten orcs.", 611, 330126, 330268, 330326, 330123, 330125,
	    330202, 330204, 330249, 330265, 330268, 330288, 330289, 330295, 330323, 330327, 330335, 331151, 331152, 331157, 330068, 331152)
	UpdateQuestZone(Quest, "The Commonlands")
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
	UpdateQuestDescription(Quest, "In order to gain a deeper understanding of what the Freeport Militia does for the city, Sergius Mordanticus ordered me to kill ten orcs. When I returned to him after completing this task, he awarded me with some coin, ale, and offered me the opportunity to learn more about the Militia's duties.")
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
    UpdateQuestStepDescription(Quest, 1, "I have killed the required number of orcs.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain the ten orcs Sergius Mordatincus asked me to kill.")

	AddQuestStepChat(Quest, 2, "I need to return to Sergius.", 1, "I have killed orcs for Sergius Mordatincus, I should return to him in West Freeport", 611, 1680144)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")


end
