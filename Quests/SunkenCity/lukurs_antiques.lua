--[[
	Script Name		:	LukursAntiques.lua
	Script Purpose	:	Handles the quest, "Lukur's Antiques"
	Script Author	:	Neatz09
	Script Date		:	12/27/2018
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Sunken City
	Quest Giver		:	Lukur
	Preceded by		:	None
	Followed by		:	None
--]]

local Lukur = 1240020
local BloodMask 
local ShadowedMask
local DawnMask

require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "I need to find the Blood Mask.", 1, 100, "I need to find three ceremonial masks in the Sunken City.  I can reach the Sunken City by using any of the bells in and around the City of Freeport.", 878, BloodMask)
	AddQuestStepObtainItem(Quest, 2, "I need to find the Shadowed Mask.", 1, 100, "I need to find three ceremonial masks in the Sunken City.  I can reach the Sunken City by using any of the bells in and around the City of Freeport.", 879, ShadowedMask)
	AddQuestStepObtainItem(Quest, 3, "I need to find the Dawn Mask.", 1, 100, "I need to find three ceremonial masks in the Sunken City.  I can reach the Sunken City by using any of the bells in and around the City of Freeport.", 880, DawnMask)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	--BoxCheck(Quest,Player)
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("I need to add a few specific relics to my collection.  Return when you fulfill my order.")
	Dialog.AddVoiceover("voiceover/english/optional1/lukur/fprt_adv01_sunken/lukur002.mp3", 2636400793, 1337735741)
    PlayFlavor(QuestGiver,"","","agree",0,0,Player)
	Dialog.AddOption("Thanks, I'll start searching the area.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found the Blood Mask.")
    QuestCheck(Quest, QuestGiver, Player)
end


function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I found the Shadowed Mask.")
    QuestCheck(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I found the Dawn Mask.")
    QuestCheck(Quest, QuestGiver, Player)
end

function QuestCheck(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player,374,1) and QuestStepIsComplete(Player,374,2) and QuestStepIsComplete(Player,374,3) then
	UpdateQuestTaskGroupDescription(Quest, 1, "I found three ceremonial masks.")

	AddQuestStepChat(Quest, 4, "I need to return to Lukur.", 1, "I need to return to Lukur in the Sunken City.  I can reach the Sunken City by using any of the bells in and around the City of Freeport.", 11, Lukur,8410015)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I returned to Lukur.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned to Lukur.")

	UpdateQuestDescription(Quest, "I found the three ceremonial masks that Lukur needed.")
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