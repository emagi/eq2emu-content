--[[
	Script Name		:	taking_it_out_on_the_raiders.lua
	Script Purpose	:	Handles the quest, "Taking it Out on the Raiders"
	Script Author	:	torsten
	Script Date		:	19.07.2022
	Script Notes	:	

	Zone			:	Longshadow Alley
	Quest Giver		:	Maliz T`Raan
	Preceded by		:	None
	Followed by		:	A Dramatic Performance
--]]

require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill 10 menacing raiders.", 10, 100, "Kill 10 menacing raiders, they are in the Sunken City. I should be able to find them there.", 611, 8410039, 8410040, 8410074)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	UpdateQuestZone(Quest,"The Sunken City")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed enough menacing raiders.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have killed enough menacing raiders in the Sunken City.")
    UpdateQuestZone(Quest,"Longshadow Alley")
    AddQuestStepChat(Quest, 2, "I should return to Maliz T`Raan.", 1, "I should return to Maliz T`Raan in Longshadow Alley.", 11, 1380030)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have returned and Maliz has entrusted me with the next task.")
	GiveQuestReward(Quest, Player)
end

--
function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("Why don't you go kill the Raiders? They don't deserve to breathe the same air as the Teir'Dal ... and killing one or two is not enough ... a real warrior would kill at least ten of them before calling it a day. And if you find their leader, kill that worthless traitor. Go now!  May you return with a blood-soaked blade!")
    PlayFlavor(QuestGiver,"","","ponder",0,0,Player)
	Dialog.AddOption("If that is what it takes, gladly.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	    Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    QuestComplete(Quest, QuestGiver, Player)
	end
end


