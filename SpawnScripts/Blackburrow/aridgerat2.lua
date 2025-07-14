--[[
    Script Name    : SpawnScripts/Blackburrow/aridgerat2.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.07.13 07:07:57
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
	MovementLoopAddLocation(NPC, 62.35, -1.12, 11.58, 2, 0)
	MovementLoopAddLocation(NPC, 57.72, -1.06, 8.91, 2, 0)
	MovementLoopAddLocation(NPC, 53.68, -0.14, 7.69, 2, 0)
	MovementLoopAddLocation(NPC, 53.68, -0.14, 7.69, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 59.38, -1.13, 11.14, 2, 0)
	MovementLoopAddLocation(NPC, 68.18, -0.53, 15.16, 2, 0)
	MovementLoopAddLocation(NPC, 68.18, -0.53, 15.16, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 59.86, -1.08, 10.37, 2, 0)
	MovementLoopAddLocation(NPC, 59.86, -1.08, 10.37, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 62.35, -1.12, 11.58, 2, 0)
	MovementLoopAddLocation(NPC, 62.35, -1.12, 11.58, 2, MakeRandomInt(8, 15))
end
