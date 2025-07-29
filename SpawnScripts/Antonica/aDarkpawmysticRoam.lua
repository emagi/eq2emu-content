--[[
    Script Name    : SpawnScripts/Antonica/aDarkpawmysticRoam.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.03.24 12:03:08
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/MonsterCallouts/DarkpawGnoll1.lua")
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    BlackburrowGnoll(NPC)
    RandomMovement(NPC, Spawn, 12, -12, 2, 8, 15)
end



function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end