--[[
	Script Name	: SpawnScripts/Caves/awhitespider.lua
	Script Purpose	: a white spider
	Script Author	: LordPazuzu
	Script Date	: 10/4/2022
	Script Notes	: 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 4, -4, 2, 8, 15)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end