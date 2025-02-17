--[[
	Script Name		:	SpawnScripts/Stonestair/Rori.lua
	Script Author	:	Xiki
	Script Date		:	2/13/2025
	Script Purpose	:	Handles the interactions with Rori
--]]


-- Quest ID's
local RorisProposal = 5955
local RorisBack = 5956

function spawn(NPC)
	ProvidesQuest(NPC, RorisProposal)
	ProvidesQuest(NPC, RorisBack)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if not HasQuest(Spawn, RorisProposal) and not HasCompletedQuest(Spawn, RorisProposal) then
		Say(NPC, "Hey, you look like someone I can trust. I've got a proposal for you, and it's gonna make us both rich.")
		OfferQuest(NPC, Spawn, RorisProposal)
    
	elseif GetQuestStep(Spawn, RorisProposal) == 1 then
		Say(NPC, "I'm waiting for you to talk to Manius Galla about merging our gangs. Don't bother coming back until you've got an answer.")
	elseif GetQuestStep(Spawn, RorisProposal) == 2 then
		Say(NPC, "Ah, you're back. What did Manius Galla say? Is he on board with the plan?")
		SetStepComplete(Spawn, RorisProposal, 2)
	elseif GetQuestStep(Spawn, RorisBack) ==  2 then
	    SetStepComplete(Spawn, RorisBack, 2)
	    Say(NPC, "Thanks alot! Now I can finally take car of those thugs and show them who the boss around here really is!")
	elseif HasCompletedQuest(Spawn, RorisProposal) and not HasCompletedQuest(Spawn, RorisBack) then
		Say(NPC, "Hey, I've got another job for you. I need you to gather some orc hides from the Ruins.")
		OfferQuest(NPC, Spawn, RorisBack)
	else
		Say(NPC, "Thanks for your help, adventurer. I owe you one.")
	end
end

function respawn(NPC)
	spawn(NPC)
end