--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aplainssnake.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.07.18 12:07:30
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    AddTimer(NPC, 1500, "movement")
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function movement(NPC, Spawn)
    if IsHeroic(NPC) == false then
        RandomMovement(NPC, Spawn, 12, -12, 2, 8, 15)
    else
    end
end

function respawn(NPC)
	spawn(NPC)
end