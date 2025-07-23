--[[
    Script Name    : SpawnScripts/Blackburrow/acragratPatrol2.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.07.22 08:07:14
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
	MovementLoopAddLocation(NPC, -7.02, -7.46, -62.23, 2, 0)
	MovementLoopAddLocation(NPC, -5.1, -7.38, -62.84, 2, 0)
	MovementLoopAddLocation(NPC, 0.42, -7.15, -61.92, 2, 0)
	MovementLoopAddLocation(NPC, 3.03, -6.82, -61.85, 2, 0)
	MovementLoopAddLocation(NPC, 3.03, -6.82, -61.85, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 0, -7.13, -61.45, 2, 0)
	MovementLoopAddLocation(NPC, -2.19, -7.32, -62.02, 2, 0)
	MovementLoopAddLocation(NPC, -2.19, -7.32, -62.02, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 1.21, -7.01, -61.33, 2, 0)
	MovementLoopAddLocation(NPC, 1.21, -7.01, -61.33, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -1.63, -7.28, -62.5, 2, 0)
	MovementLoopAddLocation(NPC, -7.02, -7.46, -62.23, 2, 0)
	MovementLoopAddLocation(NPC, -7.02, -7.46, -62.23, 2, MakeRandomInt(8,15))
end
