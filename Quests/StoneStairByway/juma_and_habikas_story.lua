--[[
	Script Name		:	juma_and_habikas_story.lua
	Script Purpose	:	Handles the quest, "Juma and Habika's Story"
	Script Author	:	Xiki
	Script Date		:	2/13/2025
	Script Notes	:	Modified with QuestParser.

	Zone			:	Stonestair Byway
	Quest Giver		:	Juma
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to deliver a note to Habika in Stonestair Byway.", 1, "Juma wants me to take his letter to Habika in Stonestair Byway.", 1223, 1350035)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_delivernote")
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

function step1_complete_delivernote(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I delivered the note to Habika")
	UpdateQuestTaskGroupDescription(Quest, 1, "I took Juma's note to Habika.")

	AddQuestStepChat(Quest, 2, "I need to return to Juma and let him know that I delivered the note.", 1, "I need to go back to Juma and tell him that I delivered the note.", 11, 1350007)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_delivernote(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    QuestComplete(Quest, QuestGiver, Player)
	end
end