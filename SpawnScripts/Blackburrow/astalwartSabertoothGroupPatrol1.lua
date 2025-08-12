--[[
    Script Name    : SpawnScripts/Blackburrow/astalwartSabertoothGroupPatrol1.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.08.11 06:08:43
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
	MovementLoopAddLocation(NPC, -34.78, -16.73, 20.96, 2, 0)
	MovementLoopAddLocation(NPC, -38.31, -17.06, 21.54, 2, 0)
	MovementLoopAddLocation(NPC, -40.64, -17.48, 23.37, 2, 0)
	MovementLoopAddLocation(NPC, -42.21, -17.72, 28.68, 2, 0)
	MovementLoopAddLocation(NPC, -46.14, -17.77, 30.34, 2, 0)
	MovementLoopAddLocation(NPC, -49.91, -18.2, 28.81, 2, 0)
	MovementLoopAddLocation(NPC, -51.9, -18.31, 26.25, 2, 0)
	MovementLoopAddLocation(NPC, -49.58, -18.2, 28.91, 2, 0)
	MovementLoopAddLocation(NPC, -45.88, -17.85, 28.95, 2, 0)
	MovementLoopAddLocation(NPC, -37.17, -17.25, 27.47, 2, 0)
	MovementLoopAddLocation(NPC, -34.27, -16.83, 25.06, 2, 0)
end