--[[
	Script Name		:	nothing_to_wash_out.lua
	Script Purpose	:	Handles the quest, "Nothing to Wash Out"
	Script Author	:	Xiki
	Script Date		:	3/15/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Freeport
	Quest Giver		:	Forbidden Lore
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Sootfoot rockpickers.", 25, 100, "I need to obey an order from the Citadel by slaughtering Sootfoot rockpickers within Lavastorm.", 611, 1710104)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Sootfoot rockpickers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I obeyed an order from the Citadel by slaughtering Sootfoot rockpickers.")

	UpdateQuestDescription(Quest, "The inhabitants of Lavastorm have slowed their excavations now that I have slaughtered a number of the Sootfoot rockpickers.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
