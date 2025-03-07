--[[
	Script Name		:	averus_part_ii.lua
	Script Purpose	:	Handles the quest, "Averus, Part II"
	Script Author	:	Xiki
	Script Date		:	2/17/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	West Freeport
	Quest Giver		:	Averus Justarius
	Preceded by		:	Averus, Part I
	Followed by		:	Averus, Part III
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill the living orcs until I find something to prove that I killed them in the caves.", 1, 15, "I need to.  I need to find proof that these orcs are different than the ones in the Commonlands.", 1270, 2580033,
	2580002, 2580044, 2580043, 2580038, 2580000, 2580008, 2580015, 2580039)
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
    UpdateQuestStepDescription(Quest, 1, "I've found a badge showing a picture of both the caves and the word &quot;Ree&quot;.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've found a badge on one of the orcs.  The Badge appears to be newly made and depicts a cave entrance with the letters R-E-E on it.")
	UpdateQuestDescription(Quest, "I've managed to find proof that there are living orcs in the Wailing Caves.")
	
    AddQuestStepChat(Quest, 2, "I need to return this back to Averus.", 1, "Now that I have found proof of killing the living orcs, I should return to Averus Justarius.", 11, 1680136)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end
