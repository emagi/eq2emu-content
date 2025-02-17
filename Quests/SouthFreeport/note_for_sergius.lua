--[[
	Script Name		:	note_for_sergiuss.lua
	Script Purpose	:	Handles the quest, "Note for Sergius"
	Script Author	:	Xiki
	Script Date		:	2/16/2025
	

	Zone			:	South Freeport
	Quest Giver		:	Weaponsmith Lucilla Quietus
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to deliver the message to Sergius Mordanticus.", 1, "I must deliver this letter to Sergius Mordandicus in the West Freeport.", 11, 1680144)
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

	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
