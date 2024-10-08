--[[
    Script Name    : SpawnScripts/ThunderingSteppes/anearthrumblerCave3.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.10.06 06:10:22
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
	MovementLoopAddLocation(NPC, 749.03, -26.91, 1069.58, 2, 0)
	MovementLoopAddLocation(NPC, 748.98, -23.47, 1083.13, 2, 0)
	MovementLoopAddLocation(NPC, 751.29, -22.98, 1084.65, 2, 0)
	MovementLoopAddLocation(NPC, 755.36, -23.44, 1082.75, 2, 0)
	MovementLoopAddLocation(NPC, 770.31, -27.12, 1068.87, 2, 0)
	MovementLoopAddLocation(NPC, 754.1, -22.96, 1084.58, 2, 0)
	MovementLoopAddLocation(NPC, 750.64, -23.26, 1083.43, 2, 0)
	MovementLoopAddLocation(NPC, 749.29, -24.19, 1080.65, 2, 0)
	MovementLoopAddLocation(NPC, 749.03, -26.91, 1069.58, 2, 0)
end