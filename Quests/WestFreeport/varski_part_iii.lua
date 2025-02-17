--[[
	Script Name		:	varski_part_iii.lua
	Script Purpose	:	Handles the quest, "Varski, Part III"
	Script Author	:	Xiki
	Script Date		:	2/17/2025
	Script Notes	:	Auto generated with QuestParser.
	
	Zone			:	West Freeport
	Quest Giver		:	Varski
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to destroy a shadowy fanged snake in Fallen Gate.", 1, 100, "Varski has sent me into Fallen Gate one more time.  I'm supposed to look for a shadowy fanged snake.  I can only assume he means some type of undead snake.  This ghost apparently has a valuable piece of metal that Varski can make into something else.", 1007, 1190034)
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

	UpdateQuestDescription(Quest, "Varski used a tradeskill technique I've never seen before.  He turned the mithril key into an earrings by putting it into one pocket and pulling it out of another.  I still don't know how it changed from mithril to pyrite.")
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
    UpdateQuestStepDescription(Quest, 1, "I've destroyed Shadowfang, a ghostly snake.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've destoyed the ghostly Shadowfang and found a key made of mithril.")
    
    AddQuestStepChat(Quest, 2, "I should return this key to Varski.", 1, "The snake Varski sent me to kill had a key of mithril, I should take it back to him.", 11, 1680189)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end
