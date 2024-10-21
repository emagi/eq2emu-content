--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aSkindancersentryBridge.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.10.09 05:10:41
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    --AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 332.34, -1.17, 1081.96, 2, 0)
	MovementLoopAddLocation(NPC, 345.14, -1.11, 1057.42, 2, 0)
	MovementLoopAddLocation(NPC, 345.14, -1.11, 1057.42, 2, 0)
	MovementLoopAddLocation(NPC, 332.34, -1.17, 1081.96, 2, 0)
	MovementLoopAddLocation(NPC, 332.34, -1.17, 1081.96, 2, 0)
end
