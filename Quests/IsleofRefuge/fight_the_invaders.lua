--[[
    Script Name    : Quests/IsleofRefuge/fight_the_invaders.lua
    Script Author  : montaa
    Script Date    : 2024.07.11 04:07:42
    Script Purpose : 

        Zone       : Thunderdome
        Quest Giver: Bubbles
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
    AddQuestStepKill(Quest, 1, "I must kill five Gruttooth Invaders here in the Thunderdome", 5, 100, "I need to kill Gruttooth Invaders", 372, 3250063)
    AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest, "Thunderdome")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
    Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("Please kill 5 of the Gruttooth Invaders")
    PlayFlavor(QuestGiver, "", "", "thanks", 0, 0, Player)
    Dialog.AddOption("I'll take out those goblins for you")	
	Dialog.Start()

end

function Declined(Quest, QuestGiver, Player)

end

function Step1Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I've killed 5 Gruttooth Invaders")
    UpdateQuestTaskGroupDescription(Quest, 1, "All the Gruttooth Invaders are dead")
    UpdateQuestZone(Quest, "Thunderdome")
    AddQuestStepChat(Quest, 2, "I should speak with Bubbles again.", 1, "All the goblins are dead.", 372, 8500000)
    AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
    UpdateQuestDescription(Quest, "Bubbles says my efforts will bring a measure of relief. He gave me some coin for my time")
    
    GiveQuestReward(Quest, Player)

end

function Reload(Quest, QuestGiver, Player, Step)

end