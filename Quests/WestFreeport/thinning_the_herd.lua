--[[
	Script Name		:	thinning_the_herd.lua
	Script Purpose	:	Handles the quest, "Thinning the Herd (Commonlands)"
	Script Author	:	Xiki
	Script Date		:	3/14/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	West Freeport
	Quest Giver		:	Trooper Bonesaw
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill young vulriches within the Commonlands.", 12, 100, "I need to protect the refugees by slaying young vulriches within the Commonlands.", 611, 330032)
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
	UpdateQuestStepDescription(Quest, 1, "I killed enough young vulriches.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I protected the refugees by slaying young vulriches.")

	UpdateQuestDescription(Quest, "The new refugees should find their excursions from Freeport safer now that I have slain a number of the aggressive flightless birds.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
