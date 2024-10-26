--[[
    Script Name    : SpawnScripts/SummonerPets/BubblesPath.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.20 03:04:51
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
	MovementLoopAddLocation(NPC, 59.29, -1.08, -69.27, 2, 0)
	MovementLoopAddLocation(NPC, 57.65, -1.08, -37.39, 2, 0)
	MovementLoopAddLocation(NPC, 39.19, -1.08, -8.24, 2, 0)
	MovementLoopAddLocation(NPC, 32.29, -1.08, -8.7, 2, MakeRandomInt(5,10))
	MovementLoopAddLocation(NPC, 32.29, -1.08, -8.7, 2, 0)
	MovementLoopAddLocation(NPC, 39.51, -1.08, -7.22, 2, 0)
	MovementLoopAddLocation(NPC, 32.39, -1.08, 17.13, 2, 0)
	MovementLoopAddLocation(NPC, 4.05, -1.08, 25.12, 2, 0)
	MovementLoopAddLocation(NPC, -13.12, -1.08, -2.67, 2, 0)
	MovementLoopAddLocation(NPC, -2.86, -1.08, -35.86, 2, 0)
	MovementLoopAddLocation(NPC, 18.65, -1.08, -61.29, 2, 0)
	MovementLoopAddLocation(NPC, 59.29, -1.08, -69.27, 2, 0)
end
