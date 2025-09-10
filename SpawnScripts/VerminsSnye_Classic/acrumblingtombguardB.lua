--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/acrumblingtombguardB.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.09 08:09:13
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
	MovementLoopAddLocation(NPC, 161.51, -3.43, -207.25, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 163.98, -3.1, -208.79, 2, 0)
	MovementLoopAddLocation(NPC, 165.55, -2.81, -209.33, 2, 0)
	MovementLoopAddLocation(NPC, 165.55, -2.81, -209.33, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 162.89, -3.26, -208.17, 2, 0)
	MovementLoopAddLocation(NPC, 160.91, -3.6, -206.45, 2, 0)
	MovementLoopAddLocation(NPC, 158.35, -4.2, -203, 2, 0)
	MovementLoopAddLocation(NPC, 157.94, -4.5, -200.6, 2, 0)
	MovementLoopAddLocation(NPC, 157.94, -4.5, -200.6, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 158.52, -4.04, -204.27, 2, 0)
	MovementLoopAddLocation(NPC, 158.52, -4.04, -204.27, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 160.21, -3.74, -206.2, 2, 0)
	MovementLoopAddLocation(NPC, 165.42, -2.94, -209.08, 2, 0)
	MovementLoopAddLocation(NPC, 165.42, -2.94, -209.08, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 164.04, -3.1, -208.83, 2, 0)
end

