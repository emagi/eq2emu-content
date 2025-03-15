--[[
	Script Name		:	scuttle_the_man-o-war.lua
	Script Purpose	:	Handles the quest, "Scuttle the Man-o-War"
	Script Author	:	Xiki
	Script Date		:	3/15/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Freeport
	Quest Giver		:	Paragon Jalex
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Runnyeye smiths.", 18, 100, "I need to protect Freeport by slaying Runnyeye smiths within Runnyeye.", 611, 2420010)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Runnyeye smiths.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I protected Freeport by slaughtering Runnyeye smiths.")

	UpdateQuestDescription(Quest, "The outfitting of the warship has halted now that I have slain a number of goblin engineers.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
