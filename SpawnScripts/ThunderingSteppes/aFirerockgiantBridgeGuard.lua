--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aFirerockgiantBridgeGuard.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.26 08:09:50
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    HillGiantLesser(NPC, Spawn)
    AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 776.52, 18.54, 723.96, 2, 0)
	MovementLoopAddLocation(NPC, 794.43, 17.64, 709.95, 2, 0)
	MovementLoopAddLocation(NPC, 801.12, 16.63, 701.04, 2, 0)
	MovementLoopAddLocation(NPC, 813.5, 12.58, 686.4, 2, 0)
	MovementLoopAddLocation(NPC, 829.41, 10.71, 667.05, 2, 0)
	MovementLoopAddLocation(NPC, 847.29, 16.38, 644.43, 2, 0)
	MovementLoopAddLocation(NPC, 854.55, 17.69, 635.24, 2, 0)
	MovementLoopAddLocation(NPC, 861.59, 17.82, 626.33, 2, 0)
	MovementLoopAddLocation(NPC, 869.26, 17.88, 624.49, 2, 0)
	MovementLoopAddLocation(NPC, 864.87, 17.84, 625.16, 2, 0)
	MovementLoopAddLocation(NPC, 856.54, 17.73, 633.38, 2, 0)
	MovementLoopAddLocation(NPC, 848.48, 16.55, 644.14, 2, 0)
	MovementLoopAddLocation(NPC, 831.75, 11.28, 663.77, 2, 0)
	MovementLoopAddLocation(NPC, 818.22, 10.73, 679.64, 2, 0)
	MovementLoopAddLocation(NPC, 799.46, 17.38, 704.03, 2, 0)
	MovementLoopAddLocation(NPC, 794.44, 17.69, 711.11, 2, 0)
	MovementLoopAddLocation(NPC, 776.52, 18.54, 723.96, 2, 0)
end