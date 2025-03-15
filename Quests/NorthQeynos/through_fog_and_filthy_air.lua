--[[
	Script Name		:	through_fog_and_filthy_air.lua
	Script Purpose	:	Handles the quest, "Through Fog and Filthy Air"
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
	AddQuestStepKill(Quest, 1, "I need to kill noxious masses.", 22, 100, "I need to cleanse the air by killing noxious masses within the Temple of Cazic-Thule.", 611, 280018, 280020)
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
	UpdateQuestStepDescription(Quest, 1, "I killed noxious masses.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I cleansed the air by killing noxious masses.")

	UpdateQuestDescription(Quest, "Qeynosian surveyors have reported the air as less offensive now that I have killed a number of the foul goos.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
