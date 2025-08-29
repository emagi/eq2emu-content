--[[
    Script Name    : Quests/Hallmark/path_of_the_shaman.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.19 05:11:32
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must subdue the first spirit.", 1, 100, "I must venture into the house in South Qeynos, located among the middle row of buildings, and subdue the spirits within.", 11, 2140028)
	AddQuestStepKill(Quest, 2, "I must subdue the second spirit.", 1, 100, "I must venture into the house in South Qeynos, located among the middle row of buildings, and subdue the spirits within.", 11, 2140029)
	AddQuestStepKill(Quest, 3, "I must subdue the third spirit.", 1, 100, "I must venture into the house in South Qeynos, located among the middle row of buildings, and subdue the spirits within.", 11, 2140027)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("Then you must travel to the Southern part of the city where a home has reportedly become a site of restless spirits. Use the skills you have gained to unshackle them from this world and you will have proven yourself as a shaman.  There will be no need to return to me, but be wary, spirits have powers even they can fathom.")
--	Dialog.AddVoiceover("voiceover/english/hierophant_aldalad/qey_north/hierophant_aldalad030.mp3", 110213528, 850594761)
    PlayFlavor(QuestGiver, "", "", "agree", 0, 0, Player)
    Dialog.AddOption("Thank you, Aldalad. I will pass this trial." )	
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

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have subdued the first spirit.")
 QuestCheck(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have subdued the second spirit.")
 QuestCheck(Quest, QuestGiver, Player)
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have subdued the third spirit.")
 QuestCheck(Quest, QuestGiver, Player)
end	
	
	
function  QuestCheck(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player,5776,1) and QuestStepIsComplete(Player,5776,2) and QuestStepIsComplete(Player,5776,3) then
    UpdateQuestTaskGroupDescription(Quest, 1, "I have ventured into the house in South Qeynos and subdued the spirits within.")

	if GetLevel(Player) < 10 then
		SendMessage(Player, "Your class will be set when you achieve 10th level.","yellow")
	end

	if GetClass(Player)== 11 then
		SetInfoStructString(Player, "adventure_class_selection", "qy-18")
	end

	UpdateQuestDescription(Quest, "The spirits I encountered proved quite spiteful, obviously intent on destroying all life around them.  Perhaps their souls were unable to find peace. Even so, after my trial I proved that I am worthy to be a shaman.")
	GiveQuestReward(Quest, Player)
end
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
