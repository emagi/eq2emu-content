--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aFirerockgoliathCraterMine.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.28 05:09:09
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    HillGiantLesser(NPC, Spawn)
    waypoints(NPC)
    
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 396.27, -1.03, 995.35, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 412.67, -1.01, 986.97, 2, 0)
	MovementLoopAddLocation(NPC, 430.39, -0.89, 971.83, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 430.39, -0.89, 971.83, 2, 0)
	MovementLoopAddLocation(NPC, 422.7, -0.87, 974.73, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 422.7, -0.87, 974.73, 2, 0)
	MovementLoopAddLocation(NPC, 396.27, -1.03, 995.35, 2, 0)
end