--[[
    Script Name    : SpawnScripts/NektulosClassic/aNeriushermit1.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.05.05 11:05:18
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
	MovementLoopAddLocation(NPC, 538.92, 0.88, -348.31, 2, 0)
	MovementLoopAddLocation(NPC, 548.73, 0.96, -345.58, 2, 0)
	MovementLoopAddLocation(NPC, 557.7, 1.26, -342.65, 2, 0)
	MovementLoopAddLocation(NPC, 571.28, 0.83, -343.79, 2, 0)
	MovementLoopAddLocation(NPC, 585.53, 0.34, -339.11, 2, 0)
	MovementLoopAddLocation(NPC, 586.78, 0, -324.56, 2, 0)
	MovementLoopAddLocation(NPC, 590.84, -0.08, -316.31, 2, 0)
	MovementLoopAddLocation(NPC, 596.67, -0.09, -313.09, 2, 0)
	MovementLoopAddLocation(NPC, 603, -0.23, -312.51, 2, 0)
	MovementLoopAddLocation(NPC, 618.06, -0.27, -315.43, 2, 0)
	MovementLoopAddLocation(NPC, 640.88, 0.72, -311.12, 2, 0)
	MovementLoopAddLocation(NPC, 651.35, -0.05, -305.45, 2, 0)
	MovementLoopAddLocation(NPC, 643.66, 0.63, -310.28, 2, 0)
	MovementLoopAddLocation(NPC, 630.42, 0.09, -314.27, 2, 0)
	MovementLoopAddLocation(NPC, 621.28, -0.24, -315.25, 2, 0)
	MovementLoopAddLocation(NPC, 604.52, -0.26, -312.56, 2, 0)
	MovementLoopAddLocation(NPC, 597.46, -0.1, -312.97, 2, 0)
	MovementLoopAddLocation(NPC, 589.77, 0.01, -317.98, 2, 0)
	MovementLoopAddLocation(NPC, 587.47, 0, -324.13, 2, 0)
	MovementLoopAddLocation(NPC, 586.8, 0.24, -336.63, 2, 0)
	MovementLoopAddLocation(NPC, 579.65, 0.38, -341.57, 2, 0)
	MovementLoopAddLocation(NPC, 570.52, 0.87, -343.22, 2, 0)
	MovementLoopAddLocation(NPC, 558.03, 1.25, -342.36, 2, 0)
end
