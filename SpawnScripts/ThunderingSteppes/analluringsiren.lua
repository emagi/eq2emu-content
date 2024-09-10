--[[
    Script Name    : SpawnScripts/ThunderingSteppes/analluringsiren.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.08 06:09:02
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

function respawn(NPC)
	spawn(NPC)
end

function movement(NPC, Spawn)
    if IsHeroic(NPC) == false then
        RandomMovement(NPC, Spawn, 20, -20, 2, 8, 15)
    end
end