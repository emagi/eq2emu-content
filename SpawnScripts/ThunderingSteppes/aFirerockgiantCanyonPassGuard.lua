--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aFirerockgiantCanyonPassGuard.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.28 07:09:41
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    HillGiantLesser(NPC, Spawn)
    RandomMovement(NPC, Spawn, 8, -8, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end