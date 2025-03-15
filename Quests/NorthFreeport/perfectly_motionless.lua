--[[
	Script Name		:	perfectly_motionless.lua
	Script Purpose	:	Handles the quest, "Perfectly Motionless"
	Script Author	:	Xiki
	Script Date		:	3/15/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Freeport
	Quest Giver		:	Thaumaturge Ranollious
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Sootfoot peons.", 25, 100, "I need to protect Freeport by slaughtering Sootfoot peons within Lavastorm.", 611, 1710100)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I killed Sootfoot peons.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I protected Freeport by slaughtering Sootfoot peons within Lavastorm.")

	UpdateQuestDescription(Quest, "Fewer clockwork scrappers have emerged within the Commonlands now that I have slaughtered a number of the workers.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
