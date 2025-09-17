--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/acrumblingtombguardBruteB.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.16 08:09:42
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
	MovementLoopAddLocation(NPC, -7.84, 3.21, 8.7, 2, 0)
	MovementLoopAddLocation(NPC, -4.1, 2.74, 10.81, 2, 0)
	MovementLoopAddLocation(NPC, -1.18, 2.29, 11.32, 2, 0)
	MovementLoopAddLocation(NPC, -1.18, 2.29, 11.32, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -4.76, 2.74, 11.23, 2, 0)
	MovementLoopAddLocation(NPC, -4.76, 2.74, 11.23, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -2.34, 2.44, 12.48, 2, 0)
	MovementLoopAddLocation(NPC, -2.34, 2.44, 12.48, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -6.25, 2.99, 10.23, 2, 0)
	MovementLoopAddLocation(NPC, -9.4, 3.52, 7.39, 2, 0)
	MovementLoopAddLocation(NPC, -11.73, 4.46, 1.57, 2, 0)
	MovementLoopAddLocation(NPC, -10.62, 4.21, 3.31, 2, 0)
	MovementLoopAddLocation(NPC, -10.62, 4.21, 3.31, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -9.57, 3.52, 7.2, 2, 0)
	MovementLoopAddLocation(NPC, -5.29, 2.77, 11.25, 2, 0)
	MovementLoopAddLocation(NPC, -5.29, 2.77, 11.25, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -8.84, 3.34, 8.76, 2, 0)
	MovementLoopAddLocation(NPC, -10.24, 3.88, 4.75, 2, 0)
	MovementLoopAddLocation(NPC, -10.24, 3.88, 4.75, 2, MakeRandomInt(8,15))
end