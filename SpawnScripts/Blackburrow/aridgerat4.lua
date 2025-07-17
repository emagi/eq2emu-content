--[[
    Script Name    : SpawnScripts/Blackburrow/aridgerat4.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.07.16 04:07:53
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
	MovementLoopAddLocation(NPC, 31.23, 1.24, -39.22, 2, 0)
	MovementLoopAddLocation(NPC, 32.58, 0.56, -43.02, 2, 0)
	MovementLoopAddLocation(NPC, 35.97, -0.3, -45.77, 2, 0)
	MovementLoopAddLocation(NPC, 37.65, -0.74, -48.1, 2, 0)
	MovementLoopAddLocation(NPC, 37.65, -0.74, -48.1, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 35.39, -0.03, -43.71, 2, 0)
	MovementLoopAddLocation(NPC, 35.39, -0.03, -43.71, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 34.89, 0.06, -44.52, 2, 0)
	MovementLoopAddLocation(NPC, 31.48, 0.55, -43.37, 2, 0)
	MovementLoopAddLocation(NPC, 31.48, 0.55, -43.37, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 33.82, 0.23, -44.13, 2, 0)
	MovementLoopAddLocation(NPC, 36.89, -0.53, -46.76, 2, 0)
	MovementLoopAddLocation(NPC, 36.89, -0.53, -46.76, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 32.7, 0.5, -43.31, 2, 0)
	MovementLoopAddLocation(NPC, 31.23, 1.24, -39.22, 2, 0)
	MovementLoopAddLocation(NPC, 31.23, 1.24, -39.22, 2, MakeRandomInt(8,15))
end
