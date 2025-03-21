--[[
    Script Name    : SpawnScripts/Zek/agorgehuntress.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.03.14 06:03:55
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end