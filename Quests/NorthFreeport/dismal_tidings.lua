--[[
	Script Name		:	dismal_tidings.lua
	Script Purpose	:	Handles the quest, "Dismal Tidings"
	Script Author	:	Xiki
	Script Date		:	2/14/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The City of Freeport
	Quest Giver		:	Consternator Soulinus
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepZoneLoc(Quest, 1, "I need to reach the mausoleum in the Commonlands.", 50, "I need to find the mausoleum in the center of the cemetery and assess the undead situation. If there are undead in the area, I may need to fight my way through them to get to the structure.", 11, 140.79, -47.92, -223.29, 33)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_talktoSoulinus")
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

function step1_complete_talktoSoulinus(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I have reached the mausoleum.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've assessed the undead situation, and it looks bad. This place is crawling with the Undead.")

	AddQuestStepChat(Quest, 2, "I need to return to Soulinus and inform her of the situation.", 1, "Return to Soulinus in The Temple of War.", 11, 1440071)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")  
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_talktoSoulinus(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    QuestComplete(Quest, QuestGiver, Player)
	end
end


