--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothsentry4.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.08.12 09:08:21
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
	MovementLoopAddLocation(NPC, -44.55, -18.11, -6.37, 2, 0)
	MovementLoopAddLocation(NPC, -43.56, -18.41, -14.15, 2, 0)
	MovementLoopAddLocation(NPC, -43.71, -18.4, -19.62, 2, 0)
	MovementLoopAddLocation(NPC, -43.95, -18.71, -27.21, 2, 0)
	MovementLoopAddLocation(NPC, -40.15, -19.05, -35.11, 2, 0)
	MovementLoopAddLocation(NPC, -37.89, -19.59, -39.15, 2, 0)
	MovementLoopAddLocation(NPC, -38.04, -20.49, -44.65, 2, 0)
	MovementLoopAddLocation(NPC, -42.43, -22.71, -51.57, 2, 0)
	MovementLoopAddLocation(NPC, -43.76, -24.89, -55.45, 2, 0)
	MovementLoopAddLocation(NPC, -43.69, -22.66, -51.78, 2, 0)
	MovementLoopAddLocation(NPC, -38.46, -20.78, -45.74, 2, 0)
	MovementLoopAddLocation(NPC, -38.02, -20, -42.29, 2, 0)
	MovementLoopAddLocation(NPC, -40.1, -19.03, -34.79, 2, 0)
	MovementLoopAddLocation(NPC, -43.32, -18.77, -29.25, 2, 0)
	MovementLoopAddLocation(NPC, -42.46, -18.61, -22.67, 2, 0)
	MovementLoopAddLocation(NPC, -43.37, -18.56, -15.58, 2, 0)
end
