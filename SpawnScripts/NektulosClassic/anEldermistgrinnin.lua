--[[
    Script Name    : SpawnScripts/NektulosClassic/anEldermistgrinnin.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.05.30 02:05:34
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