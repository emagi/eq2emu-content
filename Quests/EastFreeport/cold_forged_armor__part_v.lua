--[[
	Script Name		:	cold_forged_armor_-_part_v.lua
	Script Purpose	:	Handles the quest, "Cold Forged Armor - Part V"
	Script Author	:	Xiki
	Script Date		:	3/3/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	East Freeport
	Quest Giver		:	Dyric Pire
	Preceded by		:	Cold Forged Armor - Part IV
	Followed by		:	Cold Forged Armor - Part VI
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must hunt and collect pelts from torrent beavers in Nektulos Forest.", 25, 100, "You've done well but I don't part with these greaves easily.  The other fools I've sent for the next things haven't returned, so I assume they are dead.  I need you to get me several pelts from torrent beavers, hard shell plates from Nerius crabs, the corroded chainmail from Dragoon patrolmen, and the greaves I've seen the undead Gul'Thex high guard wear.  All this should be found in Nektulos. - Dyric", 127, 1790098)
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

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected all the beaver pelts I need.")

	AddQuestStepKill(Quest, 2, "I must recover corroded chainmail from the Dragoon patrolmen that still wander Nektulos Forest.", 18, 100, "You've done well but I don't part with these greaves easily.  The other fools I've sent for the next things haven't returned, so I assume they are dead.  I need you to get me several pelts from torrent beavers, hard shell plates from Nerius crabs, the corroded chainmail from Dragoon patrolmen, and the greaves I've seen the undead Gul'Thex high guard wear.  All this should be found in Nektulos. - Dyric", 1411, 1790164)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have recovered all the corroded chainmail I need.")

	AddQuestStepKill(Quest, 3, "I must recover hard shell plates from the Nerius crabs in Nektulos.", 20, 100, "You've done well but I don't part with these greaves easily.  The other fools I've sent for the next things haven't returned, so I assume they are dead.  I need you to get me several pelts from torrent beavers, hard shell plates from Nerius crabs, the corroded chainmail from Dragoon patrolmen, and the greaves I've seen the undead Gul'Thex high guard wear.  All this should be found in Nektulos. - Dyric", 77, 1790036, 1790042)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have recovered enough hard shell plates from Nerius crabs in Nektulos.")

	AddQuestStepKill(Quest, 4, "I must recover Teir'Dal Greaves from a Gul'Thex high guard.", 1, 100, "You've done well but I don't part with these greaves easily.  The other fools I've sent for the next things haven't returned, so I assume they are dead.  I need you to get me several pelts from torrent beavers, hard shell plates from Nerius crabs, the corroded chainmail from Dragoon patrolmen, and the greaves I've seen the undead Gul'Thex high guard wear.  All this should be found in Nektulos. - Dyric", 274, 1790286)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have recovered Teir'Dal Greaves from a Gul'Thex high guard.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've completed what Dyric has asked.  I should return to him and see what he can make from them.")

	AddQuestStepChat(Quest, 5, "I should return to Dyric.", 1, "I need to speak to Dyric Pire.", 11, 1280012)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "I have returned to Dyric.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken to Dyric.")

	UpdateQuestDescription(Quest, "Dyric has paid me with a pair of cold forged greaves for collecting beaver pelts, corroded chainmail, hard shell plates from Nerius crabs, and Teir'Dal greaves from a member of the Gul'Thex high guard.")
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
		Step4Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
