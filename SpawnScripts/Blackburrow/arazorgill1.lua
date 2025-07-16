--[[
    Script Name    : SpawnScripts/Blackburrow/arazorgill1.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.07.15 12:07:04
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
	MovementLoopAddLocation(NPC, -15.47, -1.34, -15.01, 2, 0)
	MovementLoopAddLocation(NPC, -14.87, -1.49, -12.03, 2, 0)
	MovementLoopAddLocation(NPC, -15.31, -1.61, -9.49, 2, 0)
	MovementLoopAddLocation(NPC, -15.64, -1.79, -6.54, 2, 0)
	MovementLoopAddLocation(NPC, -15.26, -1.61, -8.03, 2, 0)
	MovementLoopAddLocation(NPC, -15.79, -1.67, -10.65, 2, 0)
	MovementLoopAddLocation(NPC, -15.38, -1.71, -11.94, 2, 0)
end
