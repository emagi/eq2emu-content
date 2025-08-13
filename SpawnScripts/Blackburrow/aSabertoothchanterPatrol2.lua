--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothchanterPatrol2.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.08.12 07:08:54
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
	MovementLoopAddLocation(NPC, -56.57, -18.3, 9.09, 2, 0)
	MovementLoopAddLocation(NPC, -52.65, -18.41, 5.08, 2, 0)
	MovementLoopAddLocation(NPC, -49.31, -18.14, 0.46, 2, 0)
	MovementLoopAddLocation(NPC, -46.08, -18.15, -7.01, 2, 0)
	MovementLoopAddLocation(NPC, -45.11, -18.31, -13.75, 2, 0)
	MovementLoopAddLocation(NPC, -45.89, -18.2, -8.94, 2, 0)
	MovementLoopAddLocation(NPC, -49, -18.09, -1.39, 2, 0)
end
