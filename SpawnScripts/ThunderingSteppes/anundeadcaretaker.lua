--[[
    Script Name    : SpawnScripts/ThunderingSteppes/anundeadcaretaker.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.07.18 12:07:42
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 12, -12, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end