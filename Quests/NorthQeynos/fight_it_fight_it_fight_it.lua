--[[
	Script Name		:	fight_it_fight_it_fight_it.lua
	Script Purpose	:	Handles the quest, "Fight It, Fight It, Fight It"
	Script Author	:	Xiki
	Script Date		:	3/13/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Qeynos
	Quest Giver		:   Disciple Telas`velle
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Bloodsaber highguards.", 17, 100, "I need to cleanse the corruption by slaughtering Bloodsaber highguards within the Crypt of Betrayal.", 611, 2010037)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Bloodsaber highguards.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I cleansed the corruption by slaughtering Bloodsaber highguards")

	UpdateQuestDescription(Quest, "The noxious influence of the Bloodsabers has been reduced now that I have slaughtered a number of the recruiters.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
