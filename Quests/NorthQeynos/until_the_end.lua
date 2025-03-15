--[[
	Script Name		:	until_the_end.lua
	Script Purpose	:	Handles the quest, "Until the End"
	Script Author	:	Xiki)
	Script Date		:	3/13/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Qeynos
	Quest Giver		:	Knight-Captain Steelgaze
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Thulian frightfiends.", 23, 100, "I need to prevent a cataclysm by slaying Thulian frightfiends within the Temple of Cazic-Thule.", 611, 280036)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Thulian frightfiends.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I prevented a cataclysm by slaying Thulian frightfiends.")

	UpdateQuestDescription(Quest, "The dangerous rituals have been interrupted, and Qeynos stands for another day, now that I have slain a number of the arms of Thule.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
