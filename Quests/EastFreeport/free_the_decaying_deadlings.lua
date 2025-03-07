--[[
	Script Name		:	free_the_decaying_deadlings.lua
	Script Purpose	:	Handles the quest, "Free the Decaying Deadlings"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	3/3/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The City of Freeport
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill six decaying deadlings.", 6, 100, "I must slay six decaying deadlings in the Sunken City.", 611, 8410023, 8410024, 8410025, 8410028, 8410029, 8410030)
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

	UpdateQuestDescription(Quest, "I have laid to rest six of the decaying deadlings in the Sunken City, just as Sirraw Swiftpaw requested.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	    Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Step1Complete (Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I have killed the decaying deadlings.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain six decaying deadlings in the Sunken City.")
	
	AddQuestStepKill(Quest, 2, "I should speak with Sirraw.", 1, "I should return to Sirraw Swiftpaw now that I have slain the undead.", 11, 1280019)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end
