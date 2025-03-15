--[[
	Script Name		:	the_sharp_stick.lua
	Script Purpose	:	Handles the quest, "The Sharp Stick"
	Script Author	:	Xiki
	Script Date		:	3/15/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Freeport
	Quest Giver		:	Blight Sage Destroz
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill tainted nymphs.", 20, 100, "I need to provoke violence by killing tainted nymphs within Rivervale. ", 611, 2390041,2390120)
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
	UpdateQuestStepDescription(Quest, 1, "I killed tainted nymphs.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I provoked violence by killing tainted nymphs.")

	UpdateQuestDescription(Quest, "The city gates have been under siege from the denizens of Rivervale, prompting the Overlord to consider destroying all life within the forest, now that I have killed a number of the tainted nymphs.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
