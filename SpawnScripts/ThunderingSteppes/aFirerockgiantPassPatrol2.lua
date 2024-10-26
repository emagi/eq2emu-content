--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aFirerockgiantPassPatrol2.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.27 01:09:13
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
	MovementLoopAddLocation(NPC, 776.94, 18.52, 723.35, 2, 0)
	MovementLoopAddLocation(NPC, 763.26, 17.99, 727.93, 2, 0)
	MovementLoopAddLocation(NPC, 742.44, 14.14, 731.67, 2, 0)
	MovementLoopAddLocation(NPC, 729.79, 10.57, 743.04, 2, 0)
	MovementLoopAddLocation(NPC, 707.89, 1.91, 769.68, 2, 0)
	MovementLoopAddLocation(NPC, 725.68, 9.16, 748.24, 2, 0)
	MovementLoopAddLocation(NPC, 743.61, 13.45, 736.01, 2, 0)
	MovementLoopAddLocation(NPC, 761.46, 17.52, 730.89, 2, 0)
	MovementLoopAddLocation(NPC, 776.94, 18.52, 723.35, 2, 0)
end
