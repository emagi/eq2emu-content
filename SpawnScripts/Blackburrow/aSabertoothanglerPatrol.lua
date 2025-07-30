--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothanglerPatrol.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.07.15 12:07:04
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
    BlackburrowGnoll(NPC)
    IdleBored(NPC)
    AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -15.54, -1.79, -6.97, 2, 0)
	MovementLoopAddLocation(NPC, -15.08, -1.57, -10.89, 2, 0)
	MovementLoopAddLocation(NPC, -15.45, -1.24, -15.33, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -15.45, -1.24, -15.33, 2, 0)
	MovementLoopAddLocation(NPC, -14.98, -1.56, -12.9, 2, 0)
	MovementLoopAddLocation(NPC, -15.06, -1.57, -10.82, 2, 0)
	MovementLoopAddLocation(NPC, -15.06, -1.57, -10.82, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -15.34, -1.43, -13.77, 2, 0)
	MovementLoopAddLocation(NPC, -15.2, -1.37, -15.1, 2, 0)
	MovementLoopAddLocation(NPC, -15.2, -1.37, -15.1, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, -14.93, -1.52, -10.74, 2, 0)
	MovementLoopAddLocation(NPC, -15.54, -1.79, -6.97, 2, 0)
	MovementLoopAddLocation(NPC, -15.54, -1.79, -6.97, 2, MakeRandomInt(8,15))
end