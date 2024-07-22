--[[
    Script Name    : SpawnScripts/Classic_forest/aruinsskulker1.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.14 08:10:06
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/CatalogueQuestUpdates.lua")
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
	MovementLoopAddLocation(NPC, 950.19, -24.76, -848.69, 2, 0)
	MovementLoopAddLocation(NPC, 966.13, -24.65, -851.21, 2, 0)
	MovementLoopAddLocation(NPC, 979.06, -22.44, -831.84, 2, 0)
	MovementLoopAddLocation(NPC, 1003.02, -21.36, -818.01, 2, 0)
	MovementLoopAddLocation(NPC, 1016.22, -20.18, -796.25, 2, 0)
	MovementLoopAddLocation(NPC, 1016.02, -18.86, -773.61, 2, 6)
	MovementLoopAddLocation(NPC, 1016.02, -18.86, -773.61, 2, 0)
	MovementLoopAddLocation(NPC, 1017.51, -19.7, -788.73, 2, 0)
	MovementLoopAddLocation(NPC, 1003.33, -21.31, -812.48, 2, 0)
	MovementLoopAddLocation(NPC, 982.47, -22.49, -828.86, 2, 0)
	MovementLoopAddLocation(NPC, 970.01, -23.8, -846.36, 2, 0)
	MovementLoopAddLocation(NPC, 964.41, -24.61, -850.44, 2, 0)
	MovementLoopAddLocation(NPC, 950.19, -24.76, -848.69, 2, 6)
end

