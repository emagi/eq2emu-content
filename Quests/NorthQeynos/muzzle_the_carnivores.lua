--[[
	Script Name		:	muzzle_the_carnivores.lua
	Script Purpose	:	Handles the quest, "Muzzle the Carnivores"
	Script Author	:	Xiki
	Script Date		:	3/13/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Qeynos
	Quest Giver		:	Sergeant-at-Arms Ironcast
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill waste grawlers.", 21, 100, "I need to protect the adventurers by destroying waste grawlers within the Orcish Wastes.", 611, 1900432)
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
	UpdateQuestStepDescription(Quest, 1, "I killed waste grawlers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I protected the adventurers by destroying waste grawlers.")

	UpdateQuestDescription(Quest, "The attacks against explorers have slowed now that I have destroyed a number of the ravenous kodiaks.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
