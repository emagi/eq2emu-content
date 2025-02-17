--[[
	Script Name		:	varski_part_i.lua
	Script Purpose	:	Handles the quest, "Varski, Part I"
	Script Author	:	Xiki
	Script Date		:	2/17/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	West Freeport
	Quest Giver		:	Varski
	Preceded by		:	None
	Followed by		:	Varski, Part II
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill the undead raiders until I find a stoppered clay pot.  ", 1, 10, "I need to travel to Fallen Gate and seek out the undead raiders.  The first thing I should look for on them will be a stoppered clay pot.", 406, 1190046, 1190047, 1190056, 1190087, 1190016, 1190032)
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

	UpdateQuestDescription(Quest, "Varski held true to his word and has made me a bronzed club from the two things I've brought him.  His hands were moving so fast, I was unable to see how he made the club.")
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
    UpdateQuestStepDescription(Quest, 1, "I've found the stoppered clay pot.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've found the stoppered clay pot on one of the undead halflings.  It feels like there's some type of liquid inside.  Considering how long it's been on the zombie's body, I think I'll keep the cork in it for now.")
    
    	AddQuestStepKill(Quest, 2, "I need to return this clay pot to Varski.", 1, "I have found the clay pot Varski sent me out insearch of. I should take it back to him right away.", 11, 1680189)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end
