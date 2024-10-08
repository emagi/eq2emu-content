--[[
    Script Name    : SpawnScripts/ThunderingSteppes/anearthrumblerCave7.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.10.06 07:10:12
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
	MovementLoopAddLocation(NPC, 888.38, -25.37, 1070.65, 2, 0)
	MovementLoopAddLocation(NPC, 895.17, -21.63, 1077.3, 2, 0)
	MovementLoopAddLocation(NPC, 898.8, -21.06, 1081.08, 2, 0)
	MovementLoopAddLocation(NPC, 909.45, -20.55, 1091.29, 2, 0)
	MovementLoopAddLocation(NPC, 912.1, -20.67, 1091.38, 2, 0)
	MovementLoopAddLocation(NPC, 913.9, -20.58, 1088.79, 2, 0)
	MovementLoopAddLocation(NPC, 914.74, -20.07, 1081.55, 2, 0)
	MovementLoopAddLocation(NPC, 914.02, -20.58, 1088.98, 2, 0)
	MovementLoopAddLocation(NPC, 912.85, -20.68, 1090.95, 2, 0)
	MovementLoopAddLocation(NPC, 910.29, -20.39, 1090.2, 2, 0)
	MovementLoopAddLocation(NPC, 907.21, -20.47, 1088.05, 2, 0)
	MovementLoopAddLocation(NPC, 897.26, -21.1, 1077.75, 2, 0)
	MovementLoopAddLocation(NPC, 888.38, -25.37, 1070.65, 2, 0)
end