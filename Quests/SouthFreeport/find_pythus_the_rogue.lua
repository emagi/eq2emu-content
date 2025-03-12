--[[
	Script Name		:	find_pythus_the_rogue.lua
	Script Purpose	:	Handles the quest, "Find Pythus the Rogue"
	Script Author	:	Xiki
	Script Date		:	2/16/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	South Freeport
	Quest Giver		:	Sergeant Nominus
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Speak to Kaeso Polluvius", 1, "I must speak to the dockmaster who is fishing off the docks about the burglar, Pythus.", 11, 1660024)
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
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Kaeso Polluvius.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Kaeso had very little to say about Pythus, but was obviously afraid of the burglar.")

	AddQuestStepChat(Quest, 2, "Speak to Aldrevia Metilla", 1, "I need to speak with Aldrevia Metilla, and ask her the whereabouts of Pythus.  She can be found in the Jade Tiger's Den.", 11, 1440468)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Aldrevia Metilla.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken to Aldrevia concerning Pythus' whereabouts.")

	AddQuestStepKill(Quest, 3, "Kill Pythus and retrieve his leather cap", 1, 100, "Aldrevia said I would find Pythus in the Commonlands, near the Crossroads. Once I find and slay him, I must retrieve his leather cap.", 115, 330225)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "The burglar Pythus has been slain by my hand. His leather cap is now in my possession.")
	UpdateQuestTaskGroupDescription(Quest, 3, "The burglar Pythus has been slain by my hand. His leather cap is now in my possession.")

	AddQuestStepChat(Quest, 4, "Speak to Sergeant Nominus", 1, "Pythus is dead. I must bring his cap back to Sergeant Nominus for my reward.", 115, 1660034)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I have taken Pythus's leather cap to Sergeant Nominus.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I have returned Pythus' leather cap to Sergeant Nominus.")

	UpdateQuestDescription(Quest, "I have found the rogue Pythus.  Once found, he proved easy prey.  Sergeant Nominus paid me well for my services. <br> <br>")
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
