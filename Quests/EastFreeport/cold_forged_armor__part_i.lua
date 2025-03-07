--[[
	Script Name		:	cold_forged_armor_-_part_i.lua
	Script Purpose	:	Handles the quest, "Cold Forged Armor - Part I"
	Script Author	:	Xiki)
	Script Date		:	3/3/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	East Freeport
	Quest Giver		:	Dyric Pire
	Preceded by		:	None
	Followed by		:	Cold Forged Armor - Part II
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must recover cold grave dust from fallen guardians in the Commonlands.", 18, 100, "I need two things before I'll give you the gauntlets.  First I need some cold grave dust from the fallen guardians near The Ruins of Val'marr in the Commonlands.  While you're out there I have an old score I'd like settled with Anders Blackhammer.  Tell him I sent you before you throw him into the dirt permanently.  - Dyric", 347, 330083)
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
	UpdateQuestStepDescription(Quest, 1, "I have recovered cold grave dust from fallen guardians in the Commonlands.")

	AddQuestStepChat(Quest, 2, "I must deliver a message to Anders Blackhammer from Dyric.", 1, "I need two things before I'll give you the gauntlets.  First I need some cold grave dust from the fallen guardians near The Ruins of Val'marr in the Commonlands.  While you're out there I have an old score I'd like settled with Anders Blackhammer.  Tell him I sent you before you throw him into the dirt permanently.  - Dyric", 11, 330257)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have given Anders Blackhammer Dyric's message.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've completed what Dyric has asked; I should return to him and see what he can make from them.")

	AddQuestStepChat(Quest, 3, "I should return to Dyric.", 1, "I need to speak to Dyric Pire.", 11, 1280012)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have returned to Dyric.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken to Dyric Pire.")

	UpdateQuestDescription(Quest, "Dyric has paid me with a pair of gauntlets using his cold forged technique for collecting some cold grave dust and &quot;delivering a message&quot; to an Anders Blackhammer he didn't seem to care much for.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
