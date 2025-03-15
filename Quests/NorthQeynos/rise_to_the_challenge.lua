--[[
	Script Name		:	rise_to_the_challenge.lua
	Script Purpose	:	Handles the quest, "Rise to the Challenge"
	Script Author	:	Xiki
	Script Date		:	3/13/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Qeynos
	Quest Giver		:	Missionary Jenson
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Evol conscripts.", 19, 100, "I need to remove an obstacle by slaughtering Evol conscripts within the Feerrott.", 611, 1210141)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
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
	UpdateQuestStepDescription(Quest, 1, "I killed Evol conscripts.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I removed an obstacle by slaughtering Evol conscripts.")

	UpdateQuestDescription(Quest, "The paladins have resumed their assaults against the jungle temple now that I have slaughtered a number of the ettin guardians.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
