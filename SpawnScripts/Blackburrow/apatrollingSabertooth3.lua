--[[
    Script Name    : SpawnScripts/Blackburrow/apatrollingSabertooth3.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.07.25 07:07:18
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
	MovementLoopAddLocation(NPC, -13.63, -11.41, -25.55, 2, 0)
	MovementLoopAddLocation(NPC, -12.28, -10.28, -33.03, 2, 0)
	MovementLoopAddLocation(NPC, -8.53, -8.13, -39.45, 2, 0)
	MovementLoopAddLocation(NPC, -4.41, -6.75, -40.47, 2, 0)
	MovementLoopAddLocation(NPC, -0.37, -5.62, -39.3, 2, 0)
	MovementLoopAddLocation(NPC, 1.27, -4.76, -36.1, 2, 0)
	MovementLoopAddLocation(NPC, 1.06, -4.13, -33.07, 2, 0)
	MovementLoopAddLocation(NPC, -3.82, -2.58, -29.46, 2, 0)
	MovementLoopAddLocation(NPC, -9.17, -0.51, -26.21, 2, 0)
	MovementLoopAddLocation(NPC, -10.51, 0.6, -23.71, 2, 0)
	MovementLoopAddLocation(NPC, -10.41, 0.89, -20.71, 2, 0)
	MovementLoopAddLocation(NPC, -7.55, 0.91, -19.88, 2, 0)
	MovementLoopAddLocation(NPC, -5.37, 0.66, -19.54, 2, 0)
	MovementLoopAddLocation(NPC, -7.68, 0.91, -20.09, 2, 0)
	MovementLoopAddLocation(NPC, -10.5, 0.89, -20.41, 2, 0)
	MovementLoopAddLocation(NPC, -10.04, 0.59, -23.63, 2, 0)
	MovementLoopAddLocation(NPC, -7.78, -1.13, -26.88, 2, 0)
	MovementLoopAddLocation(NPC, 0.16, -3.84, -31.59, 2, 0)
	MovementLoopAddLocation(NPC, 1.56, -4.38, -34.06, 2, 0)
	MovementLoopAddLocation(NPC, 1.74, -4.8, -36.46, 2, 0)
	MovementLoopAddLocation(NPC, -0.25, -5.66, -39.58, 2, 0)
	MovementLoopAddLocation(NPC, -2.88, -6.34, -40.22, 2, 0)
	MovementLoopAddLocation(NPC, -7.43, -7.85, -39.75, 2, 0)
	MovementLoopAddLocation(NPC, -9.49, -8.56, -38.5, 2, 0)
	MovementLoopAddLocation(NPC, -12.41, -10.21, -33.42, 2, 0)
	MovementLoopAddLocation(NPC, -13.63, -10.87, -30.46, 2, 0)
end
