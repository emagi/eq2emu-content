--[[
    Script Name    : SpawnScripts/FrostfangSea/anangeredglacialscoundrel.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.07.30 04:07:19
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