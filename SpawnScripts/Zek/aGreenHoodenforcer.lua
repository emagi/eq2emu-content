--[[
    Script Name    : SpawnScripts/Zek/aGreenHoodenforcer.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.04.03 04:04:56
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