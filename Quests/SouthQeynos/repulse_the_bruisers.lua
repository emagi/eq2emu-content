--[[
	Script Name		:	repulse_the_bruisers.lua
	Script Purpose	:	Handles the quest, "Repulse the Bruisers"
	Script Author	:	Xiki
	Script Date		:	3/14/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	South Qeynos
	Quest Giver		:	Aesthetic Winchester
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Vallon grunts.", 18, 100, "I need to defend the scholars by slaughtering Vallon grunts within the Orcish Wastes.", 611, 1900149)
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
	UpdateQuestStepDescription(Quest, 1, "I killed Vallon grunts.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I defended the scholars by slaughtering Vallon grunts.")

	UpdateQuestDescription(Quest, "The sages have resumed their studies of the ancients now that I have slaughtered a number of orc mercenaries.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
