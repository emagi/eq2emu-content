--[[
	Script Name		:	kill_the_giantslayers.lua
	Script Purpose	:	Handles the quest, "Kill the Giantslayers"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	2/16/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The City of Freeport
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Kill Giantslayer thugs", 1, 100, "I'm to venture to the Sprawl and find the Giantslayer gang.  I can reach the Sprawl by using any of the bells in and around the City of Freeport.", 611, 8400015)
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
	UpdateQuestStepDescription(Quest, 1, "I have killed the Giantslayer thugs.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have been to the Sprawl and slain ten Giantslayers. Class dismissed.")

	UpdateQuestDescription(Quest, "I've confronted the Giantslayers and taught them that it's not nice to steal coin or life, by slaying ten of their kind.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
