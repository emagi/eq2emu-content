--[[
    Script Name    : SpawnScripts/NektulosClassic/aGulThexStatic.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.05.22 11:05:39
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end