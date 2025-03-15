--[[
	Script Name		:	frostfin_hunting.lua
	Script Purpose	:	Handles the quest, "Frostfin Hunting"
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
	AddQuestStepKill(Quest, 1, "I need to kill primal frostfin sharks.", 23, 100, "I need to make the waters of Everfrost safer by slaying primal frostfin sharks.", 611, 410003, 410008, 410082)
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
	UpdateQuestStepDescription(Quest, 1, "I killed primal frostfin sharks.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I made the waters of Everfrost safer by slaying primal frostfin sharks.")

	UpdateQuestDescription(Quest, "The icy waters surrounding Stormedge Isle are a bit easier to traverse now that I have culled the number of primal frostfin sharks swimming about in Everfrost.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
