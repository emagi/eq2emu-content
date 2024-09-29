--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aFirerockgiantRavine1.lua
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
	MovementLoopAddLocation(NPC, 682.34, -22.05, 848.54, 2, 0)
	MovementLoopAddLocation(NPC, 674.47, -22, 848.22, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 674.47, -22, 848.22, 2, 0)
	MovementLoopAddLocation(NPC, 707.31, -21.92, 865.38, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 707.31, -21.92, 865.38, 2, 0)
	MovementLoopAddLocation(NPC, 702.31, -21.81, 854.25, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 702.31, -21.81, 854.25, 2, 0)
	MovementLoopAddLocation(NPC, 702.49, -21.55, 867.96, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 702.49, -21.55, 867.96, 2, 0)
	MovementLoopAddLocation(NPC, 682.34, -22.05, 848.54, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 682.34, -22.05, 848.54, 2, 0)
end
