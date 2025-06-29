--[[
	Script Name		:	tasty_tears_of_the_thralls.lua
	Script Purpose	:	Handles the quest, "Tasty Tears of the Thralls"
	Script Author	:	torsten
	Script Date		:	23.07.2022
	Script Notes	:	

	Zone			:	Scale Yard
	Quest Giver		:	Dyerth Shiraz
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Collect tears from wood elf scouts", 10, 100, "Dyerth said I should be able to find some wood elf scouts in the Sprawl, so that's where I should start.", 2489, 8400030)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"The Sprawl")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the tears from the wood elves.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the tears of ten wood elf scouts.")
    UpdateQuestZone(Quest,"Scale Yard")

    AddQuestStepChat(Quest, 2, "I should return to Dyerth Shiraz.", 1, "I should return these to Dyerth Shiraz so that she can start making some Sazzpazilla.", 11, 1390054)
    AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Dyerth appreciated my helping her with making her drink.  Perhaps someday in the future I may call on her to pay back the favor.")
	GiveQuestReward(Quest, Player)
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

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	    Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    QuestComplete(Quest, QuestGiver, Player)
	end
end

