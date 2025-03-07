--[[
	Script Name		:	cold_forged_armor_-_part_ii.lua
	Script Purpose	:	Handles the quest, "Cold Forged Armor - Part II"
	Script Author	:	Xiki
	Script Date		:	3/3/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	East Freeport
	Quest Giver		:	Dyric Pire
	Preceded by		:	Cold Forged Armor - Part I
	Followed by		:	Cold Forged Armor - Part III
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must recover ethereal plating from blighted denizens in Fallen Gate.", 6, 100, "I need three ingredients before I'll hand over these bracers.  First, I need some of the cold ethereal plating that I've heard can sometimes be found on the blighted denizens in Fallen Gate.  I don't care how you get in there.  Second, get me as much of the old uncorroded metal as you can find from the mindless corpses there.  And third,  I can use the skins from the gloom snakes for the straps. - Dyric", 734, 1190039, 1190068)
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
	UpdateQuestStepDescription(Quest, 1, "I have recovered ethereal plating.")

	AddQuestStepKill(Quest, 2, "I must recover uncorroded metal off mindless corpses within Fallen Gate.", 12, 100, "I need three ingredients before I'll hand over these bracers.  First, I need some of the cold ethereal plating that I've heard can sometimes be found on the blighted denizens in Fallen Gate.  I don't care how you get in there.  Second, get me as much of the old uncorroded metal as you can find from the mindless corpses there.  And third,  I can use the skins from the gloom snakes for the straps. - Dyric", 678, 1190009, 1190010, 1190013)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have recovered all the uncorroded metal I need.")

	AddQuestStepKill(Quest, 3, "I must recover the skins from gloom snakes in Fallen Gate.", 8, 100, "I need three ingredients before I'll hand over these bracers.  First, I need some of the cold ethereal plating that I've heard can sometimes be found on the blighted denizens in Fallen Gate.  I don't care how you get in there.  Second, get me as much of the old uncorroded metal as you can find from the mindless corpses there.  And third,  I can use the skins from the gloom snakes for the straps. - Dyric", 141, 1190019)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have recovered all the gloom snake skins I need.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've completed what Dyric has asked.  I should return to him and see what he can make from them.")

	AddQuestStepChat(Quest, 4, "I should return to Dyric.", 1, "I need to speak to Dyric Pire.", 11, 1280012)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I have returned to Dyric.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken to Dyric.")

	UpdateQuestDescription(Quest, "Dyric has paid me with a pair of cold forged bracers for collecting some ethereal plating, uncorroded metal, and snake skins.")
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
