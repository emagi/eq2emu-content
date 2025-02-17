--[[
	Script Name		:	let_me_count_the_ways....lua
	Script Purpose	:	Handles the quest, "Let Me Count the Ways..."
	Script Author	:	Xiki
	Script Date		:	2/12/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Stonestair Byway
	Quest Giver		:	Tobial
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Slay ratonga in the Sprawl.  ", 1, 100, "Tobial wants to give Miala a ratonga to show her how much he loves her.  Not just one, but ten.", 611, 8400001, 8400002, 8400003, 8400004)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_talktoTobial")
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

function step1_complete_talktoTobial(Quest, QuestGiver, Player)
    AddQuestStepChat(Quest, 2, "I need to return to Tobial.", 1, "I should let Tobial know I have slain the Ratonga for his beloved Miala", 11, 1350046)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 2, "I have returned to Tobial.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've given Tobial the ratonga corpses he asked for.")
	
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_talktoTobial(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    QuestComplete(Quest, QuestGiver, Player)
	end
end
