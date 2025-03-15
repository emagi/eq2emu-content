--[[
	Script Name		:	random_violence.lua
	Script Purpose	:	Handles the quest, "Random Violence"
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
	AddQuestStepKill(Quest, 1, "I need to kill arctic behemoths and arctic wyrms.", 22, 100, "I need to avenge a loss by killing ice lizards in Everfrost.", 611, 410048, 410028)
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
	UpdateQuestStepDescription(Quest, 1, "I killed arctic behemoths and arctic wyrms.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I avenged a loss by killing arctic behemoths and arctic wyrms in Everfrost.")

	UpdateQuestDescription(Quest, "Justice has been exacted, and the terror of Freeport established, now that I have killed a number of arctic behemoths and arctic wyrms in Everfrost.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
