--[[
    Script Name    : SpawnScripts/NektulosClassic/aPaintedmistgrinnin.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.05.17 09:05:13
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 8, -8, 2, 8, 15)
    IdleAlert(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end