--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothsentry.lua
    Script Author  : Cynnar
    Script Date    : 2020.12.06 05:12:44
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGnoll1.lua")
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

