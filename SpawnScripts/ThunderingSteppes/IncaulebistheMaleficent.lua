--[[
    Script Name    : SpawnScripts/ThunderingSteppes/IncaulebistheMaleficent.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.08.09 02:08:39
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    Named(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end