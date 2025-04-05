--[[
    Script Name    : SpawnScripts/Zek/aGreenHoodwoodsman.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.04.03 04:04:07
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    halfelf(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end