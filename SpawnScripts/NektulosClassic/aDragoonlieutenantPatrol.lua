--[[
    Script Name    : SpawnScripts/NektulosClassic/aDragoonlieutenantPatrol.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.04.27 02:04:23
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
	MovementLoopAddLocation(NPC, -369.56, -0.62, -1170.82, 2, 0)
	MovementLoopAddLocation(NPC, -369.07, -0.62, -1173.61, 2, 0)
	MovementLoopAddLocation(NPC, -369.07, 11.5, -1212.17, 2, 0)
	MovementLoopAddLocation(NPC, -368.99, 11.5, -1220.76, 2, 0)
	MovementLoopAddLocation(NPC, -369.15, 20.74, -1249.1, 2, 0)
	MovementLoopAddLocation(NPC, -369.15, 21, -1260.51, 2, 0)
	MovementLoopAddLocation(NPC, -369.09, 26.68, -1277.91, 2, 0)
	MovementLoopAddLocation(NPC, -369.25, 27, -1283.4, 2, 0)
	MovementLoopAddLocation(NPC, -373.24, 27, -1284.13, 2, 0)
	MovementLoopAddLocation(NPC, -390.41, 32.51, -1283.96, 2, 0)
	MovementLoopAddLocation(NPC, -396.88, 33, -1283.96, 2, 0)
	MovementLoopAddLocation(NPC, -397.03, 33, -1279.41, 2, 0)
	MovementLoopAddLocation(NPC, -396.78, 38.7, -1262.03, 2, 0)
	MovementLoopAddLocation(NPC, -396.86, 39, -1256.88, 2, 0)
	MovementLoopAddLocation(NPC, -392.66, 39, -1255.85, 2, 0)
	MovementLoopAddLocation(NPC, -375.02, 44.7, -1255.8, 2, 0)
	MovementLoopAddLocation(NPC, -369.98, 45, -1255.95, 2, 0)
	MovementLoopAddLocation(NPC, -369.15, 45, -1260.62, 2, 0)
	MovementLoopAddLocation(NPC, -368.79, 50.57, -1277.6, 2, 0)
	MovementLoopAddLocation(NPC, -369.3, 51, -1283.34, 2, 0)
	MovementLoopAddLocation(NPC, -372.78, 51, -1283.95, 2, 0)
	MovementLoopAddLocation(NPC, -390.8, 56.64, -1284.01, 2, 0)
	MovementLoopAddLocation(NPC, -397.07, 57, -1284.21, 2, 0)
	MovementLoopAddLocation(NPC, -396.81, 57, -1288.45, 2, 0)
	MovementLoopAddLocation(NPC, -396.92, 60.19, -1297.98, 2, 0)
	MovementLoopAddLocation(NPC, -396.69, 59.82, -1313.23, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -396.69, 59.82, -1313.23, 2, 0)
	MovementLoopAddLocation(NPC, -396.81, 60.5, -1299.88, 2, 0)
	MovementLoopAddLocation(NPC, -396.93, 57.18, -1289.37, 2, 0)
	MovementLoopAddLocation(NPC, -396.88, 57, -1284.37, 2, 0)
	MovementLoopAddLocation(NPC, -392.89, 57, -1283.87, 2, 0)
	MovementLoopAddLocation(NPC, -373.21, 51, -1284.11, 2, 0)
	MovementLoopAddLocation(NPC, -369.15, 51, -1283.9, 2, 0)
	MovementLoopAddLocation(NPC, -369.15, 51, -1283.9, 2, 0)
	MovementLoopAddLocation(NPC, -369.29, 51, -1279.48, 2, 0)
	MovementLoopAddLocation(NPC, -369.32, 45, -1259.64, 2, 0)
	MovementLoopAddLocation(NPC, -369.2, 45, -1256.39, 2, 0)
	MovementLoopAddLocation(NPC, -372.82, 45, -1256.09, 2, 0)
	MovementLoopAddLocation(NPC, -391.82, 39.1, -1256.45, 2, 0)
	MovementLoopAddLocation(NPC, -395.96, 39, -1256.56, 2, 0)
	MovementLoopAddLocation(NPC, -396.61, 39, -1259.98, 2, 0)
	MovementLoopAddLocation(NPC, -396.78, 33.35, -1278.07, 2, 0)
	MovementLoopAddLocation(NPC, -396.84, 33, -1283.32, 2, 0)
	MovementLoopAddLocation(NPC, -392.86, 33, -1283.88, 2, 0)
	MovementLoopAddLocation(NPC, -374.31, 27.15, -1283.64, 2, 0)
	MovementLoopAddLocation(NPC, -369.75, 27, -1283.61, 2, 0)
	MovementLoopAddLocation(NPC, -368.96, 27, -1279.99, 2, 0)
	MovementLoopAddLocation(NPC, -369.04, 21.04, -1261, 2, 0)
	MovementLoopAddLocation(NPC, -369.24, 21, -1251.56, 2, 0)
	MovementLoopAddLocation(NPC, -368.95, 11.5, -1221.24, 2, 0)
	MovementLoopAddLocation(NPC, -368.85, 11.5, -1213.25, 2, 0)
	MovementLoopAddLocation(NPC, -369.12, -0.58, -1174.17, 2, 0)
	MovementLoopAddLocation(NPC, -369.56, -0.62, -1170.82, 2, 0)
	MovementLoopAddLocation(NPC, -369.56, -0.62, -1170.82, 2, MakeRandomInt(8,15))
end