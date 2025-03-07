--[[
	Script Name		:	cold_forged_armor_-_part_iv.lua
	Script Purpose	:	Handles the quest, "Cold Forged Armor - Part IV"
	Script Author	:	Xiki
	Script Date		:	3/3/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	East Freeport
	Quest Giver		:	Dyric Pire
	Preceded by		:	Cold Forged Armor - Part III
	Followed by		:	Cold Forged Armor - Part V
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must collect some new forging tools for Dyric.  He believes Murkwater veterans may have some in Edgewater Drains.", 10, 100, "My tools aren't up to the task of forging this new armor, so I need something a little higher quality.  Get me some of the tools I know the Murkwater veterans just picked up down in Edgewater Drains.  I heard their smiths have some excellent ones they smuggled in from Qeynosian dwarves.  Pick up the ones lying around when you make sure they don't need them anymore.  And while you're at it, see if you can find some of the fluid the drudge mucus creatures secrete.  And kill some of those contaminated rats while you're down there, you can smell them all the way up here. - Dyric", 32, 1560013)
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

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found some new tools for Dyric.")

	AddQuestStepKill(Quest, 2, "I must recover some of the caustic fluid from the drudge mucus slugs down in Edgewater Drains.", 20, 100, "My tools aren't up to the task of forging this new armor, so I need something a little higher quality.  Get me some of the tools I know the Murkwater veterans just picked up down in Edgewater Drains.  I heard their smiths have some excellent ones they smuggled in from Qeynosian dwarves.  Pick up the ones lying around when you make sure they don't need them anymore.  And while you're at it, see if you can find some of the fluid the drudge mucus creatures secrete.  And kill some of those contaminated rats while you're down there, you can smell them all the way up here. - Dyric", 178, 1560002)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have recovered the caustic fluid I need.")

	AddQuestStepKill(Quest, 3, "I must kill some contaminated rats for Dyric.  Two dozen should be enough even for him.", 24, 100, "My tools aren't up to the task of forging this new armor, so I need something a little higher quality.  Get me some of the tools I know the Murkwater veterans just picked up down in Edgewater Drains.  I heard their smiths have some excellent ones they smuggled in from Qeynosian dwarves.  Pick up the ones lying around when you make sure they don't need them anymore.  And while you're at it, see if you can find some of the fluid the drudge mucus creatures secrete.  And kill some of those contaminated rats while you're down there, you can smell them all the way up here. - Dyric", 611, 1560003)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have killed several contaminated rats.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've completed what Dyric has asked.  I should return to him and see what he can make from them.")

	AddQuestStepChat(Quest, 4, "I should return to Dyric.", 1, "I need to speak to Dyric Pire.", 11, 1280012)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I have returned to Dyric.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken to Dyric Pire.")

	UpdateQuestDescription(Quest, "Dyric has paid me with new armor for my shoulders after collecting some new tools.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
