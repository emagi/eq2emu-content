--[[
	Script Name		:	scribe_zizwolds_list.lua
	Script Purpose	:	Handles the quest, "Scribe Zizwold's List"
	Script Author	:	Xiki
	Script Date		:	2/17/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The City of Freeport
	Quest Giver		:	Scribe Zizwold
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must hunt down an ash owlbear to collect one grizzly feather.", 1, 33, "I must gather the items on the list.", 96, 1790131)
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
	UpdateQuestStepDescription(Quest, 1, "I have slain an ash owlbear.")

	AddQuestStepKill(Quest, 2, "I must hunt Sullian fairies for five rare shimmering blue wings.", 5, 15, "I must gather the items on the list.", 152, 1790211)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have slain some Sullian fairies and collected the rare shimmering blue wings.")

	AddQuestStepKill(Quest, 3, "I must hunt dusk leapers to collect five rare leaper blood hairs.", 5, 15, "I must gather the items on the list.", 97, 1790127)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have killed some dusk leapers and collected the rare hairs.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have gathered the items on the list.")

	AddQuestStepChat(Quest, 4, "I must return to Scribe Zizwold.", 1, "I must return to scribe Zizwold.", 10, 1280056)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I have returned to scribe Zizwold.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned to scribe Zizwold.")

	UpdateQuestDescription(Quest, "Scribe Zizwold mistook me for a servant of his client and gave me a list with details about some items he needed.  Although I was not the courier he thought me to be, I gathered the items on the list and received payment for my troubles.")
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
