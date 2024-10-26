--[[
    Script Name    : SpawnScripts/ThunderingSteppes/agraniterumbler1.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.10.06 06:10:59
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
	MovementLoopAddLocation(NPC, 794.07, -20.53, 1084.54, 2, 0)
	MovementLoopAddLocation(NPC, 779.45, -17.79, 1100.03, 2, 0)
	MovementLoopAddLocation(NPC, 785.07, -17.59, 1102.03, 2, 0)
	MovementLoopAddLocation(NPC, 794.88, -16.42, 1101.51, 2, 0)
	MovementLoopAddLocation(NPC, 819.11, -15.39, 1101.87, 2, 0)
	MovementLoopAddLocation(NPC, 825.82, -15.71, 1099.94, 2, 0)
	MovementLoopAddLocation(NPC, 832.9, -17.59, 1092.61, 2, 0)
	MovementLoopAddLocation(NPC, 837.96, -18.82, 1085.71, 2, 0)
	MovementLoopAddLocation(NPC, 838.47, -19.81, 1068.86, 2, 0)
	MovementLoopAddLocation(NPC, 839.3, -19.63, 1078.53, 2, 0)
	MovementLoopAddLocation(NPC, 838.13, -19, 1084.37, 2, 0)
	MovementLoopAddLocation(NPC, 834.37, -18.03, 1090.46, 2, 0)
	MovementLoopAddLocation(NPC, 827.27, -15.82, 1099.01, 2, 0)
	MovementLoopAddLocation(NPC, 823.99, -15.51, 1101, 2, 0)
	MovementLoopAddLocation(NPC, 793.29, -16.26, 1101.74, 2, 0)
	MovementLoopAddLocation(NPC, 782.64, -17.43, 1101.42, 2, 0)
	MovementLoopAddLocation(NPC, 783.09, -17.98, 1096.5, 2, 0)
	MovementLoopAddLocation(NPC, 793.67, -20.54, 1085.01, 2, 0)
end