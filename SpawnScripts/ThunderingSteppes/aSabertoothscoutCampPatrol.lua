--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aSabertoothscoutCampPatrol.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.26 05:09:19
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
	MovementLoopAddLocation(NPC, 682.75, 2.96, -442.62, 2, 0)
	MovementLoopAddLocation(NPC, 685.78, 3.25, -455.74, 2, 0)
	MovementLoopAddLocation(NPC, 690.61, 1.42, -471.57, 2, 0)
	MovementLoopAddLocation(NPC, 703.19, 4.2, -484.6, 2, 0)
	MovementLoopAddLocation(NPC, 721.92, 6.01, -510.77, 2, 0)
	MovementLoopAddLocation(NPC, 735.15, 6.03, -522.96, 2, 0)
	MovementLoopAddLocation(NPC, 754.16, 5.22, -528.68, 2, 0)
	MovementLoopAddLocation(NPC, 781.33, 3.43, -530.81, 2, 0)
	MovementLoopAddLocation(NPC, 796.07, 4.35, -530.41, 2, 0)
	MovementLoopAddLocation(NPC, 816.72, 2.14, -533.53, 2, 0)
	MovementLoopAddLocation(NPC, 839.21, 2.4, -523.96, 2, 0)
	MovementLoopAddLocation(NPC, 858.31, 4, -508.44, 2, 0)
	MovementLoopAddLocation(NPC, 878.88, 4.77, -484.24, 2, 0)
	MovementLoopAddLocation(NPC, 886.74, 5.91, -462.7, 2, 0)
	MovementLoopAddLocation(NPC, 888.24, 5.85, -436.5, 2, 0)
	MovementLoopAddLocation(NPC, 887.32, 3.05, -408.03, 2, 0)
	MovementLoopAddLocation(NPC, 879.43, 3.85, -392.76, 2, 0)
	MovementLoopAddLocation(NPC, 860.54, 3.53, -375.39, 2, 0)
	MovementLoopAddLocation(NPC, 841.8, 2.77, -365.84, 2, 0)
	MovementLoopAddLocation(NPC, 828, 2.66, -352.12, 2, 0)
	MovementLoopAddLocation(NPC, 810.85, 3.16, -341.72, 2, 0)
	MovementLoopAddLocation(NPC, 783.34, 1.96, -311.96, 2, 0)
	MovementLoopAddLocation(NPC, 804.55, 3.12, -337.29, 2, 0)
	MovementLoopAddLocation(NPC, 820.52, 2.79, -346.32, 2, 0)
	MovementLoopAddLocation(NPC, 827.79, 3.22, -357.46, 2, 0)
	MovementLoopAddLocation(NPC, 841.66, 4.68, -375.31, 2, 0)
	MovementLoopAddLocation(NPC, 853.4, -0.09, -390.95, 2, 0)
	MovementLoopAddLocation(NPC, 864.56, -5.99, -423.65, 2, 0)
	MovementLoopAddLocation(NPC, 864.81, -9.99, -449.3, 2, 0)
	MovementLoopAddLocation(NPC, 854.96, -6.39, -486.61, 2, 0)
	MovementLoopAddLocation(NPC, 840.99, -0.89, -505.24, 2, 0)
	MovementLoopAddLocation(NPC, 831.97, 3.5, -518.46, 2, 0)
	MovementLoopAddLocation(NPC, 816.45, 3.38, -526.7, 2, 0)
	MovementLoopAddLocation(NPC, 800.7, 3.68, -534.24, 2, 0)
	MovementLoopAddLocation(NPC, 783.32, 3.17, -535.48, 2, 0)
	MovementLoopAddLocation(NPC, 764.56, 4.17, -530.85, 2, 0)
	MovementLoopAddLocation(NPC, 746.94, 5.37, -528.65, 2, 0)
	MovementLoopAddLocation(NPC, 731.59, 6.32, -521.05, 2, 0)
	MovementLoopAddLocation(NPC, 718.16, 5.51, -505.14, 2, 0)
	MovementLoopAddLocation(NPC, 705.42, 4.87, -483.86, 2, 0)
	MovementLoopAddLocation(NPC, 692.81, 1.56, -476.84, 2, 0)
	MovementLoopAddLocation(NPC, 683.62, 2.91, -460.19, 2, 0)
	MovementLoopAddLocation(NPC, 682.75, 2.96, -442.62, 2, 0)
end