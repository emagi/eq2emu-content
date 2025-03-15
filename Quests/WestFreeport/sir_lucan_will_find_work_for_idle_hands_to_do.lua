--[[
	Script Name		:	sir_lucan_will_find_work_for_idle_hands_to_do.lua
	Script Purpose	:	Handles the quest, "Sir Lucan Will Find Work for Idle Hands to Do"
	Script Author	:	Xiki
	Script Date		:	3/14/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	West Freeport
	Quest Giver		:	Baron Zafimus
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Seamist maidens.", 18, 100, "I need to further an interest by slaughtering Seamist maidens within the Enchanted Lands.", 611, 390037, 390043, 390045, 390049)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Seamist maidens.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I furthered an interest by slaughtering Seamist maidens.")

	UpdateQuestDescription(Quest, "The construction of the tower has proceeded now that I have slaughtered a number of the Seamist avengers.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
