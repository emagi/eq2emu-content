--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/XLoitltheBloodsaberFanatic.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.10 09:05:04
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    Named(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end