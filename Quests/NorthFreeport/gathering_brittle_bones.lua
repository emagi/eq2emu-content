--[[
	Script Name		:	gathering_brittle_bones.lua
	Script Purpose	:	Handles the quest, "Gathering Brittle Bones"
	Script Author	:	Xiki
	Script Date		:	2/15/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The City of Freeport
	Quest Giver		:	Augurer Valgus
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill some brittle skeletons.", 4, 15, "I must gather four brittle bones from skeletons in the Commonlands.", 90, 330232)
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
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around

	UpdateQuestDescription(Quest, "I have gathered four brittle bones and have given them to Augurer Valgus. Apparently I took too long for them to be of substantial use. At least my time was compensated for.")
	GiveQuestReward(Quest, Player)
end

function step1_complete_talktoValgus(Quest, QuestGiver, Plater)
    UpdateQuestStepDescription(Quest, 1, "I have killed four brittle skeletons.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have gathered the four brittle bones from the skeletons in Commonlands.")
	
	AddQuestStepChat(Quest, 2, "I need to return to Augurer Valgus in North Freeport.", 1, "Valgus is expecting me.", 11, 1440043)
    AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	   step1_complete_talktoValgus(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
