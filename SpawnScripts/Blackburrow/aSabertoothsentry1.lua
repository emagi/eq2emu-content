--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothsentry1.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.08.11 05:08:07
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
    AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -61.97, -17.19, 65.15, 2, 0)
	MovementLoopAddLocation(NPC, -56.43, -17.24, 63.92, 2, 0)
	MovementLoopAddLocation(NPC, -51.31, -16.87, 62.4, 2, 0)
	MovementLoopAddLocation(NPC, -40.91, -15.9, 57.89, 2, 0)
	MovementLoopAddLocation(NPC, -28.03, -14.61, 47.1, 2, 0)
	MovementLoopAddLocation(NPC, -25.35, -14.47, 45.17, 2, 0)
	MovementLoopAddLocation(NPC, -20.38, -14.31, 44.49, 2, 0)
	MovementLoopAddLocation(NPC, -22.78, -14.44, 44.58, 2, 0)
	MovementLoopAddLocation(NPC, -26.04, -14.49, 45.9, 2, 0)
	MovementLoopAddLocation(NPC, -32.7, -14.89, 51.46, 2, 0)
	MovementLoopAddLocation(NPC, -37.73, -15.62, 56.29, 2, 0)
	MovementLoopAddLocation(NPC, -51.27, -16.95, 64, 2, 0)
end
