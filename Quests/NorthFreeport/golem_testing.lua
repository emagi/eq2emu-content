--[[
	Script Name		:	golem_testing.lua
	Script Purpose	:	Handles the quest, "Golem Testing"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	2/16/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The City of Freeport
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepZoneLoc(Quest, 1, "Test reagents along the commonlands lakeshore.", 25, "Search the shores of the small lake near the mage tower in the commonlands for a spot to plant the reagents.", 11, 630, -46, -458, 33)
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
	UpdateQuestDescription(Quest, "The golem field test was a success.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	    Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've planted the test reagents and it spawned a golem!")
	AddQuestStepKill(Quest, 2, "I need to kill the abomination.", 1, 100, "I should kill this golem before it causes some damage.", 91, 330421)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've killed the golem, I should report back to Euphemius immediately with the results.")
	AddQuestStepChat(Quest, 3, "I need to return to Euphemius now that I have tested the reagents got him.", 1, "I completed the field testing.", 11, 1440033)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")

end