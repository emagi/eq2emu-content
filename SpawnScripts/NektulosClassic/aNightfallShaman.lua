--[[
    Script Name    : SpawnScripts/NektulosClassic/aNightfallShaman.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.04.25 06:04:09
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
    HillGiantLesser(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end