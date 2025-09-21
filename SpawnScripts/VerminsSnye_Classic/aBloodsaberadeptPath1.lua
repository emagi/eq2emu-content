--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/aBloodsaberadeptPath1.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.09.20 02:09:07
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
	MovementLoopAddLocation(NPC, 31.01, -0.18, -161.05, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 27.15, -0.04, -160.33, 2, 0)
	MovementLoopAddLocation(NPC, 27.15, -0.04, -160.33, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 23.83, -0.16, -160.53, 2, 0)
	MovementLoopAddLocation(NPC, 23.83, -0.16, -160.53, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 26.7, 0, -159.57, 2, 0)
	MovementLoopAddLocation(NPC, 29.6, -0.15, -160.92, 2, 0)
	MovementLoopAddLocation(NPC, 29.6, -0.15, -160.92, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 26.8, -0.03, -160.18, 2, 0)
	MovementLoopAddLocation(NPC, 26.8, -0.03, -160.18, 2, MakeRandomInt(8,15))
end