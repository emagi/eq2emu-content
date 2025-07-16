--[[
    Script Name    : SpawnScripts/Blackburrow/apatrollingSabertooth2.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.07.15 12:07:12
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
	MovementLoopAddLocation(NPC, -19.55, 7.31, -16.37, 2, 0)
	MovementLoopAddLocation(NPC, -19.72, 7.29, -17.58, 2, 0)
	MovementLoopAddLocation(NPC, -21.41, 6.99, -19.16, 2, 0)
	MovementLoopAddLocation(NPC, -22.57, 6.75, -22.74, 2, 0)
	MovementLoopAddLocation(NPC, -24.83, 6.24, -24.82, 2, 0)
	MovementLoopAddLocation(NPC, -28.88, 5.39, -24.8, 2, 0)
	MovementLoopAddLocation(NPC, -32.13, 4.66, -25.19, 2, 0)
	MovementLoopAddLocation(NPC, -35.8, 3.71, -24.89, 2, 0)
	MovementLoopAddLocation(NPC, -40.46, 3.25, -22.2, 2, 0)
	MovementLoopAddLocation(NPC, -43.12, 2.77, -19.88, 2, 0)
	MovementLoopAddLocation(NPC, -44.39, 1.96, -16.71, 2, 0)
	MovementLoopAddLocation(NPC, -44.25, 0.58, -10.65, 2, 0)
	MovementLoopAddLocation(NPC, -43.3, 0.34, -9.93, 2, 0)
	MovementLoopAddLocation(NPC, -40.84, 0.04, -9.69, 2, 0)
	MovementLoopAddLocation(NPC, -42.64, 0.23, -9.48, 2, 0)
	MovementLoopAddLocation(NPC, -44.14, 0.62, -11.03, 2, 0)
	MovementLoopAddLocation(NPC, -44.51, 1.56, -15.36, 2, 0)
	MovementLoopAddLocation(NPC, -44.08, 2.3, -18.09, 2, 0)
	MovementLoopAddLocation(NPC, -43.01, 2.85, -20.53, 2, 0)
	MovementLoopAddLocation(NPC, -36.53, 3.61, -24.65, 2, 0)
	MovementLoopAddLocation(NPC, -34.58, 4.03, -25.01, 2, 0)
	MovementLoopAddLocation(NPC, -28.06, 5.57, -24.95, 2, 0)
	MovementLoopAddLocation(NPC, -25.1, 6.2, -24.92, 2, 0)
	MovementLoopAddLocation(NPC, -23.11, 6.67, -23.04, 2, 0)
	MovementLoopAddLocation(NPC, -21.49, 6.97, -19.38, 2, 0)
	MovementLoopAddLocation(NPC, -19.72, 7.29, -17.97, 2, 0)
end
