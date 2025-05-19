--[[
    Script Name    : SpawnScripts/NektulosClassic/acacklingcadaver.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.04.24 07:04:52
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
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
        RandomMovement(NPC, Spawn, 12, -12, 2, 8, 15)
    else
        RandomMovement(NPC, Spawn, 6, -6, 2, 0, 0)
    end
end
