--[[
	Script Name		:	attack_of_the_zombies.lua
	Script Purpose	:	Handles the quest, "Attack of the Zombies"
	Script Author	:   Xiki
	Script Date		:	3/14/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	South Qeynos
	Quest Giver		:	Pupil Adept Wazzlefop
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill zombie knights.", 12, 100, "I need to forestall an attack by slaying zombie knights within Stormhold.", 611, 150028, 150243)
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
	UpdateQuestStepDescription(Quest, 1, "I killed zombie knights.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I forestalled an attack by slaying zombie knights.")

	UpdateQuestDescription(Quest, "The potential attack against Qeynos has been hindered now that I have slain a number of the undead knights.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
