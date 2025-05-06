--[[
    Script Name    : SpawnScripts/NektulosClassic/aNeriushermit2.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.05.05 11:05:51
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
	MovementLoopAddLocation(NPC, 535.58, -0.03, -349.71, 2, 0)
	MovementLoopAddLocation(NPC, 520.56, -0.12, -353.69, 2, 0)
	MovementLoopAddLocation(NPC, 510.66, -0.02, -353.78, 2, 0)
	MovementLoopAddLocation(NPC, 488, -0.03, -349.18, 2, 0)
	MovementLoopAddLocation(NPC, 477.45, 0.12, -350.98, 2, 0)
	MovementLoopAddLocation(NPC, 471.62, 0.67, -355.15, 2, 0)
	MovementLoopAddLocation(NPC, 465.86, 0.1, -366.2, 2, 0)
	MovementLoopAddLocation(NPC, 464.18, 0.03, -382.36, 2, 0)
	MovementLoopAddLocation(NPC, 469.77, -0.02, -418.45, 2, 0)
	MovementLoopAddLocation(NPC, 471.46, 0, -449.3, 2, 0)
	MovementLoopAddLocation(NPC, 469.6, -0.02, -417.46, 2, 0)
	MovementLoopAddLocation(NPC, 463.92, 0.09, -388.95, 2, 0)
	MovementLoopAddLocation(NPC, 464.23, -0.01, -372.69, 2, 0)
	MovementLoopAddLocation(NPC, 467.22, 0.23, -362.62, 2, 0)
	MovementLoopAddLocation(NPC, 470.14, 0.69, -355.64, 2, 0)
	MovementLoopAddLocation(NPC, 475.64, 0.14, -351.88, 2, 0)
	MovementLoopAddLocation(NPC, 488.85, -0.03, -349.58, 2, 0)
	MovementLoopAddLocation(NPC, 511.23, -0.02, -353.5, 2, 0)
	MovementLoopAddLocation(NPC, 518.8, -0.11, -353.41, 2, 0)
end
