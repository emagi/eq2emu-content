--[[
	Script Name		:	the_marauder_eye_patches.lua
	Script Purpose	:	Handles the quest, "The Marauder Eye Patches"
	Script Author	:	Xiki
	Script Date		:	2/17/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	West Freeport
	Quest Giver		:	Anessa Bonefetter
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must slay some Nerius marauders.", 1, 100, "I must slay six Nerius marauders along the beaches of Nektulos.", 2128, 1790264, 1790269)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
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

	UpdateQuestDescription(Quest, "Anessa Bonefetter, the second mate of the Seafury Buccaneers, hired me to slay six Nerius marauders in order to obtain six of their marauder eye patches. She paid me quite well for my services.")
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
    UpdateQuestStepDescription(Quest, 1, "I have slain some Nerius marauders.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain six Nerius marauders and earned obtained their eye patches.")
	
	AddQuestStepChat(Quest, 2, "I must slay some Nerius marauders.", 1, "I must slay six Nerius marauders along the beaches of Nektulos.", 11, 1680158)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end