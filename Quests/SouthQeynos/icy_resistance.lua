--[[
	Script Name		:	icy_resistance.lua
	Script Purpose	:	Handles the quest, "Icy Resistance"
	Script Author	:	Xiki
	Script Date		:	3/14/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	South Qeynos
	Quest Giver		:	Exalted Milanthroo
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill icy shivers within Everfrost.", 23, 100, "I need to slay the icy shiver skeletons that wander the Hollowfrost Grove in Everfrost.", 611, 410025)
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
	UpdateQuestStepDescription(Quest, 1, "I killed enough icy shivers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain a great many icy shiver skeletons within Everfrost.")

	UpdateQuestDescription(Quest, "The Concordium scholars will find the path to Miragul's Phylactery less treacherous now that I have killed a number of the icy shiver skeletons within Everfrost.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
