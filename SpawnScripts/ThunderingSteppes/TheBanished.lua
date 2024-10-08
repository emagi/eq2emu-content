--[[
    Script Name    : SpawnScripts/ThunderingSteppes/TheBanished.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.10.02 02:10:09
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    Named(NPC, Spawn)
    AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 886.3, 4.29, 1146.84, 2, 0)
	MovementLoopAddLocation(NPC, 881.24, 4.56, 1143.41, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 881.24, 4.56, 1143.41, 2, 0)
	MovementLoopAddLocation(NPC, 821.43, 4.16, 1149.45, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 821.43, 4.16, 1149.45, 2, 0)
	MovementLoopAddLocation(NPC, 820.97, 4.58, 1143.31, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 820.97, 4.58, 1143.31, 2, 0)
	MovementLoopAddLocation(NPC, 799.82, 9.59, 1097.51, 2, 0)
	MovementLoopAddLocation(NPC, 785.17, 4.4, 1061.33, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 785.17, 4.4, 1061.33, 2, 0)
	MovementLoopAddLocation(NPC, 803.84, 9.62, 1101.39, 2, 0)
	MovementLoopAddLocation(NPC, 812.43, 3.83, 1156.52, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 812.43, 3.83, 1156.52, 2, 0)
	MovementLoopAddLocation(NPC, 818, 4.1, 1152.37, 2, MakeRandomInt(8,15))
	MovementLoopAddLocation(NPC, 818, 4.1, 1152.37, 2, 0)
	MovementLoopAddLocation(NPC, 886.3, 4.29, 1146.84, 2, MakeRandomInt(8,15))
end
