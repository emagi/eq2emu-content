--[[
	Script Name		:	traitorous_designs_fallen_gate.lua
	Script Purpose	:	Handles the quest, "Traitorous Designs (Fallen Gate)"
	Script Author	:	Xiki
	Script Date		:	3/15/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	North Freeport
	Quest Giver		:	Occultist Levonicus
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to destroy tortured invaders.", 12, 100, "I need to defend Freeport by destroying tortured invaders within Fallen Gate.", 611, 1190012, 1190040, 1190042, 1190054, 1190055)
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
	UpdateQuestStepDescription(Quest, 1, "I have destroyed tortured invaders.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I defended Freeport by destroying tortured invaders.")

	UpdateQuestDescription(Quest, "The power of the traitorous acolytes has been weakened now that I have killed a number of the undead invaders.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
