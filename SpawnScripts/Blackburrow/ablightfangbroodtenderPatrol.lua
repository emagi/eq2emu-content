--[[
    Script Name    : SpawnScripts/Blackburrow/ablightfangbroodtenderPatrol.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.08.14 07:08:32
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
	MovementLoopAddLocation(NPC, 21.29, -36.34, -8.32, 2, 0)
	MovementLoopAddLocation(NPC, 15.44, -37.88, -10.7, 2, 0)
	MovementLoopAddLocation(NPC, 11.56, -38.7, -10.07, 2, 0)
	MovementLoopAddLocation(NPC, 8.94, -39.2, -8.62, 2, 0)
	MovementLoopAddLocation(NPC, 6.29, -39.76, -8.31, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 6.29, -39.76, -8.31, 2, 0)
	MovementLoopAddLocation(NPC, 8.53, -39.27, -8.36, 2, 0)
	MovementLoopAddLocation(NPC, 13.17, -38.3, -10.06, 2, 0)
	MovementLoopAddLocation(NPC, 16.1, -37.65, -10.03, 2, 0)
	MovementLoopAddLocation(NPC, 21.29, -36.34, -8.32, 2, 0)
	MovementLoopAddLocation(NPC, 21.29, -36.34, -8.32, 2, MakeRandomInt(8,15))
end