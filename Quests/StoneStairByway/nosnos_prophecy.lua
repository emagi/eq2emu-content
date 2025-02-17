--[[
	Script Name		:	nosnos_prophecy.lua
	Script Purpose	:	Handles the quest, "Nosno's Prophecy"
	Script Author	:	Xiki
	Script Date		:	2/12/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Stonestair Byway
	Quest Giver		:	Nosno
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Miala.", 1, "The male Kerra seem not to want to listen to Nosno. I should speak to the female Kerran I've seen.", 11, 1350041)
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
	AddQuestStepChat(Quest, 2, "I need to speak with Pona.", 1, "Miala didn't seem interested in Nosno's prophecy. Maybe Pona will be more receptive.", 11, 1350028)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	AddQuestStepChat(Quest, 3, "I need to return to Nosno.", 1, "Pona didn't seem interested either. I should return to Nosno and let him know.", 11, 1350120)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have returned to Nosno.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have given the message to the female Kerrans here in Stonestair Byway. They didn't care.")

	UpdateQuestDescription(Quest, "Nosno seemed not to mind too much about the women turning him down. I think he's lost in his own world somewhere.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end