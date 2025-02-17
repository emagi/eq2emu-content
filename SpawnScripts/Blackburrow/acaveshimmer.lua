--[[
    Script Name    : SpawnScripts/Blackburrow/acaveshimmer.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.02.11 08:02:23
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