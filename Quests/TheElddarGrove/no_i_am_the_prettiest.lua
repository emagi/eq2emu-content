--[[
	Script Name		:	no_i_am_the_prettiest.lua
	Script Purpose	:	Handles the quest, "No, I Am the Prettiest!"
	Script Author	:	Xiki
	Script Date		:	3/14/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The Elddar Grove
	Quest Giver		:	Preservationist Reynolds
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Galebreaker maidens.", 21, 100, "I need to protect the trees by slaughtering Galebreaker maidens within Everfrost.", 611, 410030)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Galebreaker maidens.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I protected the trees by slaughtering Galebreaker maidens.")

	UpdateQuestDescription(Quest, "The evergreens have prospered now that I have slaughtered a number of the hailstorm valkyries.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
