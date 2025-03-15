--[[
	Script Name		:	dont_try_to_look_beneath_the_surface.lua
	Script Purpose	:	Handles the quest, "Don't Try to Look Beneath the Surface"
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
	AddQuestStepKill(Quest, 1, "I need to kill tundra terrors.", 24, 100, "I need to blaze a path for the surveyors by destroying tundra terrors within Everfrost.", 611, 410093)
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
	UpdateQuestStepDescription(Quest, 1, "I killed tundra terrors.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I blazed a path for the surveyors by destroying tundra terrors.")

	UpdateQuestDescription(Quest, "The exploration and documentation of the hinterland has continued now that I have destroyed a number of tundra terrors.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
