--[[
    Script Name    : SpawnScripts/NektulosClassic/anashowlbear.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.04.25 07:04:17
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

function movement(NPC)
    if GetDifficulty(NPC) == 8 then
        RandomMovement(NPC, Spawn, 10, -10, 2, 8, 15)
    end 
end