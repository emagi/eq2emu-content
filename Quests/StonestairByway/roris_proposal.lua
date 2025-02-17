--[[
	Script Name		:	roris_proposal.lua
	Script Purpose	:	Handles the quest, "Rori's Proposal"
	Script Author	:	Xiki
	Script Date		:	2/13/2025
	Script Notes	:	Modified with QuestParser.

	Zone			:	Stonestair Byway
	Quest Giver		:	Rori
	Preceded by		:	None
	Followed by		:	Rori's Back
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Manius Galla.", 1, "Rori wants me to talk to Manius Galla about merging with his gang. Rori said he is in the Sunken City.", 11, 1370127)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_talktoManius")
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

function step1_complete_talktoManius(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I have spoken with Manius Galla.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Manius Galla had some unexpected news about Rori's proposal.")

	AddQuestStepChat(Quest, 2, "I need to return to Rori and inform him of Manius Galla's response", 1, "Rori is waiting for my report.", 11, 1350041)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_talktoManius(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    QuestComplete(Quest, QuestGiver, Player)
	end
end