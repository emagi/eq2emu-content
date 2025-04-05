--[[
    Script Name    : SpawnScripts/Zek/OrcishHeretic.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.04.04 06:04:11
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    OrcArmorCommon(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end