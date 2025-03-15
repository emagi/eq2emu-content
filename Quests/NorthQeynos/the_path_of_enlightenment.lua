--[[
	Script Name		:	the_path_of_enlightenment.lua
	Script Purpose	:	Handles the quest, "The Path of Enlightenment"
	Script Author	:	Xiki
	Script Date		:	3/13/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Qeynos
	Quest Giver		:	Caretaker Nogfizzle
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill defiled knights.", 11, 100, "I need to clear a path by slaughtering defiled knights within Stormhold.", 611, 150010, 150076, 150227, 150290)
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
	UpdateQuestStepDescription(Quest, 1, "I killed defiled knights.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I cleared a path by slaughtering defiled knights.")

	UpdateQuestDescription(Quest, "The path has been cleared for crusaders to explore Stormhold now that I have slaughtered a number of undead knights.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
