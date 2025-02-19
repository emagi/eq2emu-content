--[[
    Script Name    : SpawnScripts/Classic_forest/aruinsskulker3.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.14 08:10:47
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
	MovementLoopAddLocation(NPC, 1069.47, -23.07, -893.81, 2, 0)
	MovementLoopAddLocation(NPC, 1061.61, -24.58, -898.59, 2, 0)
	MovementLoopAddLocation(NPC, 1040.07, -27, -908.29, 2, 0)
	MovementLoopAddLocation(NPC, 1023.16, -27.11, -910.79, 2, 0)
	MovementLoopAddLocation(NPC, 1010.08, -27.08, -913.19, 2, 0)
	MovementLoopAddLocation(NPC, 1006.12, -26.91, -912.17, 2, 6)
	MovementLoopAddLocation(NPC, 1006.12, -26.91, -912.17, 2, 0)
	MovementLoopAddLocation(NPC, 1016.61, -25.9, -899.67, 2, 0)
	MovementLoopAddLocation(NPC, 1034.67, -23.36, -887.13, 2, 0)
	MovementLoopAddLocation(NPC, 1044.44, -23.11, -887.22, 2, 0)
	MovementLoopAddLocation(NPC, 1062.17, -23.93, -894.95, 2, 0)
	MovementLoopAddLocation(NPC, 1069.47, -23.07, -893.81, 2, 6)
end

