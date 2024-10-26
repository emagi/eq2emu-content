--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aFirerockgiantCanyonPassPatrol.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.28 07:09:33
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
	MovementLoopAddLocation(NPC, 189.45, -1.02, 590.96, 2, 0)
	MovementLoopAddLocation(NPC, 150.44, -1.23, 577.7, 2, 0)
	MovementLoopAddLocation(NPC, 121.79, -1.63, 553.86, 2, 0)
	MovementLoopAddLocation(NPC, 111.16, -1.75, 537.36, 2, 0)
	MovementLoopAddLocation(NPC, 104.48, -1.73, 511.38, 2, 0)
	MovementLoopAddLocation(NPC, 105.22, -1.56, 489.82, 2, 0)
	MovementLoopAddLocation(NPC, 97.16, -1.65, 468.89, 2, 0)
	MovementLoopAddLocation(NPC, 89.11, -1.63, 463.13, 2, 0)
	MovementLoopAddLocation(NPC, 44.07, -1.57, 455.9, 2, 0)
	MovementLoopAddLocation(NPC, -6.35, -1.24, 468.71, 2, 0)
	MovementLoopAddLocation(NPC, -37.92, -1.27, 486.23, 2, 0)
	MovementLoopAddLocation(NPC, -112.16, -1.31, 547.92, 2, 0)
	MovementLoopAddLocation(NPC, -125.43, -1.56, 556.01, 2, 0)
	MovementLoopAddLocation(NPC, -142.58, -1.32, 560.49, 2, 0)
	MovementLoopAddLocation(NPC, -119.62, -1.46, 553.58, 2, 0)
	MovementLoopAddLocation(NPC, -24.29, -1.23, 477.06, 2, 0)
	MovementLoopAddLocation(NPC, 22.91, -1.52, 458.76, 2, 0)
	MovementLoopAddLocation(NPC, 53.57, -1.85, 456.16, 2, 0)
	MovementLoopAddLocation(NPC, 92.63, -1.67, 465.01, 2, 0)
	MovementLoopAddLocation(NPC, 101.63, -1.63, 478.44, 2, 0)
	MovementLoopAddLocation(NPC, 103.21, -1.57, 490.03, 2, 0)
	MovementLoopAddLocation(NPC, 104.91, -1.79, 514.4, 2, 0)
	MovementLoopAddLocation(NPC, 110.5, -1.8, 535.5, 2, 0)
	MovementLoopAddLocation(NPC, 132.62, -1.64, 566.62, 2, 0)
	MovementLoopAddLocation(NPC, 147.18, -1.31, 576.9, 2, 0)
	MovementLoopAddLocation(NPC, 189.45, -1.02, 590.96, 2, 0)
end