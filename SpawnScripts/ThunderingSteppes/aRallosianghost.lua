--[[
    Script Name    : SpawnScripts/ThunderingSteppes/aRallosianghost.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.03.22 04:03:05
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
        RandomMovement(NPC, Spawn, 20, -20, 2, 8, 15)
    end
end

function respawn(NPC)
	spawn(NPC)
end