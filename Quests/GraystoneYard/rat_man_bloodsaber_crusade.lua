--[[
    Script Name    : Quests/GraystoneYard/rat_man_bloodsaber_crusade.lua
    Script Author  : Dorbin
    Script Date    : 2022.03.09 03:03:41
    Script Purpose : 

	Zone			:	Graystone Yard
	Quest Giver		:	Watcher Curmogliel
	Preceded by		:	None
	Followed by		:	None
--]]
require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill four ratonga Bloodsabers.", 4, 100, "I need to slay four ratonga Bloodsabers in the Down Below.", 611, 8340015,8340016,8340017,8340018, 8340019, 8340055)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	UpdateQuestZone(Quest,"The Down Below")
end

function Step1Complete(Quest,QuestGiver,Player)
	UpdateQuestStepDescription(Quest, 1, "	I have killed enough ratongas.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain four Bloodsabers.")
	
	AddQuestStepChat(Quest, 2, "I need to return to to Watcher Curmogliel.", 1, "I must report my deed to Watcher Curmogliel in Graystone.", 2482, 2350011)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
    PlayFlavor(QuestGiver, "","","agree",0,0,Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("Then seek out the catacombs! You must slay the Bloodsabers in the caverns. May your faith in the righteous bring you victory, or welcome you in the afterlife. The gods are watching!")
	Dialog.AddVoiceover("voiceover/english/watcher_curmogliel_kar_thal/qey_village03/watchercurmogliel002.mp3", 1937849354, 1911529851)
    Dialog.AddOption("I will prove myself. I will be back.")
    Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 2, "I have reported my success against the Bloodsabers.")
	UpdateQuestZone(Quest,"Graystone Yard")
	UpdateQuestDescription(Quest, "I have slain the Bloodsabers and shown my faith to Watcher Curmogliel.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

