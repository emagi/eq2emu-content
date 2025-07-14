--[[
    Script Name    : SpawnScripts/Blackburrow/aridgerat1.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.07.13 07:07:43
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
	MovementLoopAddLocation(NPC, 67.72, -0.51, 14.08, 2, 0)
	MovementLoopAddLocation(NPC, 64.07, -1.02, 11.72, 2, 0)
	MovementLoopAddLocation(NPC, 59.54, -1.13, 10.54, 2, 0)
	MovementLoopAddLocation(NPC, 53.04, 0.03, 7.79, 2, 0)
	MovementLoopAddLocation(NPC, 53.04, 0.03, 7.79, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 58.35, -1.15, 10.71, 2, 0)
	MovementLoopAddLocation(NPC, 65.28, -0.9, 12.05, 2, 0)
	MovementLoopAddLocation(NPC, 67.72, -0.51, 14.08, 2, 0)
	MovementLoopAddLocation(NPC, 67.72, -0.51, 14.08, 2, MakeRandomInt(8,15))
end