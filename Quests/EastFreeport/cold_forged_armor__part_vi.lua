--[[
	Script Name		:	cold_forged_armor_-_part_vi.lua
	Script Purpose	:	Handles the quest, "Cold Forged Armor - Part VI"
	Script Author	:	Xiki
	Script Date		:	3/3/2025
	Script Notes	:	Auto generated with QuestParser.

	Zone			:   East Freeport
	Quest Giver		:	Dyric Pire
	Preceded by		:	Cold Forged Armor - Part V
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must recover wings from Asilian protectors in Nektulos Forest.", 24, 100, "I save the best for last.  The Asilian fairies' wings have a strange property I find useful in my work.  Get me a couple dozen.  I need some essence of calling from ashland wisps and corroded shields from the Dragoon sentries in Nektulos Forest.  And finally, bring me the shipment of high quality steel Obere Warrain just received recently. He can be found near the Nerius pirates who got him the shipment.  He'll be there for a few days but hurry, I don't want to lose a chance at that steel.  And be careful, he's been touchy as of late and has even hired bodyguards from the Nerius pirates nearby. Be careful, and bring friends, you'll need them.  - Dyric", 110, 1790175, 1790176)
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
	UpdateQuestStepDescription(Quest, 1, "I have recovered all the wings I need.")

	AddQuestStepKill(Quest, 2, "I must recover essence of calling from some ashland wisps.", 18, 100, "I save the best for last.  The Asilian fairies' wings have a strange property I find useful in my work.  Get me a couple dozen.  I need some essence of calling from ashland wisps and corroded shields from the Dragoon sentries in Nektulos Forest.  And finally, bring me the shipment of high quality steel Obere Warrain just received recently. He can be found near the Nerius pirates who got him the shipment.  He'll be there for a few days but hurry, I don't want to lose a chance at that steel.  And be careful, he's been touchy as of late and has even hired bodyguards from the Nerius pirates nearby. Be careful, and bring friends, you'll need them.  - Dyric", 351, 1790244)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have recovered essence of calling from some ashland wisps.")

	AddQuestStepKill(Quest, 3, "I must recover corroded shields from Dragoon sentries in Nektulos Forest.", 20, 100, "I save the best for last.  The Asilian fairies' wings have a strange property I find useful in my work.  Get me a couple dozen.  I need some essence of calling from ashland wisps and corroded shields from the Dragoon sentries in Nektulos Forest.  And finally, bring me the shipment of high quality steel Obere Warrain just received recently. He can be found near the Nerius pirates who got him the shipment.  He'll be there for a few days but hurry, I don't want to lose a chance at that steel.  And be careful, he's been touchy as of late and has even hired bodyguards from the Nerius pirates nearby. Be careful, and bring friends, you'll need them.  - Dyric", 2269, 1790163, 1790165, 1790223)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have all the corroded shields I need.")

	AddQuestStepKill(Quest, 4, "I must take the shipment of high quality steel from Obere Warrain in Nektulos Forest.", 1, 100, "I save the best for last.  The Asilian fairies' wings have a strange property I find useful in my work.  Get me a couple dozen.  I need some essence of calling from ashland wisps and corroded shields from the Dragoon sentries in Nektulos Forest.  And finally, bring me the shipment of high quality steel Obere Warrain just received recently. He can be found near the Nerius pirates who got him the shipment.  He'll be there for a few days but hurry, I don't want to lose a chance at that steel.  And be careful, he's been touchy as of late and has even hired bodyguards from the Nerius pirates nearby. Be careful, and bring friends, you'll need them.  - Dyric", 775, 1790223) --place holder ID
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have taken the steel from Obere Warrain.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've completed what Dyric has asked, I should return to him and see what he can make from them.")

	AddQuestStepChat(Quest, 5, "I should return to Dyric.", 1, "I need to speak to Dyric Pire.", 11, 1280012)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "I have returned to Dyric.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken to Dyric.")

	UpdateQuestDescription(Quest, "Dyric has paid me with a cold forged chest piece for collecting fairy wings, essence of calling from ashland wisps, corroded shields, and a shipment of high quality steel. <br>")
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
		Step4Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
