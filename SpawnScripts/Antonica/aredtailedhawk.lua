--[[
    Script Name    : SpawnScripts/Antonica/aredtailedhawk.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.22 09:07:37
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    RandomMovementFlight(NPC, Spawn, 20, -20, 4, -4,  2, 8, 15)
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end