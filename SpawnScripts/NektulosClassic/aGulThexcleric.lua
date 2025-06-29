--[[
    Script Name    : SpawnScripts/NektulosClassic/aGulThexcleric.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.04.24 07:04:09
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

function movement(NPC)
    if GetDifficulty(NPC) == 8 then
        RandomMovement(NPC, Spawn, 8, -8, 2, 8, 15)
    else 
    
    end
end
