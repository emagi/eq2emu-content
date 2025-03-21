--[[
    Script Name    : SpawnScripts/TheGraveyard_Classic/aputridzombieNarrowPath.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.08.14 09:08:34
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseZombie1.lua")
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 3.5, -3.5, 2, 8, 15)
    SetSpawnAnimation(NPC, 13016)
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end


