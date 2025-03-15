--[[
	Script Name		:	first_the_fin_then_the_head.lua
	Script Purpose	:	Handles the quest, "First the Fin, Then the Head"
	Script Author	:	Xiki
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
	AddQuestStepKill(Quest, 1, "I need to kill Primal frostfins.", 25, 100, "I need to feed the soldiers of Qeynos by slaying primal frostfins.", 611, 410003, 410008, 410082)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Primal frostfins.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I fed the soldiers of Qeynos by slaying primal frostfins.")

	UpdateQuestDescription(Quest, "The bellys of the soldiers and scouts are now warm and toasty with their fresh supply of shark parts.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
