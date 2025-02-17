--[[
	Script Name		:	varski_part_ii.lua
	Script Purpose	:	Handles the quest, "Varski, Part II"
	Script Author	:	Xiki
	Script Date		:	2/17/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	West Freeport
	Quest Giver		:	Varski
	Preceded by		:	Varski, Part I
	Followed by		:	Varski, Part III
--]]

local QuestID = 6010

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill tormented dragoons until I find an etched circlet.", 1, 33, "I need to travel back to Fallen Gate and start destroying the dark elven skeletons that walk around the ruins.  Supposedly one of them will have an etched circlet on them, a quartz rod, and a spinning glass orb.", 953, 1190050)
	AddQuestStepKill(Quest, 2, "I need to kill blighted denizens until I find a quartz rod.", 1, 33, "I need to travel back to Fallen Gate and start destroying the dark elven skeletons that walk around the ruins.  Supposedly one of them will have an etched circlet on them, a quartz rod, and a spinning glass orb.", 953, 1190039, 1190068)
	AddQuestStepKill(Quest, 3, "I need to kill tormented battlemages until I find a spinning glass orb .", 1, 33, "I need to travel back to Fallen Gate and start destroying the dark elven skeletons that walk around the ruins.  Supposedly one of them will have an etched circlet on them, a quartz rod, and a spinning glass orb.", 953, 1190052)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
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

	UpdateQuestDescription(Quest, "I'm beginning to distrust this little rat.  After giving him three obviously magical objects, all he managed to turn them into was a gilded crown!  The thing isn't even made from real gold.  Then again, he's using some weird kind of magic to make these things, so I shouldn't distrust him too much.")
	GiveQuestReward(Quest, Player)
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've found the etched circlet.")
	CompleteStage1Check(Quest, Player)

end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've found the quartz rod.")
	CompleteStage1Check(Quest, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've found the spinning glass orb.")
	CompleteStage1Check(Quest, Player)
end

function CompleteStage1Check(Quest, Player)
	if QuestStepIsComplete(Player, QuestID, 1) and QuestStepIsComplete(Player, QuestID, 2) and QuestStepIsComplete(Player, QuestID, 3) then
		UpdateQuestTaskGroupDescription(Quest, 1, "I have all the items for Varski.")
		AddQuestStepChat(Quest, 4, "I need to return to Varski now with all these items.", 1, "I have done what Varski asked of me.", 11, 121435)
		AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
	end
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have spoken with Varski.")
	UpdateQuestDescription(Quest, "I have returned the items Varski asked me to recover, however I think he is holding out on me.")
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
