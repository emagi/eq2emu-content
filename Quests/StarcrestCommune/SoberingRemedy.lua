--[[
	Script Name		:	SoberingRemedy.lua
	Script Purpose	:	Handles the quest, "Sobering Remedy"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	6/15/2018
	Script Notes	:	

	Zone			:	Starcrest Commune
	Quest Giver		:	Vondorinsarnoo (2340023)
	Preceded by		:	None
	Followed by		:	None
--]]
require "SpawnScripts/Generic/DialogModule"

-- Quest ID's
local SOBERING_REMEDY = 246

function Init(Quest)
    UpdateQuestZone(Quest,"Peat Bog")
	AddQuestStepKill(Quest, 1, "I must gather pieces from bog slugs", 1, 33, "I need to gather the components for Vondorinsarnoo's concoction from the Peat Bog, reachable by mariner bell within the City of Qeynos.", 289, 8290005,8290006,8290031,8290027)
	AddQuestStepKill(Quest, 2, "I must gather whiskers from large scavengers", 1, 33, "I need to gather the components for Vondorinsarnoo's concoction from the Peat Bog, reachable by mariner bell within the City of Qeynos.", 2123, 8290021)
	AddQuestStepKill(Quest, 3, "I must gather bile from bog sludges", 1, 40, "I need to gather the components for Vondorinsarnoo's concoction from the Peat Bog, reachable by mariner bell within the City of Qeynos.", 1162, 8290004)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have what I need from the bog slugs")

	DoneWithSteps(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have gathered the whiskers I need.")

	DoneWithSteps(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have gathered the bile I needed.")
	
	DoneWithSteps(Quest, QuestGiver, Player)	
end

function DoneWithSteps(Quest, QuestGiver, Player)
	if QuestIsComplete(Player, SOBERING_REMEDY) then
		GiveStep4(Quest, QuestGiver, Player)
	end
end

function GiveStep4(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I've successfully gathered what Vondorinsarnoo's concoction calls for.")
    UpdateQuestZone(Quest,"Starcrest Commune")
	
	AddQuestStepChat(Quest, 4, "I must return to Vondorinsarnoo", 1, "I need to return to Vondorinsarnoo to give him the items for the concoction.", 11, 2340023)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I've spoken with Vondorinsarnoo.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've spoken with Vondorinsarnoo and given him the components he needed.")

	UpdateQuestDescription(Quest, "I retrieved the items Vondorinsarnoo required for the concoction.  The mixture will undoubtedly be strong enough to bring an ogre to its knees, and should perform quite well in removing whatever contents that drunk's stomach held, including the ale.")
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

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	PlayFlavor(QuestGiver, "", "", "nod", 0, 0, Player)
	Dialog.AddDialog("I'll write in your journal what I need from the local Peat Bog. I'll create a concoction so foul that he'll expel what resides in his belly. He'll speak more clearly with that rotgut out of his stomach.")
	Dialog.AddVoiceover("voiceover/english/vondorinsarnoo/qey_village02/vondorinsarnoo001.mp3", 197082902, 3827601565)
	Dialog.AddLanguage(4)
	Dialog.AddOption("These items shouldn't be too difficult to find.", "Final")
	Dialog.Start()
end


function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end