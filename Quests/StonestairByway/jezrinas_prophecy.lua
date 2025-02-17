--[[
	Script Name		:	jezinras_prophecy.lua
	Script Purpose	:	Handles the quest, "Jezrina's Prophecy"
	Script Author	:	Xiki
	Script Date		:	2/13/2025
	Script Notes	:	Custom quest script.

	Zone			:	Stonestair Byway
	Quest Giver		:	Jezrina the Seer
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Kill puny squalid vermin in the Ruins until a tumored heart is located.", 1, 100, "I need to find a tumor-infested heart from a Molerat. I'll search the Ruins near the docks.", 109, 8420017)
	AddQuestStepCompleteAction(Quest, 1, "ReturnToJezrina")
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

function ReturnToJezrina(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have found the tumor-infested heart, now I need to return to Jezrina.")
	
	AddQuestStep(Quest, 2, "Return to Jezrina", 1, 1350031, "I need to return to Jezrina and give her the heart.")
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have returned to Jezrina.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've returned to Jezrina and given her the heart.")

	UpdateQuestDescription(Quest, "I've given Jezrina the tumor-infested heart. She should be able to see my destiny now.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		ReturnToJezrina(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
