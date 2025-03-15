--[[
	Script Name		:	grip_of_the_sirens.lua
	Script Purpose	:	Handles the quest, "Grip of the Sirens"
	Script Author	:	Xiki
	Script Date		:	3/15/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	South Freeport
	Quest Giver		:	Marauder Kindolus
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill lamia deathsingers.", 21, 100, "I need to remove a fatal temptation by slaying lamia deathsingers within the Enchanted Lands.", 611, 390176)
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
	UpdateQuestStepDescription(Quest, 1, "I killed lamia deathsingers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I removed a fatal temptation to the sailors by slaying lamia deathsingers.")

	UpdateQuestDescription(Quest, "Sailors are able to resist the deadly allure of the lamiae now that I have slain a number of the enchantresses.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
