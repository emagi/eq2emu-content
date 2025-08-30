--[[
	Script Name		: SpawnScripts/SouthFreeport/WugFacemangler.lua
	Script Purpose	: ZarggThroattearer
	Script Author	: Dorbin
	Script Date		: 2022.05.04
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
require "SpawnScripts/Generic/NPCModule"
dofile("SpawnScripts/Generic/ExpelNonCitizen.lua")
dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    FreeportGuard(NPC)
    SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC, Spawn)
end