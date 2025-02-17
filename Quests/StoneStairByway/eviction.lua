--[[
	Script Name		:	eviction.lua
	Script Purpose	:	Handles the quest, "Eviction!"
	Script Author	:   Xiki
	Script Date		:	2/11/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Stonestair Byway
	Quest Giver		:	Innkeeper Zahar
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Galenus.", 1, "Galenus has some rent money I need to collect.  Galenus lives in Stonestair Byway in one of the more exclusive apartments.", 11, 1350036)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	AddQuestStepChat(Quest, 2, "I need to return to Zahar.", 1, "I should let Zahar know that Galenus plans on paying him.", 11, 1350021)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
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
	UpdateQuestStepDescription(Quest, 2, "I have returned to Zahar.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've told Zahar that Galenus plans on paying him.")

	UpdateQuestDescription(Quest, "I've told Zahar that Galenus can't pay the rent, and he's going to personally attend to the matter. Considering the fact that I lied about it, I may not want to talk to Zahar for a little while. Maybe he'll forget what I look like...")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end