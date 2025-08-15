--[[
    Script Name    : SpawnScripts/Blackburrow/ablightfangspider1.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.08.14 07:08:49
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
	MovementLoopAddLocation(NPC, -21.26, -35.01, -37.95, 2, 0)
	MovementLoopAddLocation(NPC, -23.2, -36.64, -33.16, 2, 0)
	MovementLoopAddLocation(NPC, -23.62, -37.99, -26.58, 2, 0)
	MovementLoopAddLocation(NPC, -23.62, -37.99, -26.58, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -23.87, -36.9, -32.45, 2, 0)
	MovementLoopAddLocation(NPC, -23.87, -36.9, -32.45, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -22.25, -35.85, -35.35, 2, 0)
	MovementLoopAddLocation(NPC, -22.25, -35.85, -35.35, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -20.9, -34.75, -38.86, 2, 0)
	MovementLoopAddLocation(NPC, -20.9, -34.75, -38.86, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -22.19, -36.8, -31.4, 2, 0)
	MovementLoopAddLocation(NPC, -22.19, -36.8, -31.4, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -20.28, -35.31, -37.6, 2, 0)
	MovementLoopAddLocation(NPC, -20.28, -35.31, -37.6, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -18.92, -35.82, -35.19, 2, 0)
	MovementLoopAddLocation(NPC, -18.92, -35.82, -35.19, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -18.22, -35.04, -38.83, 2, 0)
	MovementLoopAddLocation(NPC, -18.22, -35.04, -38.83, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -21.26, -35.01, -37.95, 2, 0)
	MovementLoopAddLocation(NPC, -21.26, -35.01, -37.95, 2, MakeRandomInt(8,15))
end
