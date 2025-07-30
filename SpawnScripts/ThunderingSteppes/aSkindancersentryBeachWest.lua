--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aSkindancersentryBeachWest.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.10.09 06:10:27
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    BlackburrowGnoll(NPC)
    AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 503.21, -20.73, 1109.35, 2, 0)
	MovementLoopAddLocation(NPC, 520.83, -21.25, 1121.01, 2, 0)
	MovementLoopAddLocation(NPC, 537.06, -22.17, 1126.26, 2, 0)
	MovementLoopAddLocation(NPC, 553.01, -21.64, 1118.71, 2, 0)
	MovementLoopAddLocation(NPC, 567.43, -22.64, 1115.17, 2, 0)
	MovementLoopAddLocation(NPC, 582.39, -21.04, 1104.78, 2, 0)
	MovementLoopAddLocation(NPC, 599.68, -19.38, 1102.74, 2, 0)
	MovementLoopAddLocation(NPC, 617.87, -20.8, 1106.08, 2, 0)
	MovementLoopAddLocation(NPC, 634.34, -21.01, 1105.06, 2, 0)
	MovementLoopAddLocation(NPC, 642.99, -18.44, 1098.75, 2, 0)
	MovementLoopAddLocation(NPC, 632.48, -19.58, 1102.9, 2, 0)
	MovementLoopAddLocation(NPC, 614.1, -20.63, 1105.78, 2, 0)
	MovementLoopAddLocation(NPC, 595.56, -20.35, 1104.22, 2, 0)
	MovementLoopAddLocation(NPC, 574.5, -22.25, 1110.4, 2, 0)
	MovementLoopAddLocation(NPC, 553.87, -22.13, 1119.91, 2, 0)
	MovementLoopAddLocation(NPC, 539.14, -22.03, 1125.41, 2, 0)
	MovementLoopAddLocation(NPC, 523.29, -20.34, 1118.73, 2, 0)
	MovementLoopAddLocation(NPC, 503.21, -20.73, 1109.35, 2, 0)
end