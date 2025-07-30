--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aSkindancersentryRiver.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.10.09 05:10:03
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    BlackburrowGnoll(NPC)
    IdleAlert(NPC)
    RandomMovement(NPC, Spawn, 12, -12, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end