--[[
	Script Name		:	the_bringer_of_terror.lua
	Script Purpose	:	Handles the quest, "The Bringer of Terror"
	Script Author	:	Xiki
	Script Date		:	3/14/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Qeynos
	Quest Giver		:	Guard Rellin`thir
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Bloodsaber medics.", 17, 100, "I need to disrupt the rituals by slaying Bloodsaber medics within the Crypt of Betrayal.", 611, 2010000)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Bloodsaber medics.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I disrupted the rituals by slaying Bloodsaber medics.")

	UpdateQuestDescription(Quest, "The possible summoning of an avatar has been thwarted now that I have slain a number of the Bloodsaber zealots.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
