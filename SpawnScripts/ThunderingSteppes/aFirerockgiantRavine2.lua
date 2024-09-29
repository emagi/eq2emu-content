--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aFirerockgiantRavine2.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.28 04:09:38
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
	MovementLoopAddLocation(NPC, 722.06, -21.84, 867.51, 2, 0)
	MovementLoopAddLocation(NPC, 744.97, -22.72, 880.99, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 744.97, -22.72, 880.99, 2, 0)
	MovementLoopAddLocation(NPC, 737.38, -21.97, 869.87, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 737.38, -21.97, 869.87, 2, 0)
	MovementLoopAddLocation(NPC, 748.96, -22.42, 887.16, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 748.96, -22.42, 887.16, 2, 0)
	MovementLoopAddLocation(NPC, 730.64, -22.1, 874.17, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 730.64, -22.1, 874.17, 2, 0)
	MovementLoopAddLocation(NPC, 712.84, -21.3, 875.32, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 712.84, -21.3, 875.32, 2, 0)
	MovementLoopAddLocation(NPC, 722.06, -21.84, 867.51, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 722.06, -21.84, 867.51, 2, 0)
end