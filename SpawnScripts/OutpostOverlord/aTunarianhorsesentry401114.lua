--[[
    Script Name    : SpawnScripts/OutpostOverlord/aTunarianhorsesentry401114.lua
    Script Author  : Premierio015
    Script Date    : 2020.05.27 06:05:04
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    SetMount(NPC, 6848)
    AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
         spawn(NPC)
end

function waypoints(NPC, Spawn)
    MovementLoopAddLocation(NPC, 217.01, -0.97, -101.64, 9, 0)
    MovementLoopAddLocation(NPC, 236.41, -1.04, -76.67, 9, 0)
    MovementLoopAddLocation(NPC, 237.64, -4.06, -30.52, 9,0)
end

