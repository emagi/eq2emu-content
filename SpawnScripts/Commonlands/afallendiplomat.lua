--[[
    Script Name    : SpawnScripts/Commonlands/afallendiplomat.lua
    Script Author  : gloat
    Script Date    : 2019.01.31 02:01:03
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

