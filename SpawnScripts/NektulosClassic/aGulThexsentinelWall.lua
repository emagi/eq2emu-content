--[[
    Script Name    : SpawnScripts/NektulosClassic/aGulThexsentinelWall.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.05.22 11:05:02
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
	MovementLoopAddLocation(NPC, 680.67, 10.5, -704.03, 2, 0)
	MovementLoopAddLocation(NPC, 694.3, 10.5, -703.98, 2, 0)
	MovementLoopAddLocation(NPC, 694.48, 10.5, -711, 2, 0)
	MovementLoopAddLocation(NPC, 701.12, 10.5, -711.27, 2, 0)
	MovementLoopAddLocation(NPC, 701.42, 10.5, -726.56, 2, 0)
	MovementLoopAddLocation(NPC, 694.39, 10.5, -726.75, 2, 0)
	MovementLoopAddLocation(NPC, 694.3, 10.5, -733.91, 2, 0)
	MovementLoopAddLocation(NPC, 680.4, 10.5, -733.7, 2, 0)
	MovementLoopAddLocation(NPC, 694.18, 10.5, -733.71, 2, 0)
	MovementLoopAddLocation(NPC, 694.3, 10.5, -726.51, 2, 0)
	MovementLoopAddLocation(NPC, 701.51, 10.5, -726.1, 2, 0)
	MovementLoopAddLocation(NPC, 701.27, 10.5, -711.39, 2, 0)
	MovementLoopAddLocation(NPC, 694.15, 10.5, -711.13, 2, 0)
	MovementLoopAddLocation(NPC, 694.1, 10.5, -704.07, 2, 0)
end
