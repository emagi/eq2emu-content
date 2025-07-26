--[[
    Script Name    : SpawnScripts/NektulosClassic/aDeadlymistgrinninP1.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.05.27 09:05:43
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
    AddTimer(NPC, 6000, "waypoints")
    IdleAlert(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 440.39, 25.28, -1437.31, 2, 0)
	MovementLoopAddLocation(NPC, 444.23, 23.49, -1429.96, 2, 0)
	MovementLoopAddLocation(NPC, 444.48, 22.64, -1424.48, 2, 0)
	MovementLoopAddLocation(NPC, 444.23, 23.17, -1415.47, 2, 0)
	MovementLoopAddLocation(NPC, 443.03, 21.75, -1407.43, 2, 0)
	MovementLoopAddLocation(NPC, 437.75, 11.68, -1380.68, 2, 0)
	MovementLoopAddLocation(NPC, 439.87, 11.65, -1378.66, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 439.87, 11.65, -1378.66, 2, 0)
	MovementLoopAddLocation(NPC, 438.94, 11.89, -1380.76, 2, 0)
	MovementLoopAddLocation(NPC, 442.32, 19, -1399.38, 2, 0)
	MovementLoopAddLocation(NPC, 444.18, 22.93, -1414.59, 2, 0)
	MovementLoopAddLocation(NPC, 444.91, 23.27, -1429.03, 2, 0)
	MovementLoopAddLocation(NPC, 440.39, 25.28, -1437.31, 2, 0)
	MovementLoopAddLocation(NPC, 440.39, 25.28, -1437.31, 2, MakeRandomInt(8,15))
end
