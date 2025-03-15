--[[
	Script Name		:	it_came_from_below.lua
	Script Purpose	:	Handles the quest, "It Came from Below!"
	Script Author	:	Xiki
	Script Date		:	3/14/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Qeynos
	Quest Giver		:	Guard Rellin`thir
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill grotesque masses.", 15, 100, "I need to reduce the scourge by destroying grotesque masses within the Crypt of Betrayal.", 611, 2010011, 2010015, 2010016)
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
	UpdateQuestStepDescription(Quest, 1, "I killed grotesque masses.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I reduced the scourge by destroying grotesque masses.")

	UpdateQuestDescription(Quest, "The infestation of slimes has been slowed now that I have destroyed a number of the monstrous goos.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
