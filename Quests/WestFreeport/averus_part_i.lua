--[[
	Script Name		:	averus_part_i.lua
	Script Purpose	:	Handles the quest, "Averus, Part I"
	Script Author	:	Xiki
	Script Date		:	2/17/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	West Freeport
	Quest Giver		:	Averus Justarius
	Preceded by		:	None
	Followed by		:	Averus, Part II
--]]

local QuestID = 6005

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill ten of the skeletal undead inside the Wailing Caves.", 1, 100, "Averus claims that there is a forgotten cache of armor in the Wailing Caves, a system of caves to the north of Freeport.  Before I search for this cache, I need to make sure I can deal with the undead that still roam within the caverns.", 611, 2580033, 2580002, 2580044, 2580043, 2580038, 2580043, 2580000, 2580008, 2580015, 2580039)
    AddQuestStepKill(Quest, 2, "I need to kill ten of the ghostly undead inside the Wailing Caves.", 1, 100, "Averus claims that there is a forgotten cache of armor in the Wailing Caves, a system of caves to the north of Freeport.  Before I search for this cache, I need to make sure I can deal with the undead that still roam within the caverns.", 611, 2580005)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	
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
	UpdateQuestStepDescription(Quest, 1, "I've killed ten of the skeletal undead in the Wailing Caves.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've engaged the undead within the caves and still live to tell the tale.  While I was there, I even spotted what appeared to be some orcs that were still alive.")

	UpdateQuestDescription(Quest, "I've gone into the Wailing Caves and scoped out the place for Averus.  According to the stories, the place should be littered with undead exclusively, but I think I saw a few living orcs in there.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
        Step1Complete(Quest, QuestGiver, Player)
    elseif Step == 2 then
        Step2Complete(Quest, QuestGiver, Player)
    elseif Step == 3 then
        Step3Complete(Quest, QuestGiver, Player)
    elseif Step == 4 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've killed 10 skeletons.")
	CompleteStage1Check(Quest, Player)

end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've killed ten ghosts.")
	CompleteStage1Check(Quest, Player)
end

function CompleteStage1Check(Quest, Player)
	if QuestStepIsComplete(Player, QuestID, 1) and QuestStepIsComplete(Player, QuestID, 2) then
		UpdateQuestTaskGroupDescription(Quest, 1, "I have done what Averus asked of me.")
		AddQuestStepChat(Quest, 3, "I need to return to Averus now that I have done what was asked.", 1, "I have done what Averus asked of me.", 11, 1680136)
		AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	end
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have spoken with Averus.")
	UpdateQuestDescription(Quest, "I've engaged the undead within the caves and still live to tell the tale. While I was there, I even spotted what appeared to be some orcs that were still alive.")
	GiveQuestReward(Quest, Player)
end
