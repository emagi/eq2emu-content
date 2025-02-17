--[[
	Script Name		:	varski_part_iv.lua
	Script Purpose	:	Handles the quest, "Varski, Part IV"
	Script Author	:	Xiki
	Script Date		:	2/17/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	West Freeport
	Quest Giver		:	Varski
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to destroy the undead armorsmiths in Fallen Gate until I find the big money.", 1, 33, "I need to go back to Fallen Gate one last time to find where this big money is.  Supposedly there are some undead armorsmiths that have it on them.", 974, 1190100)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
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
	UpdateQuestDescription(Quest, "Varski used his magic one last time to make the golden ingot weigh less.  The little rat turned it into the size of a coin.  I'm fairly certain there's something else going on here.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	    Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Step1Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I've found the big money.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found an extremely heavy golden ingot on one of the armorsmiths.")
	
	AddQuestStepChat(Quest, 2, "I should return this golden ingot to Varski.", 1, "Killing the armorsmiths yielded a heavy golden ingot. Varski probably wants to see this, I should take it back to him.", 11, 1680189)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end
