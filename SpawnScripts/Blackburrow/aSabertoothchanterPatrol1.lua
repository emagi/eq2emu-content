--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothchanterPatrol1.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.08.12 07:08:40
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
	MovementLoopAddLocation(NPC, -53.75, -18.57, 25.06, 2, 0)
	MovementLoopAddLocation(NPC, -51.99, -18.24, 27.73, 2, 0)
	MovementLoopAddLocation(NPC, -48.85, -17.98, 30.39, 2, 0)
	MovementLoopAddLocation(NPC, -43.3, -17.56, 30.41, 2, 0)
	MovementLoopAddLocation(NPC, -39.36, -17.3, 29.08, 2, 0)
	MovementLoopAddLocation(NPC, -36.73, -17.25, 27.56, 2, 0)
	MovementLoopAddLocation(NPC, -33.77, -16.67, 24.52, 2, 0)
	MovementLoopAddLocation(NPC, -34.68, -16.53, 21.5, 2, 0)
	MovementLoopAddLocation(NPC, -36.13, -16.73, 21.09, 2, 0)
	MovementLoopAddLocation(NPC, -39.72, -17.44, 21.56, 2, 0)
	MovementLoopAddLocation(NPC, -40.99, -17.49, 23.35, 2, 0)
	MovementLoopAddLocation(NPC, -41, -17.44, 26.84, 2, 0)
	MovementLoopAddLocation(NPC, -42.42, -17.65, 29.28, 2, 0)
	MovementLoopAddLocation(NPC, -45.37, -17.72, 30.08, 2, 0)
	MovementLoopAddLocation(NPC, -49.57, -18.19, 29.01, 2, 0)
end