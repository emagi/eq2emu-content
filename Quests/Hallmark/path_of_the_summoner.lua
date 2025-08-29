--[[
    Script Name    : Quests/Hallmark/path_of_the_summoner.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.06 08:11:22
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to pass Magister Niksel's trial using a summoned creature.", 1, 100, "I must pass Magister Niksel's trial in the testing room in the South Qeynos mage tower . The chamber is located on the middle floor of the tower.", 11,22105121)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("Then I suggest you prepare yourself.  The trial you will face places you against the mighty beings you will one day summon on your own.  One from each element will be represented. Destroy them all, and you will be ready to move on in your new role as a summoner.")
	Dialog.AddVoiceover("voiceover/english/magister_niksel/qey_south/magister_niksel030.mp3", 4260640044, 118480964)
    PlayFlavor(QuestGiver, "", "", "scold", 0, 0, Player)
    Dialog.AddOption("Should I return to you once I've completed the trial?","GoodbyeSumm")	
	Dialog.Start()
	
if GetQuestStep(Player,5877)==1 then
    SetStepComplete(Player,5877,1)
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
	UpdateQuestStepDescription(Quest, 1, "I've passed Magister Niksel's trial.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've passed Magister Niksel's trial.")

	if GetClass(Player)== 21 then
		SetInfoStructString(Player, "adventure_class_selection", "qy-28")
	end

	UpdateQuestDescription(Quest, "Having completed my trial as a summoner, I will be focusing my studies in magic down the path I've chosen.  I am well on my way in Norrath - and have learned valuable lessons in responsible summoning.")
	GiveQuestReward(Quest, Player)
end



function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
