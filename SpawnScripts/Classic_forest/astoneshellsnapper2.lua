--[[
    Script Name    : SpawnScripts/Classic_forest/astoneshellsnapper2.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.12 03:10:27
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
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
	MovementLoopAddLocation(NPC, 967.24, -24.25, -579.78, 1, 0)
	MovementLoopAddLocation(NPC, 963.04, -24.19, -578.36, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 963.04, -24.19, -578.36, 1, 0)
	MovementLoopAddLocation(NPC, 963.13, -26.56, -583.67, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 963.13, -26.56, -583.67, 1, 0)
	MovementLoopAddLocation(NPC, 968.03, -26.46, -584.49, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 968.03, -26.46, -584.49, 1, 0)
	MovementLoopAddLocation(NPC, 970.06, -25.19, -582.52, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 970.06, -25.19, -582.52, 1, 0)
	MovementLoopAddLocation(NPC, 975.37, -25.45, -584.33, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 975.37, -25.45, -584.33, 1, 0)
	MovementLoopAddLocation(NPC, 978.05, -24.04, -583.01, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 978.05, -24.04, -583.01, 1, 0)
	MovementLoopAddLocation(NPC, 973.35, -24.34, -581.77, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 973.35, -24.34, -581.77, 1, 0)
	MovementLoopAddLocation(NPC, 968.84, -23.41, -578.59, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 968.84, -23.41, -578.59, 1, 0)
	MovementLoopAddLocation(NPC, 967.24, -24.25, -579.78, 1, math.random(5,10))
end

