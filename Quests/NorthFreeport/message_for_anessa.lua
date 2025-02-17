--[[
	Script Name		:	message_for_anessa.lua
	Script Purpose	:	Handles the quest, "Message for Anessa"
	Script Author	:	Xiki
	Script Date		:	2/15/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Freeport
	Quest Giver		:	Augurer Valgus
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must take the message to Anessa Bonefetter.", 1, "I have to give this message to Anessa Bonefetter or Augurer Valgus will be furious.", 75, 1680158)
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
	GiveQuestReward(Quest, Player)
end

function step1_complete_talktoValgus(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I have delivered the message to Anessa Bonefetter.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have delivered Augurer Valgus's message to Anessa Bonefetter.")
	UpdateQuestDescription(Quest, "I have delivered Augurer Valgus's message to Anessa Bonefetter.  She sure didn't appreciate the effort I put into getting it to her.")
    
    AddQuestStepChat(Quest, 2, "I should return to Valgus for my reward.", 1, "Valgus is waiting my return.", 75, 1440043)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
    
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	    step1_complete_talktoValgus(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
