--[[
    Script Name    : SpawnScripts/ThunderingSteppes/anearthrumblerBeachShorterRange.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.10.06 08:10:02
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 3, -3, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end