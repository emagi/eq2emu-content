--[[
    Script Name    : SpawnScripts/Blackburrow/acragratPatrol3.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.07.22 08:07:41
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
	MovementLoopAddLocation(NPC, 16.71, -6.06, -67.07, 2, 0)
	MovementLoopAddLocation(NPC, 12.66, -7.02, -67.18, 2, 0)
	MovementLoopAddLocation(NPC, 10.9, -7.92, -67.65, 2, 0)
	MovementLoopAddLocation(NPC, 7.22, -8.74, -67.26, 2, 0)
	MovementLoopAddLocation(NPC, 3.09, -9.14, -67.75, 2, 0)
	MovementLoopAddLocation(NPC, 3.09, -9.14, -67.75, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 5.59, -9.11, -67.31, 2, 0)
	MovementLoopAddLocation(NPC, 7.35, -8.71, -68.34, 2, 0)
	MovementLoopAddLocation(NPC, 7.35, -8.71, -68.34, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 9.57, -8.61, -67.15, 2, 0)
	MovementLoopAddLocation(NPC, 11.83, -7.3, -67.05, 2, 0)
	MovementLoopAddLocation(NPC, 19.09, -5.71, -66.7, 2, 0)
	MovementLoopAddLocation(NPC, 19.09, -5.71, -66.7, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 12.4, -7.06, -67.24, 2, 0)
	MovementLoopAddLocation(NPC, 9.42, -8.53, -68, 2, 0)
	MovementLoopAddLocation(NPC, 5, -9.12, -67.43, 2, 0)
	MovementLoopAddLocation(NPC, -1.78, -9.82, -68.24, 2, 0)
	MovementLoopAddLocation(NPC, -3.37, -9.76, -69.84, 2, 0)
	MovementLoopAddLocation(NPC, -4.92, -9.77, -70.12, 2, 0)
	MovementLoopAddLocation(NPC, -4.92, -9.77, -70.12, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -3.2, -9.76, -70, 2, 0)
	MovementLoopAddLocation(NPC, -1.86, -9.81, -68.49, 2, 0)
	MovementLoopAddLocation(NPC, 4.62, -9.1, -67.41, 2, 0)
	MovementLoopAddLocation(NPC, 8.88, -8.56, -67.94, 2, 0)
	MovementLoopAddLocation(NPC, 16.71, -6.06, -67.07, 2, 0)
	MovementLoopAddLocation(NPC, 16.71, -6.06, -67.07, 2, MakeRandomInt(8,15))
end
