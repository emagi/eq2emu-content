--[[
    Script Name    : SpawnScripts/NektulosClassic/aDeadlymistgrinninGPH.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.05.27 09:05:21
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