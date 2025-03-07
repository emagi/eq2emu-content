--[[
	Script Name		:	cold_forged_armor_-_part_iii.lua
	Script Purpose	:	Handles the quest, "Cold Forged Armor - Part III"
	Script Author	:	Xiki
	Script Date		:	3/3/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	East Freeport
	Quest Giver		:	Dyric Pire
	Preceded by		:	Cold Forged Armor - Part II
	Followed by		:	Cold Forged Armor - Part IV
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must recover unbeating hearts from the fallen explorers in Fallen Gate.", 10, 33, "I need two things next as I delve a little into the tempering of the metals.  Bring me half a dozen unbeating hearts from the fallen explorers that wander through Fallen Gate.  I've also heard stories of some ghosts that arose from the dark elf necromancers' sheer hatred of their attackers.  Bring me the enchanted symbols of these blighted undead. - Dyric", 383, 1190014, 1190015, 1190027, 1190028, 1190031, 1190114)
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
	UpdateQuestStepDescription(Quest, 1, "I have recovered unbeating hearts from fallen explorers.")

	AddQuestStepKill(Quest, 2, "I must take the enchanted symbols from the blighted undead within Fallen Gate.", 12, 33, "I need two things next as I delve a little into the tempering of the metals.  Bring me half a dozen unbeating hearts from the fallen explorers that wander through Fallen Gate.  I've also heard stories of some ghosts that arose from the dark elf necromancers' sheer hatred of their attackers.  Bring me the enchanted symbols of these blighted undead. - Dyric", 584, 1190036, 1190082, 1190038, 1190187, 1190035, 1190095, 1190093, 1190094, 1190049, 1190113, 1190037, 1190041, 1190070, 1190044, 1190092, 1190090, 1190091)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have found the symbols I need.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've completed what Dyric has asked.  I should return to him and see what he can make from them.")

	AddQuestStepChat(Quest, 3, "I should return to Dyric.", 1, "I've gathered together all that Dyric has asked for.", 11, 1280012)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have returned to Dyric.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've given Dyric the ingredients he asked for.")

	UpdateQuestDescription(Quest, "Dyric has paid me with a pair of cold forged boots for collecting ogre zombie hearts and the spiked collars from the constructs of malice within The Fallen Gate.")
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
