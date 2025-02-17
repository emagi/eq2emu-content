--[[
    Script Name    : SpawnScripts/WailingCaves/aluridfeeder.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.02.12 04:02:40
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