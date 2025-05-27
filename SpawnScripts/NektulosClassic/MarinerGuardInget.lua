--[[
    Script Name    : SpawnScripts/NektulosClassic/MarinerGuardInget.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.05.26 07:05:46
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
	MovementLoopAddLocation(NPC, 784.75, 2.43, -158.74, 2, 0)
	MovementLoopAddLocation(NPC, 772.49, 2.43, -154.68, 2, 0)
	MovementLoopAddLocation(NPC, 760.44, 2.43, -149.32, 2, 0)
	MovementLoopAddLocation(NPC, 760.44, 2.43, -149.32, 2, 15)
	MovementLoopAddLocation(NPC, 771.19, 2.59, -154.11, 2, 0)
	MovementLoopAddLocation(NPC, 783.61, 2.43, -157.72, 2, 0)
	MovementLoopAddLocation(NPC, 787.17, 2.43, -158.44, 2, 0)
	MovementLoopAddLocation(NPC, 787.17, 2.43, -158.44, 2, 15)
end