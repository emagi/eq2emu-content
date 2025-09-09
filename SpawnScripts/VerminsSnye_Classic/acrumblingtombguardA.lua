--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/acrumblingtombguardA.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.08 08:09:41
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
	MovementLoopAddLocation(NPC, 178.08, -0.95, -205.75, 2, 0)
	MovementLoopAddLocation(NPC, 179.95, -0.51, -203.64, 2, 0)
	MovementLoopAddLocation(NPC, 181.18, -0.12, -200.63, 2, 0)
	MovementLoopAddLocation(NPC, 181.18, -0.12, -200.63, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 179.16, -0.79, -205.31, 2, 0)
	MovementLoopAddLocation(NPC, 175.08, -1.4, -208.62, 2, 0)
	MovementLoopAddLocation(NPC, 170.64, -2.01, -209.79, 2, 0)
	MovementLoopAddLocation(NPC, 168.41, -2.34, -209.45, 2, 0)
	MovementLoopAddLocation(NPC, 168.41, -2.34, -209.45, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 172.09, -1.84, -209.29, 2, 0)
	MovementLoopAddLocation(NPC, 176.72, -1.21, -207.21, 2, 0)
	MovementLoopAddLocation(NPC, 179.9, -0.46, -203.23, 2, 0)
	MovementLoopAddLocation(NPC, 179.9, -0.46, -203.23, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 175.89, -1.29, -207.79, 2, 0)
	MovementLoopAddLocation(NPC, 175.89, -1.29, -207.79, 2, MakeRandomInt(8,15))
end