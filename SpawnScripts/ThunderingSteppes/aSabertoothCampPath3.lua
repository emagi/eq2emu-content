--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aSabertoothCampPath3.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.21 09:09:57
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
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
	MovementLoopAddLocation(NPC, 1334.71, 3.44, -376.71, 2, 0)
	MovementLoopAddLocation(NPC, 1336.08, 1.38, -365.13, 2, 0)
	MovementLoopAddLocation(NPC, 1338.37, 1.14, -303.57, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 1338.37, 1.14, -303.57, 2, 0)
	MovementLoopAddLocation(NPC, 1334.71, 3.44, -376.71, 2, 0)
	MovementLoopAddLocation(NPC, 1334.71, 3.44, -376.71, 2, MakeRandomInt(8,15))
end
