--[[
    Script Name    : SpawnScripts/Blackburrow/aridgerat3.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.07.13 07:07:14
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
	MovementLoopAddLocation(NPC, 54.89, -0.52, 8.35, 2, 0)
	MovementLoopAddLocation(NPC, 60.02, -1.12, 11.58, 2, 0)
	MovementLoopAddLocation(NPC, 63.94, -1.06, 12.16, 2, 0)
	MovementLoopAddLocation(NPC, 68.78, -0.52, 13.8, 2, 0)
	MovementLoopAddLocation(NPC, 68.78, -0.52, 13.8, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 63.68, -1.03, 11.18, 2, 0)
	MovementLoopAddLocation(NPC, 56.2, -0.91, 10.03, 2, 0)
	MovementLoopAddLocation(NPC, 56.2, -0.91, 10.03, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 60.29, -1.11, 11.86, 2, 0)
	MovementLoopAddLocation(NPC, 60.29, -1.11, 11.86, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 54.89, -0.52, 8.35, 2, 0)
	MovementLoopAddLocation(NPC, 54.89, -0.52, 8.35, 2, MakeRandomInt(8,15))
end