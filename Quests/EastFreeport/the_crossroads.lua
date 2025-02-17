--[[
	Script Name		:	the_crossroads.lua
	Script Purpose	:	Handles the quest, "The Crossroads"
	Script Author	:	Xiki
	Script Date		:	2/16/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	East Freeport
	Quest Giver		:	Foreman Asprenus
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I should look around the Crossroads if I'm in the area.", 100, "Asprenus said the Crossroads can be found by following the road out of Freeport and following it to the first bridge.", 11, -485.31, -45.01, -295.76)
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
	UpdateQuestStepDescription(Quest, 1, "I've found the Crossroads.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I managed to find the Crossroads, thanks to the directions Asprenus gave me.")

	UpdateQuestDescription(Quest, "The Crossroads is as desolate as Asprenus had said it was. I don't know why anyone would want to live out here with dangers lurking behind every bush.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
