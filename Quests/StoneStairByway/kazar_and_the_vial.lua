--[[
	Script Name		:	kazar_and_the_vial.lua
	Script Purpose	:	Handles the quest, "Kazar and the Vial"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	2/12/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Stonestair Byway
	Quest Giver		:	
	Preceded by		:	Kazar's Focus
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to find the troll, Crantik the Crazed.", 1, "I should travel to Big Bend and look for Crantik the Crazed. I wonder why they call him that.", 11, 1340046)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_talktoKazar")
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

function step1_complete_talktoKazar(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I have found Crantik.")
	UpdateQuestTaskGroupDescription(Quest, 1, "It seems that Crantik was out of vials. At least I'm pretty sure that's what he said.")
	
	AddQuestStepChat(Quest, 2, "I should return the news to Kazar", 1, "After speaking with Crantik, I should return to Kazar with the news.", 11, 1340038)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
	
end

function QuestComplete(Quest, QuestGiver, Player)
    UpdateQuestDescription(Quest, "Kazar was quite upset over not getting that vial. He even went so far as to threaten destroying this city if he couldn't complete his ritual today. I doubt he'll live long enough after what he said about the Kerrans.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_talktoKazar(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    QuestComplete(Quest, QuestGiver, Player)
	end
end
