--[[
	Script Name		:	bent_in_the_undergrowth.lua
	Script Purpose	:	Handles the quest, "Bent in the Undergrowth"
	Script Author	:	Xiki
	Script Date		:	3/14/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	West Freeport
	Quest Giver		:	Viscount Gelvonius
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Darkflight painweavers.", 22, 100, "I need to clear the paths by slaughtering Darkflight painweavers within Rivervale.", 611, 2390013)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Darkflight painweavers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I cleared the paths by slaughtering Darkflight painweavers.")

	UpdateQuestDescription(Quest, "Wild thickets and briars have begun to recede from the roads leading into Rivervale now that I have slaughtered a number of the corrupted fairies.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
