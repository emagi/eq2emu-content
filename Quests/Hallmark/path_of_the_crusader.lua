--[[
    Script Name    : Quests/Hallmark/path_of_the_crusader.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.07 03:12:29
    Script Purpose : QEYNOS CRUSADER CLASS QUEST

        Zone       : Hallmark
        Quest Giver: Master at Arms Dagorel
        Preceded by: Fighter Training pt II
        Followed by: None
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStep(Quest, 1, "I must defeat the brigands and free the villager from a house in the Harbor.", 1, 100, "I must rescue the villager from the brigands in the Qeynos Harbor.", 11)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("Prove to me that you've got the courage and conviction to stand up for others when they cannot stand up for themselves.  I heard that some outsider thugs are holed up in Qeynos Harbor, and that they've got one of our citizens as a prisoner.  If you can rescue him, you'll earn the title of crusader.")
    PlayFlavor(QuestGiver, "", "", "nod", 0, 0, Player)
    Dialog.AddOption("Thank you, Dagorel.  I won't forget your lessons.")	
	Dialog.Start()

if GetQuestStep(Player,5878)==1 then
    QuestStepIsComplete(Player,5878,1)
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
	UpdateQuestStepDescription(Quest, 1, "I've defeated the brigands and freed the villager.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've defeated the thugs holding the villager hostage and set her free.")

	if GetLevel(Player) < 10 then
		SendMessage(Player, "Your class will be set when you achieve 10th level.","yellow")
	end

	if GetClass(Player)== 1 then
                SetInfoStructString(Player, "adventure_class_selection", "qy-8")
	end

	UpdateQuestDescription(Quest, "I have rescued the frightened villager from the hands of a dangerous band of brigands, in the process proving to both myself and others that I fight for others and for what I believe in.  I am now worthy of becoming a crusader.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
