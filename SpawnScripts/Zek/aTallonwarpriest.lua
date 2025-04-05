--[[
    Script Name    : SpawnScripts/Zek/aTallonwarpriest.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.04.04 06:04:28
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    OrcArmorCommon(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end