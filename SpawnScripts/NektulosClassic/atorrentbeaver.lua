--[[
    Script Name    : SpawnScripts/NektulosClassic/atorrentbeaver.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.05.18 07:05:24
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
    AddTimer(NPC, 6000, "movement")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function movement(NPC, Spawn)
    if IsHeroic(NPC) == false then
        RandomMovement(NPC, Spawn, 8, -8, 2, 8, 15)
    end
end