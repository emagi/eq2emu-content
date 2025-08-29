--[[
    Script Name    : Quests/Hallmark/path_of_the_druid.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.19 05:11:31
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStep(Quest, 1, "I must complete the trial Aldalad has set forth for me.", 1, 100, "I must complete Aldalad's trial in the elddar grove in order to become a druid.", 11)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("There will be no need to return to me when you have completed this trial, but go forth and put what you have learned into practice.  You will know when you have earned the right to call yourself a druid. I will send you to where you need to go.")
	Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad030.mp3", 110213528, 850594761)
    PlayFlavor(QuestGiver, "", "", "agree", 0, 0, Player)
    Dialog.AddOption("I am ready.","DruidPort" )
    Dialog.Start()   
if GetQuestStep(Player,5879)==1 then
    SetStepComplete(Player,5879,1)
end
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
	UpdateQuestTaskGroupDescription(Quest, 1, "I've completed Aldalad's trial by defeating the fire elemental and become a druid.")

	if GetLevel(Player) < 10 then
		SendMessage(Player, "Your class will be set when you achieve 10th level.","yellow")
	end

	if GetClass(Player)== 11 then
                SetInfoStructString(Player, "adventure_class_selection", "qy-15")
	end

	UpdateQuestDescription(Quest, "I have completed the trial Aldalad set before me, and am finally ready to journey forth as a druid - a defender of the forests and animals, of those who cannot adequately do so for themselves.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
