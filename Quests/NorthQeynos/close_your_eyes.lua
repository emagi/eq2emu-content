--[[
	Script Name		:	close_your_eyes.lua
	Script Purpose	:	Handles the quest, "Close Your Eyes"
	Script Author	:	Xiki
	Script Date		:	3/13/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Qeynos
	Quest Giver		:	Missionary Jenson
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill fetid Rallosian allegiants.", 21, 100, "I need to prevent a cataclysm by destroying fetid Rallosian allegiants within the Feerrott.", 611, 1210177)
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
	UpdateQuestStepDescription(Quest, 1, "I killed fetid Rallosian allegiants.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I prevented a cataclysm by destroying fetid Rallosian allegiants.")

	UpdateQuestDescription(Quest, "The ritual to unleash the force of Zek has been forestalled now that I have destroyed a number of the putrid ogre skeletons.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
