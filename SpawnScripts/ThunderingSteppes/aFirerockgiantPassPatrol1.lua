--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aFirerockgiantPassPatrol1.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.26 06:09:09
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    HillGiantLesser(NPC, Spawn)
    AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 883.81, 18.77, 622.66, 2, 0)
	MovementLoopAddLocation(NPC, 900.91, 16.76, 616.42, 2, 0)
	MovementLoopAddLocation(NPC, 923.15, 9.72, 607.74, 2, 0)
	MovementLoopAddLocation(NPC, 932.84, 3.88, 597.67, 2, 0)
	MovementLoopAddLocation(NPC, 951.71, -0.98, 538.95, 2, 0)
	MovementLoopAddLocation(NPC, 940.05, -0.63, 569.79, 2, 0)
	MovementLoopAddLocation(NPC, 934.04, 3.79, 598.08, 2, 0)
	MovementLoopAddLocation(NPC, 905.98, 14.19, 611.42, 2, 0)
	MovementLoopAddLocation(NPC, 883.81, 18.77, 622.66, 2, 0)
end
