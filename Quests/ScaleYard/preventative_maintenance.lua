--[[
	Script Name		:	preventative_maintenance.lua
	Script Purpose	:	Handles the quest, "Preventative Maintenance"
	Script Author	:	torsten
	Script Date		:	24.07.2022
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Scale Yard
	Quest Giver		:	Verin Ithelz
	Preceded by		:	Verin's New Thralls
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill ten orc exiles.", 10, 100, "I need to travel to the Ruins and start killing those orcs that hide out there.", 611, 8420025)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed the orcs.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have killed ten orc exiles.")
	
	AddQuestStepChat(Quest, 2, "I should return to Verin Ithelz.", 1, "I should return to Verin Ithelz in Scale Yard.", 11, 1390020)
    AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Verin seems like he's a rather powerful person in Scale Yard. I don't think I'll want to cross him. He paid me for killing his rival's stock of potential thralls and even threw in a shield for my trouble. <br>")
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
	    Step2Complete(Quest, QuestGiver, Player)
	end
end
