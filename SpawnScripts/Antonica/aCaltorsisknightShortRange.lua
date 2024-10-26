--[[
    Script Name    : SpawnScripts/Antonica/aCaltorsisknightShortRange.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.06 08:02:54
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    RandomMovement(NPC, Spawn, 8, -8, 2, 8, 15)
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end