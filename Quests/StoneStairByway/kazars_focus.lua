--[[
	Script Name		:	kazars_focus.lua
	Script Purpose	:	Handles the quest, "Kazar's Focus"
	Script Author	:	Xiki
	Script Date		:	2/12/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Stonestair Byway
	Quest Giver		:	Kazar
	Preceded by		:	None
	Followed by		:	Kazar and the Vial
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Irian.", 1, "Alchemist Irian is the one who is making the foci.", 11, 1350039)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_talktoKazar")
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

function step1_complete_talktoKazar(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I have spoken with Irian.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Irian has told me that Kazar will need to wait.")

	AddQuestStepChat(Quest, 2, "I need to return to Kazar and inform him of Irian's response", 1, "Kazar is waiting for Irian's response.", 11, 1350038)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_talktoKazar(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    QuestComplete(Quest, QuestGiver, Player)
	end
end
