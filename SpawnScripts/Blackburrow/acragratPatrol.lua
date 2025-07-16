--[[
    Script Name    : SpawnScripts/Blackburrow/acragratPatrol.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.07.15 12:07:39
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
	MovementLoopAddLocation(NPC, -16.51, 3.96, -9.36, 2, 0)
	MovementLoopAddLocation(NPC, -16.94, 3.96, -12.99, 2, 0)
	MovementLoopAddLocation(NPC, -16.94, 3.96, -12.99, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -16.61, 3.96, -10.81, 2, 0)
	MovementLoopAddLocation(NPC, -13.78, 3.92, -10.19, 2, 0)
	MovementLoopAddLocation(NPC, -12.76, 3.91, -12.62, 2, 0)
	MovementLoopAddLocation(NPC, -12.76, 3.91, -12.62, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -13.48, 3.92, -10.77, 2, 0)
	MovementLoopAddLocation(NPC, -14.59, 3.93, -9.63, 2, 0)
	MovementLoopAddLocation(NPC, -14.59, 3.93, -9.63, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -13.91, 3.93, -9.79, 2, 0)
	MovementLoopAddLocation(NPC, -11.82, 4.02, -9.84, 2, 0)
	MovementLoopAddLocation(NPC, -6.74, 0.98, -9.94, 2, 0)
	MovementLoopAddLocation(NPC, -6.94, 0.55, -11.93, 2, 0)
	MovementLoopAddLocation(NPC, -8.52, 0.61, -13.17, 2, 0)
	MovementLoopAddLocation(NPC, -8.52, 0.61, -13.17, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -6.61, 0.55, -11.89, 2, 0)
	MovementLoopAddLocation(NPC, -6.12, 0.45, -10.23, 2, 0)
	MovementLoopAddLocation(NPC, -6.72, 0.96, -9.87, 2, 0)
	MovementLoopAddLocation(NPC, -12.08, 4.09, -9.99, 2, 0)
	MovementLoopAddLocation(NPC, -13.08, 3.92, -10.01, 2, 0)
	MovementLoopAddLocation(NPC, -12.67, 3.91, -12.9, 2, 0)
	MovementLoopAddLocation(NPC, -12.67, 3.91, -12.9, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -13.22, 3.92, -10.84, 2, 0)
	MovementLoopAddLocation(NPC, -14.11, 3.93, -9.92, 2, 0)
	MovementLoopAddLocation(NPC, -16.51, 3.96, -9.36, 2, 0)
	MovementLoopAddLocation(NPC, -16.51, 3.96, -9.36, 2, MakeRandomInt(8,15))
end
