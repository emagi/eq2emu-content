--[[
	Script Name		:	typhoeuss_blackmail.lua
	Script Purpose	:	Handles the quest, "Typhoeus's Blackmail"
	Script Author	:	Xiki
	Script Date		:	2/17/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	East Freeport
	Quest Giver		:	Sergeant Typhoeus
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to collect 25 pieces of tattered armor from exiled orcs in the Ruins.", 1, 100, "I must get no less than twenty-five pieces of tattered armor from exiled orcs in the Ruins.", 166, 8420025)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	UpdateQuestZone(Quest, "The Ruins")
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


	UpdateQuestDescription(Quest, "I've returned to Sergeant Typhoeus with the tattered orc armor as proof. I should be more careful of what I say to the militia in the future")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	   Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
	   QuestComplete(Quest, QuestGiver, Player)
	end
end

function Step1Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I collected enough pieces of tattered armor.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've collected twenty-five pieces of tattered orc armor out in the Ruins.")
	
	AddQuestStepChat(Quest, 2, "I should speak with Sergeant Typhoeus", 1, "I hope that I have enough to please Sergeant Typhoeus and sway him into forgiving me. I should speak with him before he changes his mind.", 11, 1280021)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end