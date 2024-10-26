--[[
    Script Name    : SpawnScripts/ThunderingSteppes/anearthrumblerCave2.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.10.06 06:10:40
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
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
	MovementLoopAddLocation(NPC, 777.16, -17.77, 1101.56, 2, 0)
	MovementLoopAddLocation(NPC, 763.36, -13.1, 1115.18, 2, 0)
	MovementLoopAddLocation(NPC, 751.88, -11.56, 1125.98, 2, 0)
	MovementLoopAddLocation(NPC, 748.85, -10.98, 1131.96, 2, 0)
	MovementLoopAddLocation(NPC, 746.88, -11.49, 1138.76, 2, 0)
	MovementLoopAddLocation(NPC, 745.85, -13.81, 1147.29, 2, 0)
	MovementLoopAddLocation(NPC, 749.12, -17.83, 1174.53, 2, 0)
	MovementLoopAddLocation(NPC, 745.91, -14.87, 1151.18, 2, 0)
	MovementLoopAddLocation(NPC, 747.46, -11.15, 1136.08, 2, 0)
	MovementLoopAddLocation(NPC, 750.45, -11.3, 1127.82, 2, 0)
	MovementLoopAddLocation(NPC, 756.2, -11.66, 1123.36, 2, 0)
	MovementLoopAddLocation(NPC, 762.69, -12.83, 1116.43, 2, 0)
	MovementLoopAddLocation(NPC, 777.16, -17.77, 1101.56, 2, 0)
end