--[[
    Script Name    : SpawnScripts/ThunderingSteppes/anearthrumblerCave1.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.10.06 06:10:07
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
	MovementLoopAddLocation(NPC, 749.41, -11.2, 1128.86, 2, 0)
	MovementLoopAddLocation(NPC, 746.52, -11.72, 1140.06, 2, 0)
	MovementLoopAddLocation(NPC, 745.72, -13.98, 1147.89, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 745.72, -13.98, 1147.89, 2, 0)
	MovementLoopAddLocation(NPC, 747.04, -11.88, 1140.13, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 747.04, -11.88, 1140.13, 2, 0)
	MovementLoopAddLocation(NPC, 749.41, -11.2, 1128.86, 2, MakeRandomInt(8,15))
end