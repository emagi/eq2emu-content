--[[
    Script Name    : SpawnScripts/SerpentSewerClassic/asewagenuisance.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.03.25 11:03:29
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