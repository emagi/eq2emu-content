--[[
    Script Name    : SpawnScripts/Stonestair/WensoSwindlehassle.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.02.16 12:02:09
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    IdleAngry(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end