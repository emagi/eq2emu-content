--[[
	Script Name		:	graverobber_spoils.lua
	Script Purpose	:	Handles the quest, "Graverobber Spoils"
	Script Author	:	Xiki
	Script Date		:	2/15/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The City of Freeport
	Quest Giver		:	Missionary G'zule
	Preceded by		:	Death Certificate
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Retrieve the grave robbers' spoils.", 1, 25, "I must venture to the cemetery out in the Commonlands, dispatch the grave robbers, and return with what they've stolen.", 91, 330233)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_talktoMissionary")
	UpdateQuestZone(Quest, "The Commonlands")
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
    GiveQuestReward(Quest, Player)
end

function step1_complete_talktoMissionary(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I've retrieved the pilfered items.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've eliminated the grave robbers and retrieved their spoils.")
	UpdateQuestDescription(Quest, "I eliminated the grave robbers and returned to the Temple of War with what they've stolen.  Missionary G'Zule was less than grateful for my efforts, though it matters not for I received my reward.")
	
	AddQuestStepChat(Quest, 2, "Return to G'Zule.", 1, "I have retrieved what the Graverobber stole. I need to return to Missionary G'Zule with it.", 11, 1440056)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	    step1_complete_talktoMissionary(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
