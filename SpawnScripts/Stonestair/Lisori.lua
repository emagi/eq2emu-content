--[[
	Script Name		:	SpawnScripts/Stonestair/Lirosi.lua
	Script Author	:	Xiki
	Script Date		:	2/13/2025
	Script Purpose	:	Handles the interactions with Lirosi
--]]


-- Quest ID'sjjl
local TheContest = 5951

function spawn(NPC)
	ProvidesQuest(NPC, TheContest)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if HasCompletedQuest(Spawn, TheContest) then
		Say(NPC, "You won this time, but I'll be back.")
	elseif GetQuestStep(Spawn, TheContest) == 1 then
		Say(NPC, "I'm waiting for you to bring me those orc fingers. Don't bother coming back until you have them all.")
	elseif GetQuestStep(Spawn, TheContest) == 2 then
		Say(NPC, "Ah, you've returned with the fingers. I must admit, I'm impressed. But don't think this means you're the better hunter.")
		SetStepComplete(Spawn, TheContest, 2)
	else
		if not HasQuest(Spawn, TheContest) then
			OfferQuest(NPC, Spawn, TheContest)
		end
	end
end

function respawn(NPC)
	spawn(NPC)
end