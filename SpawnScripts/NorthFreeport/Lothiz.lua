--[[
    Script Name    : SpawnScripts/NorthFreeport/Lothiz.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.01.25 08:01:28
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