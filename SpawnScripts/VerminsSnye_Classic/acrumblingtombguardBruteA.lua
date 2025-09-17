--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/acrumblingtombguardBruteA.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.16 08:09:20
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
	MovementLoopAddLocation(NPC, -8.07, 5.99, -8.96, 2, 0)
	MovementLoopAddLocation(NPC, -3.93, 6.67, -11.24, 2, 0)
	MovementLoopAddLocation(NPC, 0.05, 7.04, -11.88, 2, 0)
	MovementLoopAddLocation(NPC, 0.05, 7.04, -11.88, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -4.45, 6.66, -11.22, 2, 0)
	MovementLoopAddLocation(NPC, -6.52, 6.3, -9.97, 2, 0)
	MovementLoopAddLocation(NPC, -9.74, 5.68, -7.15, 2, 0)
	MovementLoopAddLocation(NPC, -11.78, 5.09, -2.3, 2, 0)
	MovementLoopAddLocation(NPC, -11.78, 5.09, -2.3, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -9.38, 5.38, -3.85, 2, 0)
	MovementLoopAddLocation(NPC, -9.38, 5.38, -3.85, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -11.05, 5.1, -2.8, 2, 0)
	MovementLoopAddLocation(NPC, -11.84, 4.63, 0.39, 2, 0)
	MovementLoopAddLocation(NPC, -11.84, 4.63, 0.39, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -10.9, 5.32, -4.32, 2, 0)
	MovementLoopAddLocation(NPC, -9.87, 5.55, -6.35, 2, 0)
	MovementLoopAddLocation(NPC, -6.35, 6.28, -9.58, 2, 0)
	MovementLoopAddLocation(NPC, -7.15, 5.92, -7.09, 2, 0)
	MovementLoopAddLocation(NPC, -7.15, 5.92, -7.09, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -9, 5.68, -6.85, 2, 0)
	MovementLoopAddLocation(NPC, -11.57, 5.25, -3.79, 2, 0)
	MovementLoopAddLocation(NPC, -11.57, 5.25, -3.79, 2, MakeRandomInt(8,15))
end