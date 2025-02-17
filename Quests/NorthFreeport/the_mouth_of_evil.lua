--[[
	Script Name		:	the_mouth_of_evil.lua
	Script Purpose	:	Handles the quest, "The Mouth of Evil"
	Script Author	:	Ciki
	Script Date		:	2/14/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The City of Freeport
	Quest Giver		:	Consternator Soulinus
	Preceded by		:	Dismal Tidings
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepZoneLoc(Quest, 1, "I need to reach the cave mouth and look inside.", 25, "I have been asked to travel to the mouth of the Wailing Caves.  If it was anything like the graveyard, I'll probably have to fight my way to the cave mouth.", 11, -213, -42, -911, 33)
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

	UpdateQuestDescription(Quest, "Soulinus is quite upset over the undead appearing in both the Old Cemetery and the Wailing Caves.  I wasn't able to see far into the caves, but I'm certain there are more inside. <br>")
	GiveQuestReward(Quest, Player)
end

function step1_complete_talktoSoulinus(Quest, QuestGiver, Player)
   	UpdateQuestStepDescription(Quest, 1, "I have looked inside from the vantage point of the mouth of the Wailing Caves.")
	UpdateQuestTaskGroupDescription(Quest, 1, "After enough fighting, I made it to the mouth of the cave. I wasn't able to see much, but there was a horde of undead outside of the cave.")
	
	AddQuestStepChat(Quest, 2, "I need to return to Soulinus to deliver my report.", 1, "I should return to Soulinus", 11, 1440071)
    AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_talktoSoulinus(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    QuestComplete(Quest, QuestGiver, Player)
	end
end
