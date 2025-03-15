--[[
	Script Name		:	xenocidal_propensities.lua
	Script Purpose	:	Handles the quest, "Xenocidal Propensities"
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
	AddQuestStepKill(Quest, 1, "I need to kill nightblood hatecallers.", 20, 100, "I need to exact revenge by killing nightblood hatecallers within the Enchanted Lands.", 611, 390196)
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
	UpdateQuestStepDescription(Quest, 1, "I killed nightblood hatecallers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I exacted revenge by killing nightblood hatecallers.")

	UpdateQuestDescription(Quest, "The slaughter of the emissaries has been partially avenged now that I have killed a number of nightblood crusaders.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
