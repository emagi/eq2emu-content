--[[
    Script Name    : SpawnScripts/NektulosClassic/MarinerGuardBalstrom.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.05.26 07:05:12
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
	MovementLoopAddLocation(NPC, 777.07, 2.43, -153.32, 2, 15)
	MovementLoopAddLocation(NPC, 777.44, 2.43, -154.63, 2, 0)
	MovementLoopAddLocation(NPC, 789.54, 2.5, -161.54, 2, 0)
	MovementLoopAddLocation(NPC, 791.79, 2.43, -163.55, 2, 0)
	MovementLoopAddLocation(NPC, 799.7, 2.43, -167.3, 2, 15)
	MovementLoopAddLocation(NPC, 799.7, 2.43, -167.3, 2, 0)
	MovementLoopAddLocation(NPC, 791.27, 2.43, -163.65, 2, 0)
	MovementLoopAddLocation(NPC, 787.18, 2.43, -160.06, 2, 0)
	MovementLoopAddLocation(NPC, 782.59, 2.43, -157.61, 2, 0)
	MovementLoopAddLocation(NPC, 781.58, 2.43, -155.87, 2, 0)
	MovementLoopAddLocation(NPC, 777.07, 2.43, -153.32, 2, 0)
	MovementLoopAddLocation(NPC, 777.07, 2.43, -153.32, 2, 0)
end