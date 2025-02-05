--[[
    Script Name    : Quests/SouthQeynos/attack_of_the_zombies.lua
    Script Author  : bogusmeatfactory
    Script Date    : 2025.01.29 04:01:28
    Script Purpose : Handles the quest, "Attack of the Zombies"

        Zone       : SouthQeynos
        Quest Giver: Pupil Adept Wazzlefop
        Preceded by: None
        Followed by: None
--]]



function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to forestall an attack by slaying zombie knights within Stormhold.", 10, 100, "I need to kill zombie knights.", 611, 150028, 150243)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
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
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end