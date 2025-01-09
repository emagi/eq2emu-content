--[[
	Script Name	: SpawnScripts/ScaleYard/CaptainRonia.lua
	Script Purpose	: Captain Ronia <Guard>
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    FreeportGuard(NPC)
	MovementLoopAddLocation(NPC, 1.35, -4.83, 5.19, 2, 0)
	MovementLoopAddLocation(NPC, -2.36, -5.30, 2.25, 2, 0)
	MovementLoopAddLocation(NPC, -7.02, -5.57, -9.58, 2, 0)
	MovementLoopAddLocation(NPC, -1.16, -5.05, 2.85, 2, 0)
	MovementLoopAddLocation(NPC, 6.69, -4.59, 9.05, 2, 0)
	MovementLoopAddLocation(NPC, 17.25, -4.38, 11.80, 2, 0)
	MovementLoopAddLocation(NPC, 20.80, -4.38, 23.54, 2, 0)
	MovementLoopAddLocation(NPC, 19.88, -4.38, 31.79, 2, 0)
	MovementLoopAddLocation(NPC, 8.54, -4.38, 71.47, 2, 0)
	MovementLoopAddLocation(NPC, 20.18, -4.38, 24.56, 2, 0)
	MovementLoopAddLocation(NPC, 16.46, -4.38, 12.78, 2, 0)
	MovementLoopAddLocation(NPC, 4.75, -4.83, 9.05, 2, 0)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/human_eco_evil_freeportmilitia/ft/eco/evil/human_eco_evil_freeportmilitia_10_gf_1236a75.mp3", "The Freeport Militia demands unconditional obedience among its ranks.", "", 70786309, 2889649459, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end