--[[
    Script Name    : SpawnScripts/TheRuins_Classic/aShoresideasp.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.06.22 12:06:46
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 4, -4, 2, 8, 15)
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end