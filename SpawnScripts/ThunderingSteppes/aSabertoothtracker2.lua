--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aSabertoothtracker2.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.22 05:09:36
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
	MovementLoopAddLocation(NPC, 1309.94, 0.64, -277.36, 2, 0)
	MovementLoopAddLocation(NPC, 1303.28, -2.03, -194.47, 2, 0)
	MovementLoopAddLocation(NPC, 1280.73, -3, -166.98, 2, 0)
	MovementLoopAddLocation(NPC, 1238.24, -1.26, -186.07, 2, 0)
	MovementLoopAddLocation(NPC, 1225.25, -1.38, -256.47, 2, 0)
	MovementLoopAddLocation(NPC, 1246.43, -2.69, -341.24, 2, 0)
	MovementLoopAddLocation(NPC, 1261.97, -2.83, -351.73, 2, 0)
	MovementLoopAddLocation(NPC, 1248.96, -2.87, -344.45, 2, 0)
	MovementLoopAddLocation(NPC, 1222.49, -1.16, -268.1, 2, 0)
	MovementLoopAddLocation(NPC, 1218.79, -0.35, -194.44, 2, 0)
	MovementLoopAddLocation(NPC, 1257.96, -2.69, -169.74, 2, 0)
	MovementLoopAddLocation(NPC, 1308.91, -1.59, -190.35, 2, 0)
	MovementLoopAddLocation(NPC, 1309.94, 0.64, -277.36, 2, 0)
end