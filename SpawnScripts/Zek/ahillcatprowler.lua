--[[
    Script Name    : SpawnScripts/Zek/ahillcatprowler.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.04.03 04:04:20
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 8, -8, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end