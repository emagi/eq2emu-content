--[[
	Script Name		:	Quests/Nettleville/CaptainElgrondethsDilemma.lua
	Script Purpose	:	Handles the quest, "Captain Elgrondeth's Dilemma"
	Script Author	:	Jabantiz
	Script Date		:	6/12/2018
	Script Notes	:	

	Zone			:	Nettleville
	Quest Giver		:	Knight-Captain Elgrondeth (2330030)
	Preceded by		:	None
	Followed by		:	None
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill ten sonic shriekers in Antonica.", 10, 100, "I must seek out and slay the sonic shriekers, young brown bears and timber wolves in Antonica as required by Captain Elgrondeth.", 611, 120297, 121406)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"Antonica")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	PlayFlavor(QuestGiver, "", "", "nod", 0, 0, Player, 0)
    Dialog.AddDialog("Let me write down in your journal a description of the beasts and where you can find them.  There.  According to the reports, a new type of vermin called sonic shriekers infests Antonica.  Return to me after you exterminate some of the pests, and perhaps I'll have another task for you.")
	Dialog.AddVoiceover("voiceover/english/knight-captain_elgrondeth/qey_village01/captainelgrondeth003.mp3", 3138428654, 3549139096)
	Dialog.AddOption("Alright.  I'll return once I've dealt with the shriekers.")
	Dialog.Start()
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed ten sonic shriekers.")
    UpdateQuestZone(Quest,"Nettleville")
	
	AddQuestStepChat(Quest, 2, "I need to speak to Captain Elgrondeth in Nettleville.", 1, "I must seek out and slay the sonic shriekers, young brown bears and timber wolves in Antonica as required by Captain Elgrondeth.", 0, 2330030)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I spoke to Captain Elgrondeth in Nettleville.")
    UpdateQuestZone(Quest,"Antonica")
	
	AddQuestStepKill(Quest, 3, "I must kill five young brown bears roaming Antonica.", 5, 100, "I must seek out and slay the sonic shriekers, young brown bears and timber wolves in Antonica as required by Captain Elgrondeth.", 611, 120011, 121191)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have killed five young brown bears.")
    UpdateQuestZone(Quest,"Nettleville")
	
	AddQuestStepChat(Quest, 4, "I need to speak to Captain Elgrondeth in Nettleville.", 1, "I must seek out and slay the sonic shriekers, young brown bears and timber wolves in Antonica as required by Captain Elgrondeth.", 0, 2330030)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I spoke to Captain Elgrondeth in Nettleville.")
    UpdateQuestZone(Quest,"Antonica")
	
	AddQuestStepKill(Quest, 5, "I must hunt down and slay ten timber wolves in Antonica.", 5, 100, "I must seek out and slay the sonic shriekers, young brown bears and timber wolves in Antonica as required by Captain Elgrondeth.", 611, 120008, 121188)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have killed ten timber wolves.")
    UpdateQuestZone(Quest,"Nettleville")
	
	AddQuestStepChat(Quest, 6, "I need to speak to Captain Elgrondeth in Nettleville.", 1, "I must seek out and slay the sonic shriekers, young brown bears and timber wolves in Antonica as required by Captain Elgrondeth.", 0, 2330030)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "I spoke to Captain Elgrondeth in Nettleville.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have sought out and slain the creatures required by the Captain.")

	UpdateQuestDescription(Quest, "I have accomplished all the tasks laid out before me by Captain Elgrondeth.  He was impressed by my abilities. ")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif step == 4 then
		Step4Complete(Quest, QuestGiver, Player)
	elseif step == 5 then
		Step5Complete(Quest, QuestGiver, Player)
	elseif step == 6 then
		QuestComplete(Quest, QuestGiver, Player)
		end
end