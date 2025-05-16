--[[
    Script Name    : SpawnScripts/NektulosClassic/acacklingNarrow.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.05.15 07:05:19
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 6, -6, 2, 0, 0)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end