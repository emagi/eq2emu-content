--[[
	Script Name		:	dust_and_diamonds_in_teak_chests.lua
	Script Purpose	:	Handles the quest, "Dust and Diamonds in Teak Chests"
	Script Author	:	Xiki
	Script Date		:	3/15/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Freeport
	Quest Giver		:	Paragon Jalex
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Runnyeye brawlers.", 18, 100, "I need to clear a path by slaughtering Runnyeye brawlers within Runnyeye.", 611, 2420002)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Runnyeye brawlers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I cleared a path by slaughtering Runnyeye brawlers.")

	UpdateQuestDescription(Quest, "The scribes have recovered ancient tomes and artifacts from the caverns now that I have slaughtered a number of the goblin guards.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
