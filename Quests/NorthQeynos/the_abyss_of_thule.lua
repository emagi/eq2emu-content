--[[
	Script Name		:	the_abyss_of_thule.lua
	Script Purpose	:	Handles the quest, "The Abyss of Thule"
	Script Author	:	Xiki
	Script Date		:	3/13/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Qeynos
	Quest Giver		:	Partisan Keladerouo
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill spinechiller spiders.", 21, 100, "I need to remove a danger to the templars by slaying spinechiller spiders within the Temple of Cazic-Thule.", 611, 280002, 280003, 280020, 280027, 280037)
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
	UpdateQuestStepDescription(Quest, 1, "I killed spinechiller spiders.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I removed a danger to the templars by slaying spinechiller spiders.")

	UpdateQuestDescription(Quest, "The avengers have found it easier to hunt the Thulian zealots now that I have slain a number of the spineslicer spiders.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
