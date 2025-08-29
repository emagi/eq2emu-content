--[[
    Script Name    : Quests/Hallmark/path_of_the_cleric.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.19 05:11:14
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStep(Quest, 1, "I need to complete the trial.", 1, 100, "I must complete Aldalad's trial in order to become a cleric.", 11)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("Then I will facilitate a prayer trance for you.  You will experience a struggle unlike any you've known before... but upon exiting the trance, should you prove successful, you will emerge with the emotional strength to survive and prosper in the re-forged Norrath.  Are you ready?")
	--Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad017.mp3", 2729819197, 1238324646) WE DON"T HAVE THE VO FOR THIS
    PlayFlavor(QuestGiver, "", "", "nod", 0, 0, Player)
    Dialog.AddOption("I am.","ClericPort" )	
    Dialog.AddOption("I will be shortly. I will return.")	
	Dialog.Start()    

if GetQuestStep(Player,5879)==1 then
    SetStepComplete(Player,5879,1)
end
end

function ClericPort(QuestGiver,Player)
    Trial = GetZone("TheDisconcertingMeditation")
    Zone(Trial,Player,-47.02, -45.79, -49.3, 272)
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I've completed the trial.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've completed Aldalad's trial and become a cleric.")

	if GetLevel(Player) < 10 then
		SendMessage(Player, "Your class will be set when you achieve 10th level.","yellow")
	end

	if GetClass(Player)== 11 then
                SetInfoStructString(Player, "adventure_class_selection", "qy-12")
	end

	UpdateQuestDescription(Quest, "After a somewhat surreal dream, I have cemented my beliefs and become a true cleric.  I stride forth with a renewed faith and will prove my worth to those around me in my adventures to come.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
