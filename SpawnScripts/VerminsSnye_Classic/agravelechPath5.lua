--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/agravelechPath5.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.06 02:09:26
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 242.37 + MakeRandomInt(-2,2), -7, -55.54 + MakeRandomInt(-2,2), 2, 0)
	MovementLoopAddLocation(NPC, 244.42 + MakeRandomInt(-2,2), -7.03, -53.03 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 240.01, -6.98, -57.61, 2, 0)
	MovementLoopAddLocation(NPC, 237.85, -6.5, -63.12, 2, 0)
	MovementLoopAddLocation(NPC, 237.27 + MakeRandomInt(-2,2), -7.01, -71.12 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 237.41 + MakeRandomInt(-2,2), -6.5, -63.19 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 239.54, -7.03, -58.82, 2, 0)
	MovementLoopAddLocation(NPC, 245.03 + MakeRandomInt(-2,2), -6.97, -52.58 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 240.3 + MakeRandomInt(-2,2), -7, -57.77 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 244.28, -7.04, -53.09, 2, 0)
	MovementLoopAddLocation(NPC, 245.14, -6.5, -49.72, 2, 0)
	MovementLoopAddLocation(NPC, 245.24 + MakeRandomInt(-2,2), -6.92, -45.22 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 245.82, -6.5, -49.59, 2, 0)
	MovementLoopAddLocation(NPC, 244.96 + MakeRandomInt(-2,2), -6.98, -53 + MakeRandomInt(-2,2), 2, MakeRandomInt(5,10))
end