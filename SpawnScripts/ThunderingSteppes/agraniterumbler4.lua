--[[
    Script Name    : SpawnScripts/ThunderingSteppes/agraniterumbler4.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.10.06 07:10:27
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
	MovementLoopAddLocation(NPC, 821.92, -13.54, 1025.09, 2, 0)
	MovementLoopAddLocation(NPC, 831.47, -13.32, 1026.7, 2, 0)
	MovementLoopAddLocation(NPC, 835.61, -12.88, 1026.82, 2, 0)
	MovementLoopAddLocation(NPC, 852.27, -10.57, 1027.07, 2, 0)
	MovementLoopAddLocation(NPC, 856.88, -10.4, 1029.58, 2, 0)
	MovementLoopAddLocation(NPC, 863.99, -11.63, 1035.62, 2, 0)
	MovementLoopAddLocation(NPC, 869.64, -14.88, 1042.36, 2, 0)
	MovementLoopAddLocation(NPC, 877.04, -17.48, 1049.47, 2, 0)
	MovementLoopAddLocation(NPC, 873.75, -16.44, 1045.77, 2, 0)
	MovementLoopAddLocation(NPC, 865.69, -12.21, 1036.85, 2, 0)
	MovementLoopAddLocation(NPC, 859.44, -10.62, 1030.54, 2, 0)
	MovementLoopAddLocation(NPC, 855.13, -10.46, 1028.62, 2, 0)
	MovementLoopAddLocation(NPC, 852, -10.64, 1027.72, 2, 0)
	MovementLoopAddLocation(NPC, 840.43, -12.19, 1027.9, 2, 0)
	MovementLoopAddLocation(NPC, 821.92, -13.54, 1025.09, 2, 0)
end