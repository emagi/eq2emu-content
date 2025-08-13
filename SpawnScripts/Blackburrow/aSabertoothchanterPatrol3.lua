--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothchanterPatrol3.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.08.12 09:08:21
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
	MovementLoopAddLocation(NPC, -38.74, -18.73, -18.92, 2, 0)
	MovementLoopAddLocation(NPC, -36.38, -18.79, -24.86, 2, 0)
	MovementLoopAddLocation(NPC, -34.57, -18.74, -24.97, 2, 0)
	MovementLoopAddLocation(NPC, -34.28, -18.79, -26.8, 2, 0)
	MovementLoopAddLocation(NPC, -37.81, -18.89, -31.69, 2, 0)
	MovementLoopAddLocation(NPC, -34.55, -18.76, -26.45, 2, 0)
	MovementLoopAddLocation(NPC, -29.65, -18.65, -23.18, 2, 0)
	MovementLoopAddLocation(NPC, -29.03, -18.6, -22.26, 2, 0)
	MovementLoopAddLocation(NPC, -29.62, -18.64, -22.97, 2, 0)
	MovementLoopAddLocation(NPC, -34.16, -18.78, -25.85, 2, 0)
	MovementLoopAddLocation(NPC, -35.71, -18.93, -28.14, 2, 0)
	MovementLoopAddLocation(NPC, -36.86, -18.88, -31.21, 2, 0)
	MovementLoopAddLocation(NPC, -35.26, -18.72, -25.92, 2, 0)
end