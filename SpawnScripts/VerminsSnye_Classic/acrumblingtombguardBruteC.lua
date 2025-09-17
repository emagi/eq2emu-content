--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/acrumblingtombguardBruteC.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.16 08:09:29
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
	MovementLoopAddLocation(NPC, 9, 0.88, 8.47, 2, 0)
	MovementLoopAddLocation(NPC, 10.54, 0.62, 7.29, 2, 0)
	MovementLoopAddLocation(NPC, 11.6, 0.32, 5.34, 2, 0)
	MovementLoopAddLocation(NPC, 11.6, 0.32, 5.34, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 9.71, 0.78, 7.66, 2, 0)
	MovementLoopAddLocation(NPC, 6.58, 1.24, 10.09, 2, 0)
	MovementLoopAddLocation(NPC, 3.3, 1.68, 11.66, 2, 0)
	MovementLoopAddLocation(NPC, 0.62, 2.04, 11.81, 2, 0)
	MovementLoopAddLocation(NPC, 0.62, 2.04, 11.81, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 4.17, 1.61, 11.9, 2, 0)
	MovementLoopAddLocation(NPC, 4.17, 1.61, 11.9, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 3.87, 1.58, 10.69, 2, 0)
	MovementLoopAddLocation(NPC, 3.87, 1.58, 10.69, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 5.91, 1.37, 10.34, 2, 0)
	MovementLoopAddLocation(NPC, 7.55, 1.07, 9.73, 2, 0)
	MovementLoopAddLocation(NPC, 10.56, 0.62, 6.89, 2, 0)
	MovementLoopAddLocation(NPC, 10.56, 0.62, 6.89, 2, MakeRandomInt(8,15))
end