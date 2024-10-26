--[[
    Script Name    : SpawnScripts/ThunderingSteppes/anearthrumblerCave4.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.10.06 07:10:41
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
	MovementLoopAddLocation(NPC, 831.32, -15.79, 1101.92, 2, 0)
	MovementLoopAddLocation(NPC, 840.8, -16.35, 1101.56, 2, 0)
	MovementLoopAddLocation(NPC, 848.53, -15.25, 1099.27, 2, 0)
	MovementLoopAddLocation(NPC, 857.21, -12.82, 1104.15, 2, 0)
	MovementLoopAddLocation(NPC, 861.94, -13.13, 1106.66, 2, 0)
	MovementLoopAddLocation(NPC, 865.57, -14.17, 1109.57, 2, 0)
	MovementLoopAddLocation(NPC, 869.48, -15.9, 1114.21, 2, 0)
	MovementLoopAddLocation(NPC, 876.9, -17.81, 1124.55, 2, 0)
	MovementLoopAddLocation(NPC, 873.22, -17.32, 1118.87, 2, 0)
	MovementLoopAddLocation(NPC, 865.02, -13.9, 1108.63, 2, 0)
	MovementLoopAddLocation(NPC, 858.7, -12.76, 1104.47, 2, 0)
	MovementLoopAddLocation(NPC, 851.55, -14.64, 1099.74, 2, 0)
	MovementLoopAddLocation(NPC, 846.46, -15.46, 1099.4, 2, 0)
	MovementLoopAddLocation(NPC, 840.17, -16.41, 1101.23, 2, 0)
	MovementLoopAddLocation(NPC, 831.32, -15.79, 1101.92, 2, 0)
end