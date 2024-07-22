--[[
    Script Name    : SpawnScripts/MontaasIsland/Bubbles.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.07.15 08:07:42
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