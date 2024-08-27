--[[
    Script Name    : SpawnScripts/OutpostOverlord/aTunarianprotector.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.08.27 01:08:28
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