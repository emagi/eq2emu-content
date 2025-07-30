--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aSkindancerdefiler.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.03.22 04:03:00
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    BlackburrowGnoll(NPC)
    IdlePriest(NPC)
    RandomMovement(NPC, Spawn, 12, -12, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end