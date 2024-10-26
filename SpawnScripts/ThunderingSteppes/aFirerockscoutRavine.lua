--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aFirerockscoutRavine.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.28 04:09:31
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    HillGiantLesser(NPC, Spawn)
    AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 603.5, -22.5, 812.26, 2, 0)
	MovementLoopAddLocation(NPC, 639.59, -21.99, 833.22, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 582.09, -22.65, 795.46, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 582.09, -22.65, 795.46, 2, 0)
	MovementLoopAddLocation(NPC, 603.5, -22.5, 812.26, 2, MakeRandomInt(8,15))
end