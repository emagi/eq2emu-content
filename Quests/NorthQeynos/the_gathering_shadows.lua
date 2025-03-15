--[[
	Script Name		:	the_gathering_shadows.lua
	Script Purpose	:	Handles the quest, "The Gathering Shadows"
	Script Author	:	Xiki
	Script Date		:	3/13/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Qeynos
	Quest Giver		:	Sergeant-at-Arms Ironcast
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Tallon raiders.", 17, 100, "I need to prevent an assault by slaughtering Tallon raiders within the Orcish Wastes.", 611, 1900087, 1900088, 1900147)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Tallon raiders.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I prevented an assault by slaughtering Tallon raiders.")

	UpdateQuestDescription(Quest, "The Deathfist army has been scattered now that I have slaughtered a number of Zek grunts.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
