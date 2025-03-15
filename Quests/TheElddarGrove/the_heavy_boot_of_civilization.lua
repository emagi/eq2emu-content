--[[
	Script Name		:	the_heavy_boot_of_civilization.lua
	Script Purpose	:	Handles the quest, "The Heavy Boot of Civilization"
	Script Author	:	Xiki
	Script Date		:	3/14/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The Elddar Grove
	Quest Giver		:	Shepherd Sell`ar
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Huuptic hunters.", 19, 100, "I need to remove a threat to the ships by slaying Huuptic hunters within the Feerrott.", 611, 1210007)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Huuptic hunters.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I removed a threat to the ships by slaying Huuptic hunters.")

	UpdateQuestDescription(Quest, "Boats have found it safer to sail along the jungle shores now that I have slain a number of the troglodytes.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
