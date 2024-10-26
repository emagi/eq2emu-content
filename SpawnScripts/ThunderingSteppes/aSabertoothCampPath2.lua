--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aSabertoothCampPath2.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.21 09:09:00
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
	MovementLoopAddLocation(NPC, 1330.8, 13.9, -406.99, 2, 0)
	MovementLoopAddLocation(NPC, 1339.94, 13.26, -406.45, 2, 0)
	MovementLoopAddLocation(NPC, 1348.8, 11.18, -404.96, 2, 0)
	MovementLoopAddLocation(NPC, 1361.97, 5.68, -400.68, 2, 0)
	MovementLoopAddLocation(NPC, 1370.93, 0.99, -399.23, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 1370.93, 0.99, -399.23, 2, 0)
	MovementLoopAddLocation(NPC, 1362.97, 5.74, -401.92, 2, 0)
	MovementLoopAddLocation(NPC, 1349.64, 11.02, -405.23, 2, 0)
	MovementLoopAddLocation(NPC, 1341.68, 12.89, -406.08, 2, 0)
	MovementLoopAddLocation(NPC, 1330.8, 13.9, -406.99, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 1330.8, 13.9, -406.99, 2, 0)
end