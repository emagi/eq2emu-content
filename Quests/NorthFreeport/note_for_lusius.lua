--[[
	Script Name		:	note_for_lusius.lua
	Script Purpose	:	Handles the quest, "Note for Lusius"
	Script Author	:	Xiki
	Script Date		:	2/15/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The City of Freeport
	Quest Giver		:	Scribe Jabir
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must deliver the message to banker Lusius Ulixes.", 1, "I must deliver the message to banker Lusius Ulixes.", 75, 1680022)
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
end

function step1_complete_talktoJabir(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I have delivered the message.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have delivered the message to banker Lusius Ulixes.")
    UpdateQuestDescription(Quest, "I have delivered the message to banker Lusius Ulixes just as scribe Jabir wanted.")
    
    AddQuestStepChat(Quest, 2, "Return to Jabir", 1, "I need to return to Scribe Jabir.", 75, 1440022)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end
