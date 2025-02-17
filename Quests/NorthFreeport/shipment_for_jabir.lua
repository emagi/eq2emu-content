--[[
	Script Name		:	shipment_for_jabir.lua
	Script Purpose	:	Handles the quest, "Shipment for Jabir"
	Script Author	:	Xiki
	Script Date		:	2/15/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The City of Freeport
	Quest Giver		:	Scribe Jabir
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must speak with merchant William.", 1, "I must get Jabir's shipment back from merchant William in the Commonlands.", 655, 330174)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_talktoJabir")
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
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	    step1_complete_talktoJabir(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
end

function step1_complete_talktoJabir(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I have spoken with merchant William.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected Jabir's shipment from merchant William.")
	UpdateQuestDescription(Quest, "I have retrieved scribe Jabir's shipment from merchant William.  William was a coward and Jabir was happy to have his shipment back although he didn't show it. ")
	
	AddQuestStepChat(Quest, 2, "I should return to Jabir.", 1, "Jabir is awaiting my return, probably with a large reward for my work!", 655, 1440022)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end
end
