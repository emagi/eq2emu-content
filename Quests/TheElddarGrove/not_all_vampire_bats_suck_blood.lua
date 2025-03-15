--[[
	Script Name		:	not_all_vampire_bats_suck_blood.lua
	Script Purpose	:	Handles the quest, "Not All Vampire Bats Suck Blood"
	Script Author	:	Xiki
	Script Date		:	3/14/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The Elddar Grove
	Quest Giver		:	Naturalist Tummyfill
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill deafening shriekers.", 16, 100, "I need to defend the deer by slaying deafening shriekers within the Ruins of Varsoon.", 611, 2560004)
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
	UpdateQuestStepDescription(Quest, 1, "I killed deafening shriekers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I defended the deer by slaying deafening shriekers.")

	UpdateQuestDescription(Quest, "The assaults against the deer have slowed now that I have slain a number of the giant bats.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
