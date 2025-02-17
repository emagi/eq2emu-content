--[[
	Script Name		:	the_mariners_rhyme.lua
	Script Purpose	:	Handles the quest, "The Mariner's Rhyme"
	Script Author	:	Xiki
	Script Date		:	2/15/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The City of Freeport
	Quest Giver		:	Augurer Valgus
	Preceded by		:	None
	Followed by		:	Gathering Brittle Bones
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, " Valgus asked me to find Javvy and remind him to bring the mariner's rhyme to the temple. ", 1, " I need to find Javvy in a tavern.", 11, 1280091)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_talktoValgus")
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

	UpdateQuestDescription(Quest, "I delivered the mariner's rhyme to the temple Augurer as agreed. He was quite pleased with it and promised to pray for my conversion. At least the pay was not bad.")
	GiveQuestReward(Quest, Player)
end

function step1_complete_talktoValgus(Quest, QuestGiver, Player)
    	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have spoken with the drunkard Javvy, I should return to Augurer Valgus immediately.")
	UpdateQuestTaskGroupDescription(Quest, 1, "After speaking with Javvy I need to return to Valgus for my payment.")
	
	AddQuestStepChat(Quest, 2, " Valgus asked me to find Javvy and remind him to bring the mariner's rhyme to the temple. ", 1, " I need to find Javvy in a tavern.", 11, 1440043)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	    step1_complete_talktoValgus(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
